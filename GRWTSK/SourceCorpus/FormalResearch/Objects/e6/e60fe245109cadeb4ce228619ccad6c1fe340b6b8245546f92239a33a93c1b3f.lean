import Surface.Meta.AST
import Surface.Meta.Slug

/-!
# Surface metaprogramming adapters

What is formalized:
Small metadata helpers used by Surface generation. Runner-facing export helpers
that depend on the root `Surface` namespace are intentionally kept outside this
aggregator to avoid an import cycle.

What is certificate-gated:
Any use of generated metadata as evidence for theorem status.

What is not claimed:
Metaprogramming adapters do not replace Lean kernel checking or claim-boundary
audits.

Primary mathematical source:
Internal Surface generation utilities.
-/
