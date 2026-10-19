import SourceReflectedOnePrefix

/-!
# Hostile seam, endpoint, unit and sign fixtures for the actual reflected row

UNCOMPILED preparation. The constant and affine examples are generic
quadrature refutations, not substitutions for actual q or arithmetic data.
No source estimate, baseline bound or RH conclusion is tested or asserted.

AI attribution: developed with OpenAI Codex; native verification is pending.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReflectedOnePrefixFixtures

open MeasureTheory Set
open scoped BigOperators
open SourceReflectedOnePrefix SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceMobiusKernel

noncomputable section

/-- Material zero extension keeps the origin separate from the unit sample. -/
theorem origin_is_zero (A x : ℝ) : reflectedSample A x 0 = 0 :=
  reflectedSample_eq_zero_of_nonpos A x (by norm_num)

/-- Deleting the unit has exactly the actual q(x) cost, including when q(x) vanishes. -/
theorem unit_sample_is_retained (A x : ℝ) :
    reflectedSample A x 1 - reflectedSample A x 0 = actualQ A x := by
  rw [reflectedSample_at_one, origin_is_zero, sub_zero]

/-- The lower positive-axis seam is a zero interval endpoint, not an origin singularity. -/
theorem lower_seam_zero (A x : ℝ) (hA : 1 ≤ A) :
    reflectedSample A x (Real.exp (-A - x)) = 0 :=
  reflectedSample_zero_below (by linarith : 0 < A) x le_rfl

/-- The literal N+1 integer sample is zero under the actual forward-support guard. -/
theorem actual_N_plus_one_zero (A x : ℝ) (hA : 1 ≤ A) (hx : Real.log 2 - A ≤ x) :
    reflectedSample A x ((sourceKernelCutoff A + 1 : ℕ) : ℝ) = 0 :=
  reflectedSample_actual_upper_tail A x hA hx _ le_rfl

/-- The new positive prefix keeps its exact zero left seam. -/
theorem prefix_left_seam_zero (A : ℝ) (hA : 1 ≤ A) : polePrefix A (-A) = 0 :=
  (polePrefix_endpoints (by linarith : 0 < A)).1

/-- The below-one mass is a prefix value, without a false independent zero assumption. -/
theorem actual_below_one_prefix (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in Ioo (0 : ℝ) 1, reflectedSample A x u) = polePrefix A x :=
  reflected_below_one_eq_polePrefix A x hA

/-- The actual unit-cell remainder has the source value minus the below-one prefix. -/
theorem actual_below_one_fractional_sign (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, Int.fract u * deriv (reflectedSample A x) u) =
      actualQ A x - polePrefix A x :=
  reflected_below_one_fractional_identity A x hA

/-- The strict row retains minus prefix plus the above-one signed remainder. -/
theorem actual_strict_row_has_both_pieces (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    strictReflectedOne A x = -polePrefix A x + fractionalAboveOne A x :=
  strict_reflected_one_eq_prefix_and_fractional A x hA hx

/-- Vanishing of the row means cancellation of its pieces, not separate vanishing. -/
theorem actual_empty_row_requires_piece_cancellation (A x : ℝ) (hA : 1 ≤ A)
    (hx : A - Real.log 2 ≤ x) : fractionalAboveOne A x = polePrefix A x :=
  fractionalAboveOne_eq_prefix_on_empty_reflected_region A x hA hx

/-- Without endpoint vanishing, deleting the last sample breaks even constant quadrature. -/
theorem deleting_N_plus_one_without_zero_is_false :
    (∑ n ∈ Finset.Icc 1 1, (1 : ℝ)) - (∫ _u in (0 : ℝ)..2, (1 : ℝ)) ≠ 0 := by
  norm_num

/-- A generic below-one mass cannot be discarded merely because the domain is positive. -/
theorem generic_below_one_mass_is_nonzero : (∫ _u in (0 : ℝ)..1, (1 : ℝ)) ≠ 0 := by
  norm_num

/-- Right sampling has a positive fractional remainder; the opposite sign is false. -/
theorem generic_affine_wrong_fractional_sign :
    (1 : ℝ) - (∫ u in (0 : ℝ)..1, u) ≠
      -(∫ u in (0 : ℝ)..1, Int.fract u * deriv (fun t : ℝ => t) u) := by
  have h := unit_right_sampling_identity (fun t : ℝ => t) contDiff_id 0
  have hi : (∫ u in (0 : ℝ)..1, u) = (1 / 2 : ℝ) := by
    norm_num [intervalIntegral.integral_id]
  norm_num only [Nat.cast_zero, zero_add, hi] at h
  rw [hi, ← h]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceReflectedOnePrefixFixtures
