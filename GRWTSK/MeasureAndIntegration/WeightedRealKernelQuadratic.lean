/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib integration and L2 theory retain upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.RealKernelQuadratic

/-!
# Weighted absolute quadratic bound for real continuous kernels

A symmetric nonnegative continuous kernel with positive continuous weight and
weighted row identity has absolute quadratic bound rho times the L2 norm squared.
Weighted square integrability is proved using the bounded continuous reciprocal;
product integrability is retained before every Fubini/integral comparison.
The intended consumer is the actual Wilson principal residual kernel.
Pointwise kernel positivity is not quadratic operator positivity.
SOURCE_PROOF_CANDIDATE; compile/replay/axiom/interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Analysis.Integration.WeightedRealKernelQuadratic
open GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

theorem weighted_amgm {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (x y : ℝ) :
    2 * |x * y| ≤ x^2 * v / u + y^2 * u / v := by
  have he : x^2 * v / u + y^2 * u / v = (x^2 * v^2 + y^2 * u^2) / (u*v) := by
    field_simp [hu.ne', hv.ne']
    <;> ring
  rw [he]
  apply (le_div_iff₀ (mul_pos hu hv)).mpr
  rw [abs_mul]
  rw [← sq_abs x, ← sq_abs y]
  nlinarith [sq_nonneg (|x| * v - |y| * u)]

theorem integrable_square (f : H μ) : Integrable (fun x => (f x)^2) μ := by
  simpa only [Real.inner_apply, pow_two] using (L2.integrable_inner (𝕜 := ℝ) f f)

theorem integral_square (f : H μ) : (∫ x, (f x)^2 ∂μ) = ‖f‖^2 := by
  calc
    _ = inner ℝ f f := by simp only [L2.inner_def, Real.inner_apply, pow_two]
    _ = ‖f‖^2 := real_inner_self_eq_norm_sq

theorem integrable_weighted_square (phi : C(X, ℝ)) (hp : ∀ x, 0 < phi x)
    (f : H μ) : Integrable (fun x => (f x)^2 / phi x) μ := by
  let w : C(X, ℝ) := ⟨fun x => (phi x)⁻¹, phi.continuous.inv₀ (fun x => (hp x).ne')⟩
  have h := (integrable_square μ f).bdd_mul w.continuous.aestronglyMeasurable
    (ae_of_all _ w.norm_coe_le_norm)
  simpa only [w, div_eq_mul_inv, mul_comm] using h

/-- Product integral bound; no positivity of the quadratic form is assumed. -/
theorem abs_product_quadratic_le (K : C(X × X, ℝ)) (phi : C(X, ℝ))
    (hp : ∀ x, 0 < phi x) (hK : ∀ x y, 0 ≤ K (x,y))
    (hs : ∀ x y, K (x,y) = K (y,x)) (rho : ℝ)
    (hr : ∀ x, (∫ y, K (x,y) * phi y ∂μ) = rho * phi x) (f : H μ) :
    |∫ p : X × X, f p.1 * K p * f p.2 ∂μ.prod μ| ≤ rho * ‖f‖^2 := by
  let q : X → ℝ := fun x => (f x)^2 / phi x
  let A : X × X → ℝ := fun p => q p.1 * K p * phi p.2
  have hq : Integrable q μ := integrable_weighted_square μ phi hp f
  have hphi : Integrable phi μ := phi.continuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)
  have hA : Integrable A (μ.prod μ) := by
    have h := (hq.mul_prod hphi).bdd_mul K.continuous.aestronglyMeasurable
      (ae_of_all _ K.norm_coe_le_norm)
    exact h.congr (ae_of_all _ (fun p => by dsimp [A]; ring))
  have hF := GRWTSK.Analysis.Integration.RealKernelQuadratic.integrable_mixed μ K f f
  have hmajor : (∫ p : X × X, 2 * |f p.1 * K p * f p.2| ∂μ.prod μ) ≤
      ∫ p : X × X, A p + A p.swap ∂μ.prod μ := by
    apply integral_mono (by simpa only [Real.norm_eq_abs] using hF.norm.const_mul 2)
      (hA.add hA.swap)
    intro p
    have hw := weighted_amgm (hp p.1) (hp p.2) (f p.1) (f p.2)
    have hm := mul_le_mul_of_nonneg_left hw (hK p.1 p.2)
    have habs : |f p.1 * K p * f p.2| = K p * |f p.1 * f p.2| := by
      simp only [abs_mul, abs_of_nonneg (hK p.1 p.2)]
      ring
    change 2 * |f p.1 * K p * f p.2| ≤
      (f p.1)^2 / phi p.1 * K (p.1,p.2) * phi p.2 +
        (f p.2)^2 / phi p.2 * K (p.2,p.1) * phi p.1
    rw [hs p.2 p.1, habs]
    convert hm using 1 <;> ring
  have hAI : (∫ p : X × X, A p ∂μ.prod μ) = rho * ‖f‖^2 := by
    rw [integral_prod _ hA]
    calc
      _ = ∫ x, q x * (∫ y, K (x,y) * phi y ∂μ) ∂μ := by
        apply integral_congr_ae
        exact ae_of_all _ (fun x => by simp only [A, mul_assoc, integral_const_mul])
      _ = ∫ x, q x * (rho * phi x) ∂μ := by simp_rw [hr]
      _ = rho * ∫ x, (f x)^2 ∂μ := by
        rw [← integral_const_mul]
        apply integral_congr_ae
        exact ae_of_all _ (fun x => by
          dsimp [q]
          field_simp [(hp x).ne']
          <;> ring)
      _ = rho * ‖f‖^2 := by rw [integral_square]
  rw [integral_const_mul, integral_add hA hA.swap, integral_prod_swap, hAI] at hmajor
  have habs : |∫ p : X × X, f p.1 * K p * f p.2 ∂μ.prod μ| ≤
      ∫ p : X × X, |f p.1 * K p * f p.2| ∂μ.prod μ := by
    simpa only [Real.norm_eq_abs] using
      (norm_integral_le_integral_norm (fun p : X × X => f p.1 * K p * f p.2))
  linarith

/-- The bound is on the actual L2 operator constructed from this literal kernel. -/
theorem abs_inner_operator_le (K : C(X × X, ℝ)) (phi : C(X, ℝ))
    (hp : ∀ x, 0 < phi x) (hK : ∀ x y, 0 ≤ K (x,y))
    (hs : ∀ x y, K (x,y) = K (y,x)) (rho : ℝ)
    (hr : ∀ x, (∫ y, K (x,y) * phi y ∂μ) = rho * phi x) (f : H μ) :
    |inner ℝ f (operator μ K f)| ≤ rho * ‖f‖^2 := by
  rw [GRWTSK.Analysis.Integration.RealKernelQuadratic.inner_operator_eq_double]
  rw [← integral_prod _
    (GRWTSK.Analysis.Integration.RealKernelQuadratic.integrable_mixed μ K f f)]
  exact abs_product_quadratic_le μ K phi hp hK hs rho hr f

end GRWTSK.Analysis.Integration.WeightedRealKernelQuadratic
