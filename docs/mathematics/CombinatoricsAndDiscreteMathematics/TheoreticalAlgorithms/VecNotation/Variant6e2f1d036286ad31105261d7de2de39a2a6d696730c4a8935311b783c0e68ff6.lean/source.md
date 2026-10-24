# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VecNotation.Variant6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83bf6594cad963fc0d2ecbe657baf762a256e957` · SHA-256 `6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Manually ported from
https://github.com/leanprover-community/mathlib/blob/fee91d74414e681a8b72cb7160e6b5ef0ec2cc0b/test/vec_notation.lean
-/
import Mathlib.Data.Fin.VecNotation

/-! These tests are testing `PiFin.toExpr` and fail with
`local attribute [-instance] PiFin.toExpr` -/

open Lean
open Lean.Meta
open Qq

#eval do
  let x : Fin 0 → ℕ := ![]
  let .true ← isDefEq (toExpr x) q((![] : Fin 0 → ℕ)) | failure

#eval do
  let x := ![1, 2, 3]
  let .true ← isDefEq (toExpr x) q(![1, 2, 3]) | failure

#eval do
  let x := ![![1, 2], ![3, 4]]
  let .true ← isDefEq (toExpr x) q(![![1, 2], ![3, 4]]) | failure

/-! These tests are testing `PiFin.repr` -/

#eval show MetaM Unit from guard (toString (repr (![] : _ → ℕ)) = "![]")
#eval show MetaM Unit from guard (toString (repr ![1, 2, 3]) = "![1, 2, 3]")
#eval show MetaM Unit from guard (toString (repr ![![1, 2], ![3, 4]]) = "![![1, 2], ![3, 4]]")
```
