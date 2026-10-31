/- Copyright (c) 2026 grwtsk contributors. MIT.
Paper method: Jack Piazza and Hao Shen, arXiv:2610.35286v1, Lemma 2.1.
The present general-kernel algebra is a local adaptation, not their full 2D theorem. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelComposition

/-!
# Exact minorization splitting of continuous probability kernels

A continuous kernel K with K>=a, 0<=a<1 splits as a+(1-a)R. Both
normalization directions are proved for R when supplied for K. Convolution
against a column-normalized P contracts its deviation from one by 1-a.
This is the algebraic, zeroth-order part of the two-scale convolution method;
no Hessian estimate, block disintegration, LSI or dimension-four transfer is proved.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelMinorization
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K P : C(X × X, ℝ))

private theorem compact_integrable (g : X → ℝ) (hg : Continuous g) : Integrable g μ :=
  hg.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

def remainder (a : ℝ) : C(X × X, ℝ) :=
  ⟨fun p => (K p-a)/(1-a), (K.continuous.sub continuous_const).div_const _⟩

theorem split (a : ℝ) (ha : a < 1) (x y : X) :
    K (x,y) = a+(1-a)*remainder K a (x,y) := by
  dsimp [remainder]
  have h : 1-a ≠ 0 := by linarith
  field_simp [h]
  <;> ring

theorem remainder_nonnegative (a : ℝ) (ha : a < 1)
    (hK : ∀ x y, a ≤ K (x,y)) (x y : X) :
    0 ≤ remainder K a (x,y) :=
  div_nonneg (sub_nonneg.mpr (hK x y)) (by linarith)

theorem remainder_row (a : ℝ) (ha : a < 1)
    (hrow : ∀ x, (∫ y, K (x,y) ∂μ) = 1) (x : X) :
    (∫ y, remainder K a (x,y) ∂μ) = 1 := by
  have hi := compact_integrable μ _ (K.continuous.comp (continuous_const.prodMk continuous_id))
  change (∫ y, (K (x,y)-a)/(1-a) ∂μ) = 1
  rw [integral_div, integral_sub hi (integrable_const a), hrow x]
  simp only [integral_const, probReal_univ, one_smul]
  exact div_self (by linarith)

theorem remainder_column (a : ℝ) (ha : a < 1)
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1) (y : X) :
    (∫ x, remainder K a (x,y) ∂μ) = 1 := by
  have hi := compact_integrable μ _ (K.continuous.comp (continuous_id.prodMk continuous_const))
  change (∫ x, (K (x,y)-a)/(1-a) ∂μ) = 1
  rw [integral_div, integral_sub hi (integrable_const a), hcol y]
  simp only [integral_const, probReal_univ, one_smul]
  exact div_self (by linarith)

/-- Exact cancellation, before absolute values: the constant component integrates out. -/
theorem convolution_residual_split (a : ℝ) (ha : a < 1)
    (hcol : ∀ y, (∫ z, P (z,y) ∂μ) = 1) (x y : X) :
    convolution μ K P (x,y)-1 =
      (1-a)*(convolution μ (remainder K a) P (x,y)-1) := by
  have hip := compact_integrable μ _ (P.continuous.comp (continuous_id.prodMk continuous_const))
  have hirp := compact_integrable μ _
    (((remainder K a).continuous.comp (continuous_const.prodMk continuous_id)).mul
      (P.continuous.comp (continuous_id.prodMk continuous_const)))
  have hh : convolution μ K P (x,y) = a+(1-a)*convolution μ (remainder K a) P (x,y) := by
    change (∫ z, K (x,z)*P (z,y) ∂μ) = _
    calc
      _ = ∫ z, a*P (z,y)+(1-a)*(remainder K a (x,z)*P (z,y)) ∂μ := by
        apply integral_congr_ae
        exact ae_of_all _ (fun z => by rw [split K a ha x z]; ring)
      _ = _ := by
        rw [integral_add (hip.const_mul a) (hirp.const_mul (1-a))]
        simpa only [integral_const_mul, hcol y, mul_one]
  rw [hh]
  ring

/-- A probability-row residual bound; it is a strict contraction when 0<a<1.
Derivative and Hessian bounds remain separate. -/
theorem convolution_residual_bound (a M : ℝ) (ha : a < 1)
    (hK : ∀ x y, a ≤ K (x,y))
    (hrow : ∀ x, (∫ z, K (x,z) ∂μ) = 1)
    (hcol : ∀ y, (∫ z, P (z,y) ∂μ) = 1)
    (hP : ∀ x y, |P (x,y)-1| ≤ M) (x y : X) :
    |convolution μ K P (x,y)-1| ≤ (1-a)*M := by
  have hiR := compact_integrable μ _
    ((remainder K a).continuous.comp (continuous_const.prodMk continuous_id))
  have hi := compact_integrable μ _
    (((remainder K a).continuous.comp (continuous_const.prodMk continuous_id)).mul
      ((P.continuous.comp (continuous_id.prodMk continuous_const)).sub continuous_const))
  have hh : convolution μ (remainder K a) P (x,y)-1 =
      ∫ z, remainder K a (x,z)*(P (z,y)-1) ∂μ := by
    simp_rw [mul_sub, mul_one]
    rw [integral_sub (compact_integrable μ _
      (((remainder K a).continuous.comp (continuous_const.prodMk continuous_id)).mul
        (P.continuous.comp (continuous_id.prodMk continuous_const)))) hiR,
      remainder_row μ K a ha hrow x]
  rw [convolution_residual_split μ K P a ha hcol x y, abs_mul, abs_of_pos (by linarith : 0 < 1-a)]
  apply mul_le_mul_of_nonneg_left _ (by linarith)
  rw [hh]
  calc
    _ ≤ ∫ z, |remainder K a (x,z)*(P (z,y)-1)| ∂μ := abs_integral_le_integral_abs
    _ ≤ ∫ z, remainder K a (x,z)*M ∂μ := by
      apply integral_mono_ae hi.abs (hiR.mul_const M)
      exact ae_of_all _ (fun z => by
        rw [abs_mul, abs_of_nonneg (remainder_nonnegative K a ha hK x z)]
        exact mul_le_mul_of_nonneg_left (hP z y) (remainder_nonnegative K a ha hK x z))
    _ = M := by rw [integral_mul_const, remainder_row μ K a ha hrow x, one_mul]

end GRWTSK.Analysis.Integration.ContinuousKernelMinorization
