# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.AnchorFloorControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cb25d40c4f79e9494bb8f8c4c2d0c7f103b5b38` · SHA-256 `e142d693bfc2ce5bbfd87a5148a0e7e08dd14de192cdeb6166d22f98de33d65b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.AnchoredLocalJensen

set_option autoImplicit false

/-!
# Scope controls for quantitative center floors

These exact examples do not assert zeta values at synthetic complex points.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.AnchorFloorControls

open GRWTSK.Analysis.Real.ReciprocalSquareTail
open GRWTSK.RiemannHypothesis.AnchoredLocalJensen
open GRWTSK.RiemannHypothesis.LocalJensenCount

noncomputable section

/-- The first omitted-from-one term is 1/4 at the real exponent two, not zero. -/
theorem first_tail_term_nonzero : (1 / (2 : ℝ) ^ 2) = 1 / 4 ∧ (1 / (2 : ℝ) ^ 2) ≠ 0 := by
  norm_num

/-- Treating n=2 sharply saves a quarter over its telescoping comparison. -/
theorem first_tail_comparison_gap :
    (1 / (2 - 1 : ℝ) - 1 / 2) - 1 / 2 ^ 2 = 1 / 4 := by norm_num

/-- The telescoping denominator hypothesis cannot be dropped at u=1. -/
theorem telescope_at_one_rejected :
    ¬ (1 / (1 : ℝ) ^ 2 ≤ 1 / (1 - 1 : ℝ) - 1 / 1) := by norm_num

/-- The reverse-triangle floor is sharp for the generic disk, not asserted sharp for zeta. -/
theorem generic_disk_floor_attained :
    ‖(1 / 4 : ℂ) - 1‖ = (3 / 4 : ℝ) ∧ ‖(1 / 4 : ℂ)‖ = (1 / 4 : ℝ) := by
  norm_num

/-- Replacing the radius 3/4 by one would allow zero and destroy a positive floor. -/
theorem unit_radius_allows_zero :
    ‖(0 : ℂ) - 1‖ ≤ (1 : ℝ) ∧ ¬ (0 < ‖(0 : ℂ)‖) := by norm_num

/-- A center bound alone supplies no common outer-circle ceiling. -/
theorem center_value_not_circle_ceiling :
    (1 + 4 * (0 : ℝ)) = 1 ∧ (1 : ℝ) < 1 + 4 * 3 := by norm_num

/-- Low stages have center floors, but their radius-three disks still meet the pole. -/
theorem low_stage_anchor_floor :
    (1 / 4 : ℝ) ≤ ‖riemannZeta (upperCenter 0)‖ ∧
      (1 / 4 : ℝ) ≤ ‖riemannZeta (lowerCenter 1)‖ :=
  ⟨upper_center_floor 0, lower_center_floor 1⟩

end
end GRWTSK.NumberTheory.Chebyshev.Checks.AnchorFloorControls
```
