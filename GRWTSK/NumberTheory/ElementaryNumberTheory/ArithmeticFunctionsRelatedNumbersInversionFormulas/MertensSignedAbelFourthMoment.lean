/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.RealFunctions.WeightedFourthMoment
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelInputApproximation

/-!
# Fourth-moment handoff to the actual signed arithmetic row

This applies the finite fourth-moment method inspected in openai/math family
007 to the already identified row, not to an unspecified Fourier or sieve
object. All row mass and input fourth-moment factors remain explicit. No
upstream large-values or minor-arc estimate is admitted by this module.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.WeightedFourthMoment
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseCoordinates
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelInputApproximation

def rowFourthAllowance (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) : ℝ :=
  (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a|) ^ 3 *
    ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a| * f a ^ 4

theorem rowFourthAllowance_nonneg (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    0 ≤ rowFourthAllowance width j f := by
  unfold rowFourthAllowance
  positivity

/-- All quartet diagonals and signed cross terms survive the exact expansion. -/
theorem signedResponse_fourth_expansion (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f ^ 4 =
      ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
      ∑ c ∈ Finset.Icc 1 (2 ^ (j + 1)), ∑ d ∈ Finset.Icc 1 (2 ^ (j + 1)),
        (signedRow width j a * f a) * (signedRow width j b * f b) *
        (signedRow width j c * f c) * (signedRow width j d * f d) := by
  rw [signedResponse_eq_row_sum]
  exact fourth_sum_expansion _ _

theorem signedResponse_fourth_le (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f ^ 4 ≤ rowFourthAllowance width j f := by
  rw [signedResponse_eq_row_sum]
  exact weighted_fourth_le _ _ _

/-- A source-matched fourth-moment bound pays only the modeled triple error.
The unchanged head remains present; no cancellation estimate is asserted. -/
theorem full_packet_input_fourth_comparison (j : ℕ) (g : ℕ → ℝ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (he : rowFourthAllowance sqrtWidth j (fun a => moebiusReal a - g a) ≤ ε ^ 4) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      modelPacket (headPacket sqrtWidth j) (inputProfile sqrtWidth j g)| ≤ 2 + ε / 6 := by
  apply abs_full_packet_sub_profile_le_of_signed
  rw [signed_error_eq_input_difference]
  exact abs_le_of_fourth_le hε
    ((signedResponse_fourth_le sqrtWidth j (fun a => moebiusReal a - g a)).trans he)

/-- Fourth-power bounds must use the SAME coefficient measure as the arithmetic row. -/
theorem rowFourthAllowance_le_threshold (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (V U : ℝ) (hV : 0 ≤ V)
    (hf : ∀ a ∈ Finset.Icc 1 (2 ^ (j + 1)), f a ^ 4 ≤ U) :
    rowFourthAllowance width j f ≤
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a|) ^ 3 *
        (V * (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a|) +
         U * (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
           if V < f a ^ 4 then |signedRow width j a| else 0)) := by
  exact mul_le_mul_of_nonneg_left
    (fourth_threshold _ (signedRow width j) f V U hV hf) (by positivity)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment
