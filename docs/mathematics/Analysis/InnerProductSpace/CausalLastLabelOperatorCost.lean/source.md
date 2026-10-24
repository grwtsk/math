# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63339d7fd06c1ce38ec811c994c2869af65f420b` · SHA-256 `a89c3fb490bdc16962a65ce474257399e03b3dfb8b33b282efd33d3a0d8a6c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
import GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Necessary operator cost at the last exponential inventory label

The contact-cost foundation uses its genuine original-window integral and actual L2 classes
are used here with their exact definitions, including the final inventory label.

For T >= 0 and N = floor(exp(T)), the proposed diagonal bound is at most N^-4.
A continuous real-linear map realizing this individual native feature as its
actual unit prescribed source at A > 0 must have norm at least N^2, hence
strictly greater than exp(2T)/4. The literal T = 2A consumer retains A >= 1.
The whole-inventory consumer assumes direct same-label realization, without
coefficient mixing, and merely applies the individual necessary cost to N.

Exact contact has no such realizing map; these implications are vacuous there.
No existence, uniqueness, polynomial exclusion, signed Mobius-vector energy,
arithmetic supplier or pointwise amplitude return is asserted. The final label
may have Mobius coefficient zero. Unpriced mixing, additional features, altered
windows and general transformed/renormalized Gram comparisons remain open.
RH remains conditional with no converse. The power-four extension is not C∞.
Mathematics remains separate from authentication, permission and source rights.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost

open MeasureTheory
open GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
open GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost
open GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupEnergy

noncomputable section

/-- The last closed-inventory label pays the actual cubic contact allowance. -/
theorem last_label_diagonal_quartic_upper {T : ℝ} (hT : 0 ≤ T) :
    gram T (Nat.floor (Real.exp T)) (Nat.floor (Real.exp T)) ≤
      1 / (Nat.floor (Real.exp T) : ℝ) ^ 4 := by
  have arrived : Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T := by
    linarith [gap_nonneg T hT]
  exact (gram_diagonal_cubic_upper (one_le_natFloor_exp T hT) arrived).trans
    (cubicAllowance_le_inv_natFloor_pow_four T hT)

/-- A necessary norm cost for realizing this actual individual native feature. -/
theorem last_label_continuous_realization_norm {A T : ℝ} (hA : 0 < A)
    (hT : 0 ≤ T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 T (Nat.floor (Real.exp T))) =
      prescribedSourceL2 A hA (Nat.floor (Real.exp T))) :
    (Nat.floor (Real.exp T) : ℝ) ^ 2 ≤ ‖map‖ := by
  have arrived : Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T := by
    linarith [gap_nonneg T hT]
  exact natFloor_sq_le_of_cost T ‖map‖ hT (norm_nonneg map)
    (continuous_linear_realization_cubic_cost hA (one_le_natFloor_exp T hT)
      arrived map realizes)

/-- Strict exponential norm cost, conditional on exact individual realization. -/
theorem last_label_continuous_realization_exponential_norm {A T : ℝ}
    (hA : 0 < A) (hT : 0 ≤ T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 T (Nat.floor (Real.exp T))) =
      prescribedSourceL2 A hA (Nat.floor (Real.exp T))) :
    Real.exp (2 * T) / 4 < ‖map‖ :=
  (exp_two_mul_div_four_lt_natFloor_sq T hT).trans_le
    (last_label_continuous_realization_norm hA hT map realizes)

/-- Literal admitted scale: the original native horizon is exactly T = 2A. -/
theorem prescribed_horizon_last_label_exponential_norm {A : ℝ} (hA : 1 ≤ A)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 (2 * A) (Nat.floor (Real.exp (2 * A)))) =
      prescribedSourceL2 A (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA)
        (Nat.floor (Real.exp (2 * A)))) :
    Real.exp (4 * A) / 4 < ‖map‖ := by
  have positive : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have horizon : 0 ≤ 2 * A := by linarith
  simpa only [show 2 * (2 * A) = 4 * A by ring] using
    last_label_continuous_realization_exponential_norm positive horizon map realizes

/-- Direct same-label realization of the full inventory includes its last label. -/
theorem whole_inventory_continuous_realization_exponential_norm {A T : ℝ}
    (hA : 0 < A) (hT : 0 ≤ T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : ∀ n : ℕ, 1 ≤ n → n ≤ Nat.floor (Real.exp T) →
      map (originalWindowL2 T n) = prescribedSourceL2 A hA n) :
    Real.exp (2 * T) / 4 < ‖map‖ :=
  last_label_continuous_realization_exponential_norm hA hT map
    (realizes (Nat.floor (Real.exp T)) (one_le_natFloor_exp T hT) le_rfl)

end

end GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost
```
