/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity

set_option autoImplicit false
noncomputable section

/-!
# Normalized regulator margins

Positive determinant at each regulator does not give a uniform physical
gap. A proposed positive energy normalization must retain the ratio of
determinant to trace. These are conditional real comparison estimates;
no physical Yang-Mills regulator, vacuum complement, normalization or
continuum limit is constructed. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.RegulatorNormalizedSectorMargin
open DeterminantSectorCoercivity

/-- Exact threshold after a positive change of energy units. -/
theorem normalized_margin_iff (a b c scale κ : ℝ) (htrace : 0 < a + b) :
    κ ≤ scale * determinantGap a b c ↔
      κ * (a + b) ≤ scale * (a * b - c ^ 2) := by
  unfold determinantGap
  rw [← mul_div_assoc, le_div_iff₀ htrace]

/-- A uniform determinant/trace margin suffices without bounding either separately. -/
theorem normalized_comparison_bound (a b c scale κ x y : ℝ)
    (htrace : 0 < a + b) (hscale : 0 ≤ scale)
    (hmargin : κ * (a + b) ≤ scale * (a * b - c ^ 2)) :
    κ * (x ^ 2 + y ^ 2) ≤ scale * comparisonForm a b c x y := by
  have hk := (normalized_margin_iff a b c scale κ htrace).2 hmargin
  calc
    κ * (x ^ 2 + y ^ 2) ≤
        (scale * determinantGap a b c) * (x ^ 2 + y ^ 2) :=
      mul_le_mul_of_nonneg_right hk (add_nonneg (sq_nonneg x) (sq_nonneg y))
    _ = scale * (determinantGap a b c * (x ^ 2 + y ^ 2)) := by ring
    _ ≤ scale * comparisonForm a b c x y :=
      mul_le_mul_of_nonneg_left (comparison_lower_bound a b c x y htrace) hscale

/-- For equal vanishing sector bounds, a uniform normalized margin requires
the normalization to compensate the regulator. This is an algebraic diagnostic,
not permission to choose physical energy units arbitrarily. -/
theorem equal_sector_threshold (ε scale κ : ℝ) (hε : 0 < ε) :
    κ ≤ scale * determinantGap ε ε 0 ↔ 2 * κ ≤ scale * ε := by
  rw [normalized_margin_iff ε ε 0 scale κ (by linarith)]
  constructor <;> intro h <;> nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.RegulatorNormalizedSectorMargin
