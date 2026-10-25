# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `203072e0b3089b868c9fd0d1efccdc8caeb534fc` · SHA-256 `721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

open Lean

unsafe def badNatUnsafe : Nat := unsafeCast (-4294967296 : Int)

@[implemented_by badNatUnsafe] opaque badNatVal : Nat

run_elab
  addDecl <| .defnDecl {
    name        := .str .anonymous "badNat"
    levelParams := []
    type        := .const ``Nat []
    value       := .lit <| .natVal badNatVal
    hints       := .opaque
    safety      := .safe
  }

theorem boom : False := by
  have truly_marvelous_0 : ¬badNat ≤ 9223372036854775807 := by decide
  have truly_marvelous_1 : ¬9223372036854775807 < badNat := by decide
  omega
```
