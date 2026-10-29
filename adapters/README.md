# Mathematical adapters

Local attribution: grwtsk contributors.

Organize external adapters by provider immediately below this directory.
Keep mathematical namespaces and theorem subjects independent of provider paths.

- [openai-math](openai-math/README.md): pinned OpenAI OAI imports, finite-family
  Liouville/Elliott transport, and seven-eighths zero-location consequences.

Provider packages have their own dependency manifests and build targets. They
are outside the root GRWTSK default build. A common Lean/Mathlib version does not
admit upstream analytic theorems or establish a bridge to local arithmetic
consumers. Preserve source identities, exact hypotheses, licenses, and pending
verification status when adding a provider.
