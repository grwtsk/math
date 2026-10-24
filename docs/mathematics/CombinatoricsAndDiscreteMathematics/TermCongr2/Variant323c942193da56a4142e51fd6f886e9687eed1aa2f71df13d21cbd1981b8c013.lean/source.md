# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TermCongr2.Variant323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1d1feb964f80a1af9d853a03d9b0118b66fd8b6` · SHA-256 `323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.TermCongr
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic.Ring

/-!
`congr(...)` tests with heavier imports (`TermCongr` is in `Mathlib/Tactic/Common.lean`)
-/

namespace Tests

set_option autoImplicit true

-- set_option trace.Elab.congr true

example [Fintype α] [Fintype β] (h : α = β) : Fintype.card α = Fintype.card β :=
  congr(Fintype.card $h)

example (s t : Set α) [Fintype s] [Fintype t] (h : s = t) : Fintype.card s = Fintype.card t :=
  congr(Fintype.card $h)

example (x y : ℤ) (h1 : 3 * x + 2 * y = 10) (h2 : 2 * x + 5 * y = 3) :
    11*y = -11 := by
  have := congr(-2*$h1 + 3*$h2)
  guard_hyp this : -2*(3*x + 2*y) + 3*(2*x + 5*y) = -2*10 + 3*3
  ring_nf at this ⊢
  exact this

example (a b c d : ℚ) (h1 : a = 4) (h2 : 3 = b) (h3 : c * 3 = d) (h4 : -d = a) :
    2*a - 3 + 9*c + 3*d = 8 - b + 3*d - 3*a := by
  have := congr(2*$h1 -1*$h2 +3*$h3 -3*$h4)
  guard_hyp this : 2*a - 1*3 + 3*(c*3) -3*(-d) = 2*4 - 1*b + 3*d - 3*a
  ring_nf at this ⊢
  exact this

end Tests
```
