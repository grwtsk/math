import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.RiemannHypothesis.Conversation.ShellArithmetic

/-!
# A zero scalar cutoff does not remove the actual translated source vector

The actual normalized source translate still has unit squared integral at the
support-touching cutoff. Its scalar correlation with the anchor is zero, while
the raw vector is nonzero. At a retained multiples-of-six arithmetic atom the
literal compensated coefficient is nonzero, so that actual raw atom survives
its zero scalar readout. Distributional cutoff flux and all-radii arithmetic
cancellation remain separate.

Source: RH conversation Batch 3, CR03-01. Human programme: grwtsk contributors.
Local source consumer: OpenAI Codex. Existing source translations, normalization
and support endpoint declarations retain their qualified identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeCutoffBirth
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceSignedPortControls
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
noncomputable section

/-- The translated source in this module, with the following exact parameterization.

def translatedSource (A t : ℝ) : ℝ → ℝ := fun x ↦ normalizedTest explicitSecondDerivative A (x
- t)
-/
def translatedSource (A t : ℝ) : ℝ → ℝ :=
  fun x ↦ normalizedTest explicitSecondDerivative A (x - t)

theorem actual_translation_has_unit_square {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ x, translatedSource A t x ^ 2) = 1 := by
  unfold translatedSource
  rw [integral_sub_right_eq_self (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x ^ 2) t]
  exact normalized_square_integral A hA

theorem actual_translation_nonzero {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    translatedSource A t ≠ 0 := by
  intro hzero
  have h := actual_translation_has_unit_square hA t
  rw [hzero] at h
  norm_num at h

theorem actual_cutoff_scalar_zero_vector_nonzero {A : ℝ} (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A (2 * A) = 0 ∧
      translatedSource A (2 * A) ≠ 0 :=
  ⟨sourceCorrelation_upper_endpoint A (by linarith), actual_translation_nonzero hA _⟩

/-- The raw atom in this module, with the following exact parameterization.

def rawAtom (A : ℝ) (n : ℕ) : ℝ → ℝ := fun x ↦ ShellArithmetic.coefficient n *
translatedSource A (Real.log n) x
-/
def rawAtom (A : ℝ) (n : ℕ) : ℝ → ℝ :=
  fun x ↦ ShellArithmetic.coefficient n * translatedSource A (Real.log n) x

theorem actual_six_coefficient_nonzero {k : ℕ} (hk : 1 ≤ k) :
    ShellArithmetic.coefficient (6 * k) ≠ 0 := by
  have hn : 0 < ((6 * k : ℕ) : ℝ) := by exact_mod_cast (by omega : 0 < 6 * k)
  unfold ShellArithmetic.coefficient
  rw [vonMangoldt_six_mul]
  exact div_ne_zero (by norm_num) (Real.sqrt_pos.mpr hn).ne'

theorem actual_six_raw_atom_nonzero {A : ℝ} (hA : 1 ≤ A) {k : ℕ} (hk : 1 ≤ k) :
    rawAtom A (6 * k) ≠ 0 := by
  intro hzero
  apply actual_translation_nonzero hA (Real.log (6 * k : ℕ))
  funext x
  have hx := congrFun hzero x
  change ShellArithmetic.coefficient (6 * k) * translatedSource A (Real.log (6 * k : ℕ)) x = 0 at hx
  exact (mul_eq_zero.mp hx).resolve_left (actual_six_coefficient_nonzero hk)

theorem actual_six_birth_survives_scalar_cutoff {A : ℝ} (hA : 1 ≤ A) {k : ℕ}
    (hk : 1 ≤ k) (hcut : Real.log (6 * k : ℕ) = 2 * A) :
    ShellArithmetic.coefficient (6 * k) *
        sourceCorrelation explicitSecondDerivative A (Real.log (6 * k : ℕ)) = 0 ∧
      rawAtom A (6 * k) ≠ 0 := by
  constructor
  · rw [hcut, sourceCorrelation_upper_endpoint A (by linarith), mul_zero]
  · exact actual_six_raw_atom_nonzero hA hk

theorem actual_translation_nonzero_ae {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    ¬ translatedSource A t =ᵐ[volume] (0 : ℝ → ℝ) := by
  intro hzero
  have hsq : (fun x ↦ translatedSource A t x ^ 2) =ᵐ[volume] (fun _ ↦ (0 : ℝ)) := by
    filter_upwards [hzero] with x hx
    change translatedSource A t x = 0 at hx
    rw [hx]
    norm_num
  have h := integral_congr_ae hsq
  rw [actual_translation_has_unit_square hA t] at h
  norm_num at h

theorem actual_six_raw_atom_nonzero_ae {A : ℝ} (hA : 1 ≤ A) {k : ℕ} (hk : 1 ≤ k) :
    ¬ rawAtom A (6 * k) =ᵐ[volume] (0 : ℝ → ℝ) := by
  intro hzero
  apply actual_translation_nonzero_ae hA (Real.log (6 * k : ℕ))
  filter_upwards [hzero] with x hx
  change ShellArithmetic.coefficient (6 * k) * translatedSource A (Real.log (6 * k : ℕ)) x = 0 at hx
  exact (mul_eq_zero.mp hx).resolve_left (actual_six_coefficient_nonzero hk)

theorem actual_six_cutoff_birth_is_not_ae_zero {A : ℝ} (hA : 1 ≤ A) {k : ℕ}
    (hk : 1 ≤ k) (hcut : Real.log (6 * k : ℕ) = 2 * A) :
    ShellArithmetic.coefficient (6 * k) *
        sourceCorrelation explicitSecondDerivative A (Real.log (6 * k : ℕ)) = 0 ∧
      ¬ rawAtom A (6 * k) =ᵐ[volume] (0 : ℝ → ℝ) := by
  constructor
  · rw [hcut, sourceCorrelation_upper_endpoint A (by linarith), mul_zero]
  · exact actual_six_raw_atom_nonzero_ae hA hk

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCutoffBirth
