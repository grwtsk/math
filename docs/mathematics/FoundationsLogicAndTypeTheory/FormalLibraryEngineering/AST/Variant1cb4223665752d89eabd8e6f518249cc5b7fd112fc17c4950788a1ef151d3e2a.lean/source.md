# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AST.Variant1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fb33fd4bdf359369af1a4da9a7826adb227aa37` · SHA-256 `1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
