# Complete source: GRWTSK.Analysis.Resolvent.ScreenAlgebra

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15abe207293eb4423c62bac5dbeddfb1fc85297b` · SHA-256 `396832daa5ddde19fa4323363a8a80271dc4b6689ccefbc5678b2d817ebb24a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formal-source assistance: ChatGPT.
Status: candidate proof source; not compiled or kernel checked.
This file is scalar algebra, not a Mellin/Plancherel or arithmetic theorem.
-/
import Mathlib

set_option autoImplicit false
namespace GRWTSK.Analysis.Resolvent.ScreenAlgebra

theorem reciprocal_difference (x y : ℝ) (hx : x ≠ 0) (hy : y ≠ 0) :
    1 / x - 1 / y = (y - x) / (x * y) := by
  field_simp
  <;> ring

theorem filter_identity (a T t : ℝ)
    (ha : a^2 + t^2 ≠ 0) (hT : T^2 + t^2 ≠ 0) :
    1 / (a^2 + t^2) - 1 / (T^2 + t^2) =
      (T^2 - a^2) / ((a^2 + t^2) * (T^2 + t^2)) := by
  rw [reciprocal_difference _ _ ha hT]
  congr 1
  ring

theorem exact_return (E Q : ℝ) : E = (E-Q)+Q := by ring

theorem retained_nonnegative (E Q : ℝ) (h : Q ≤ E) : 0 ≤ E-Q := by linarith

theorem high_band_pointwise (a T t : ℝ) (ha : 0 < a) (hT : 0 < T)
    (ht : T^2 ≤ t^2) :
    1 / (a^2+t^2) ≤ 2 / (T^2+t^2) := by
  have h₁ : 0 < a^2+t^2 := by positivity
  have h₂ : 0 < T^2+t^2 := by positivity
  apply (div_le_div_iff₀ h₁ h₂).2
  nlinarith [sq_nonneg a]

theorem boundary_interval_retained (w : ℝ) :
    w^2 = 0^2 + w^2 := by ring

end GRWTSK.Analysis.Resolvent.ScreenAlgebra
```
