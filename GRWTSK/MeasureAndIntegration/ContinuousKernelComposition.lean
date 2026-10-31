/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integration theory retains upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelL2Bound
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Composition of actual continuous kernel operators

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
and expected-interface checks: NOT_RUN. No trace or decay assertion is made.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelComposition
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]
variable (J K : C(X × X, ℝ))

def convolutionValue (p : X × X) : ℝ := ∫ z, J (p.1,z) * K (z,p.2) ∂μ

theorem continuous_convolutionValue : Continuous (convolutionValue μ J K) := by
  apply continuous_of_dominated (bound := fun _ : X => ‖J‖ * ‖K‖)
  · intro p
    exact (((J.continuous.comp (continuous_const.prodMk continuous_id)).mul
      (K.continuous.comp (continuous_id.prodMk continuous_const))).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)).aestronglyMeasurable
  · intro p
    exact ae_of_all _ (fun z => by
      rw [norm_mul]
      exact mul_le_mul (J.norm_coe_le_norm _) (K.norm_coe_le_norm _)
        (norm_nonneg _) (norm_nonneg _))
  · exact integrable_const _
  · exact ae_of_all _ (fun z =>
      (J.continuous.comp (continuous_fst.prodMk continuous_const)).mul
        (K.continuous.comp (continuous_const.prodMk continuous_snd)))

def convolution : C(X × X, ℝ) :=
  ⟨convolutionValue μ J K, continuous_convolutionValue μ J K⟩

/-- The actual L2 input is L1; bounded continuous coefficients preserve product integrability. -/
theorem integrable_composition (f : H μ) (x : X) :
    Integrable (fun p : X × X => J (x,p.1) * K p * f p.2) (μ.prod μ) := by
  let A : C(X × X, ℝ) := ⟨fun p => J (x,p.1) * K p,
    (J.continuous.comp (continuous_const.prodMk continuous_fst)).mul K.continuous⟩
  have h := ((integrable_const (1 : ℝ) : Integrable (fun _ : X => (1 : ℝ)) μ).mul_prod
    (integrable_input μ f)).bdd_mul A.continuous.aestronglyMeasurable
      (ae_of_all _ A.norm_coe_le_norm)
  exact h.congr (ae_of_all _ (fun p => by dsimp [A]; ring))

/-- Fubini applies to the literal integrand, with no independent composition witness. -/
theorem integralValue_composition (f : H μ) (x : X) :
    integralValue μ (convolution μ J K) f x =
      integralValue μ J (operator μ K f) x := by
  change (∫ y, (∫ z, J (x,z) * K (z,y) ∂μ) * f y ∂μ) = _
  calc
    _ = ∫ y, ∫ z, J (x,z) * K (z,y) * f y ∂μ ∂μ := by
      simp only [integral_mul_const]
    _ = ∫ z, ∫ y, J (x,z) * K (z,y) * f y ∂μ ∂μ :=
      (integral_integral_swap (integrable_composition μ J K f x)).symm
    _ = ∫ z, J (x,z) * integralValue μ K f z ∂μ := by
      simp only [integralValue, mul_assoc, integral_const_mul]
    _ = integralValue μ J (operator μ K f) x := by
      apply integral_congr_ae
      filter_upwards [operator_apply_ae μ K f] with z hz
      change J (x,z) * integralValue μ K f z = J (x,z) * operator μ K f z
      rw [hz]
      rfl

/-- Equality of the maintained operators on every actual L2 class. -/
theorem operator_convolution :
    operator μ (convolution μ J K) = (operator μ J).comp (operator μ K) := by
  ext f : 1
  apply Lp.ext
  filter_upwards [operator_apply_ae μ (convolution μ J K) f,
    operator_apply_ae μ J (operator μ K f)] with x hleft hright
  change operator μ (convolution μ J K) f x = operator μ J (operator μ K f) x
  rw [hleft, hright]
  exact integralValue_composition μ J K f x

end GRWTSK.Analysis.Integration.ContinuousKernelComposition
