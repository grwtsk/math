import Surface.AST.Core
import Surface.AST.Slug
import Surface.AST.ModuleGraph
import Surface.AST.DeclarationGraph
import Surface.AST.Trusted
import Surface.AST.TheoremConeStyle
import Surface.AST.StyleAudit

/-!
# Surface AST metadata

What is formalized:
Lean declaration and module metadata used by Surface generators, including proof
status, trusted status, dependencies, fixtures, paper references, and claim
boundaries.

What is certificate-gated:
External extraction from a Lean environment and any claim that a generated record
is authoritative for a theorem. The runner-facing export module is intentionally
not imported here because it depends on the root `Surface` namespace.

What is not claimed:
AST metadata is not a proof object; theorem authority remains with Lean-checked
declarations and explicit audits.

Primary mathematical source:
Internal Surface proof-status and claim-boundary discipline.
-/
