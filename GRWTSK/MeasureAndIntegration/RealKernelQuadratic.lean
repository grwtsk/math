/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib real/complex integration, Fubini and inner products retain upstream
attribution and the Apache-2.0 license. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelL2Bound
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteGramCompression
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramIntegral
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Literal kernel quadratics and finite-feature operator identification

These equalities bind the constructed L2 kernel map to the source integral
and bind a finite-feature kernel to its actual Gram operator. Symmetry is
proved by Fubini, not inferred from pointwise positivity.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.Analysis.Integration.RealKernelQuadratic
open GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

variable {X I : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

/-- Product integrability is paid before swapping integrals. -/
theorem integrable_mixed (K : C(X × X, ℝ)) (f g : H μ) :
    Integrable (fun p : X × X => f p.1 * K p * g p.2) (μ.prod μ) := by
  have h := ((integrable_input μ f).mul_prod (integrable_input μ g)).bdd_mul
    K.continuous.aestronglyMeasurable (ae_of_all _ K.norm_coe_le_norm)
  exact h.congr (ae_of_all _ (fun p => by dsimp; ring))

theorem inner_operator_eq_double (K : C(X × X, ℝ)) (f g : H μ) :
    inner ℝ f (operator μ K g) = ∫ x, ∫ y, f x * K (x,y) * g y ∂μ ∂μ := by
  calc
    _ = ∫ x, f x * integralValue μ K g x ∂μ := by
      rw [L2.inner_def]
      apply integral_congr_ae
      filter_upwards [operator_apply_ae μ K g] with x hx
      rw [hx]
      simp only [Real.inner_apply, representative]
      ring
    _ = _ := by simp only [integralValue, mul_assoc, integral_const_mul]

theorem operator_isSymmetric (K : C(X × X, ℝ))
    (hK : ∀ x y, K (x,y) = K (y,x)) : (operator μ K).toLinearMap.IsSymmetric := by
  intro f g
  calc
    inner ℝ (operator μ K f) g = inner ℝ g (operator μ K f) := real_inner_comm _ _
    _ = ∫ x, ∫ y, g x * K (x,y) * f y ∂μ ∂μ := inner_operator_eq_double μ K g f
    _ = ∫ y, ∫ x, g x * K (x,y) * f y ∂μ ∂μ :=
      integral_integral_swap (integrable_mixed μ K g f)
    _ = ∫ x, ∫ y, f x * K (x,y) * g y ∂μ ∂μ := by
      apply integral_congr_ae
      refine ae_of_all _ (fun x => ?_)
      apply integral_congr_ae
      exact ae_of_all _ (fun y => by rw [hK y x]; ring)
    _ = inner ℝ f (operator μ K g) := (inner_operator_eq_double μ K f g).symm

def complexify (f : C(X, ℝ)) : C(X, ℂ) :=
  ⟨fun x => (f x : ℂ), Complex.continuous_ofReal.comp f.continuous⟩

/-- Real and complex quadratic conventions are identified explicitly. -/
theorem inner_operator_continuous (K : C(X × X, ℝ)) (f : C(X, ℝ)) :
    inner ℝ (ContinuousMap.toLp 2 μ ℝ f) (operator μ K (ContinuousMap.toLp 2 μ ℝ f)) =
      (quadraticIntegral μ (fun x y => K (x,y)) (complexify f)).re := by
  have hc : Continuous (fun p : X × X => f p.1 * K p * f p.2) :=
    ((f.continuous.comp continuous_fst).mul K.continuous).mul (f.continuous.comp continuous_snd)
  have hi := hc.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  have he : inner ℝ (ContinuousMap.toLp 2 μ ℝ f) (operator μ K (ContinuousMap.toLp 2 μ ℝ f)) =
      ∫ p : X × X, f p.1 * K p * f p.2 ∂μ.prod μ := by
    rw [inner_operator_eq_double, integral_prod _ hi]
    apply integral_congr_ae
    filter_upwards [ContinuousMap.coeFn_toLp μ f (p := 2) (𝕜 := ℝ)] with x hx
    apply integral_congr_ae
    filter_upwards [ContinuousMap.coeFn_toLp μ f (p := 2) (𝕜 := ℝ)] with y hy
    rw [hx, hy]
  rw [he]
  have hz : quadraticIntegral μ (fun x y => K (x,y)) (complexify f) =
      ((∫ p : X × X, f p.1 * K p * f p.2 ∂μ.prod μ : ℝ) : ℂ) := by
    unfold quadraticIntegral complexify
    simp only [Complex.conj_ofReal, ← Complex.ofReal_mul, integral_complex_ofReal]
    congr 1
    apply integral_congr_ae
    exact ae_of_all _ (fun p => by ring)
  rw [hz, Complex.ofReal_re]

section Finite
variable [Fintype I]

def featureKernel (v : I → C(X, ℝ)) : C(X × X, ℝ) :=
  ⟨fun p => ∑ i, v i p.1 * v i p.2,
    continuous_finsetSum _ (fun i _ => ((v i).continuous.comp continuous_fst).mul
      ((v i).continuous.comp continuous_snd))⟩

theorem inner_feature (v : C(X, ℝ)) (f : H μ) :
    inner ℝ (ContinuousMap.toLp 2 μ ℝ v) f = ∫ x, v x * f x ∂μ := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [ContinuousMap.coeFn_toLp μ v (p := 2) (𝕜 := ℝ)] with x hx
  rw [hx]
  simp only [Real.inner_apply]
  ring

/-- Equality of actual operators, not just equality on a finite test population. -/
theorem operator_featureKernel (v : I → C(X, ℝ)) :
    operator μ (featureKernel v) = gramOperator (fun i => ContinuousMap.toLp 2 μ ℝ (v i)) := by
  ext f : 1
  apply Lp.ext
  have hr : (gramOperator (fun i => ContinuousMap.toLp 2 μ ℝ (v i)) f : X → ℝ) =ᵐ[μ]
      (fun x => ∑ i, (∫ y, v i y * f y ∂μ) * v i x) := by
    rw [gramOperator_apply]
    have ha : (∑ i, inner ℝ (ContinuousMap.toLp 2 μ ℝ (v i)) f •
        ContinuousMap.toLp 2 μ ℝ (v i) : H μ) =
        ContinuousMap.toLp 2 μ ℝ (∑ i, (∫ y, v i y * f y ∂μ) • v i) := by
      simp only [map_sum, map_smul, inner_feature]
    rw [ha]
    simpa only [ContinuousMap.sum_apply, ContinuousMap.smul_apply, smul_eq_mul] using
      ContinuousMap.coeFn_toLp μ (∑ i, (∫ y, v i y * f y ∂μ) • v i) (p := 2) (𝕜 := ℝ)
  filter_upwards [operator_apply_ae μ (featureKernel v) f, hr] with x hx hrx
  rw [hx, hrx]
  change (∫ y, (∑ i, v i x * v i y) * f y ∂μ) = _
  simp_rw [Finset.sum_mul]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i _
    simp only [mul_assoc, integral_const_mul]
    ring
  · intro i _
    have hi := (integrable_input μ f).bdd_mul (v i).continuous.aestronglyMeasurable
      (ae_of_all _ (v i).norm_coe_le_norm)
    simpa only [mul_assoc] using hi.const_mul (v i x)
end Finite

end GRWTSK.Analysis.Integration.RealKernelQuadratic

namespace GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Real polarization identifies symmetric bounded operators from their actual quadratic forms. -/
theorem eq_of_quadratic_eq (A B : E →L[ℝ] E)
    (hA : A.toLinearMap.IsSymmetric) (hB : B.toLinearMap.IsSymmetric)
    (hq : ∀ x, inner ℝ x (A x) = inner ℝ x (B x)) : A = B := by
  have hp (x y : E) : inner ℝ x (A y - B y) = 0 := by
    have hxy := hq (x + y)
    have hx := hq x
    have hy := hq y
    have hAx : inner ℝ y (A x) = inner ℝ x (A y) := (real_inner_comm y (A x)).trans (hA x y)
    have hBx : inner ℝ y (B x) = inner ℝ x (B y) := (real_inner_comm y (B x)).trans (hB x y)
    simp only [map_add, inner_add_left, inner_add_right] at hxy
    rw [hAx, hBx] at hxy
    rw [inner_sub_right]
    linarith
  ext y : 1
  have hz := hp (A y - B y) y
  rw [real_inner_self_eq_norm_sq] at hz
  exact sub_eq_zero.mp (norm_eq_zero.mp (by nlinarith [norm_nonneg (A y - B y)]))

/-- Symmetry survives genuine orthogonal compression. -/
theorem compress_isSymmetric (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (A : E →L[ℝ] E) (hA : A.toLinearMap.IsSymmetric) :
    (compress K A).toLinearMap.IsSymmetric := by
  intro x y
  rw [real_inner_comm (compress K A x) y, compress_pairing,
    real_inner_comm (y : E) (A (x : E)), hA (x : E) (y : E), compress_pairing]

end GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
