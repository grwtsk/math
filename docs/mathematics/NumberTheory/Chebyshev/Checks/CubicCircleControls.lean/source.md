# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CubicCircleControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e794e1e1b7c33a7d30966b45d02ef1cf705793` · SHA-256 `a6770bdf5a0cec518308c3ee952b08e138970ed29b1ae568cdd115a8359a3429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.CubicEulerMaclaurin
import GRWTSK.NumberTheory.Zeta.Riemann.CubicCircleGeometry

set_option autoImplicit false

/-! Synthetic exact controls, not computed zeta enclosures. NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.CubicCircleControls

open GRWTSK.Analysis.Real.CubicEulerMaclaurin
open GRWTSK.RiemannHypothesis.LocalJensenCount

/-- Zero endpoint values do not make the cubic vanish in the cell. -/
theorem third_quarter_nonzero : third (1 / 4) = 1 / 128 := by norm_num [third]

theorem third_three_quarters_negative : third (3 / 4) = -1 / 128 := by norm_num [third]

/-- Forgetting 3! changes the actual coefficient. -/
theorem unnormalized_cubic_is_six_times :
    (1 / 4 : ℝ) * (1 / 4 - 1 / 2) * (1 / 4 - 1) = 6 * third (1 / 4) := by norm_num [third]

/-- The quartic test's exact remainder is not zero. -/
theorem quartic_balance :
    (1 / 5 : ℚ) - 1 / 2 + 4 / 12 - 1 / 30 = 0 := by norm_num

theorem quartic_omitted_remainder_fails :
    (1 / 5 : ℚ) - 1 / 2 + 4 / 12 ≠ 0 := by norm_num

/-- The elementary cubic budget requires its lower-scale hypothesis. -/
theorem cubic_budget_at_one_fails :
    ¬ (5 / 2 + (1 : ℝ) / 4 + 9 / 16 ≤ 1) := by norm_num

/-- The leftmost outer-circle point is outside the center's Re(s)>=2 domain. -/
theorem outer_leftmost_real_part (N : ℕ) : (upperCenter N - 3).re = -1 := by simp

/-- Vanishing of the cubic factor is not permission to divide by it in continuation. -/
theorem cubic_factor_at_minus_one :
    (-1 : ℂ) * ((-1 : ℂ) + 1) * ((-1 : ℂ) + 2) = 0 := by norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.CubicCircleControls
```
