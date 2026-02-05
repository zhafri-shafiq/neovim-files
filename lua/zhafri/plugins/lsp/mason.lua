return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- automatically enable installed servers via vim.lsp.enable()
			automatic_enable = true,
			-- list of servers for mason to install
			ensure_installed = {
				"ansiblels",
				"cssls",
				-- "dartls", -- use flutter-tools or dart SDK directly
				"docker_compose_language_service",
				"dockerls",
				"emmet_ls",
				"gitlab_ci_ls",
				"graphql",
				"golangci_lint_ls",
				"gopls",
				"helm_ls",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"nginx_language_server",
				"prismals",
				"pyright",
				"rust_analyzer",
				"sqls",
				"svelte",
				"tailwindcss",
				"terraformls",
				"tflint",
				"tsp_server",
				"ts_ls",
				"vimls",
				-- "volar",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pint",
				"yamlfmt",
				-- "golines",
				-- "gofumpt",
				-- "goimports",
				"sqlfmt",
				"xmlformatter",
				"pylint",
				"eslint_d",
				"tflint",
				"yamllint",
			},
		})
	end,
}
