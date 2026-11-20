import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# Certified integral-kernel approximation on finite measure spaces

Local source attribution: grwtsk contributors.

The error bounds below are derived from a bound on the actual kernel, not an
assumed operator-norm estimate. Their specialization to `[-A,A]` retains the
factor `2*A`. No identification with a Weil form or unbounded operator is made.
-/

noncomputable section

namespace GRWTSK.FunctionalAnalysis.IntegralKernelApproximation

open MeasureTheory

variable {X : Type*} [MeasurableSpace X] {μ : Measure X} [IsFiniteMeasure μ]

/-- The integrand of a complex kernel pairing, conjugate-linear in `u`. -/
def integrand (K : X → X → ℂ) (u v : X → ℂ) (p : X × X) : ℂ :=
  star (u p.1) * K p.1 p.2 * v p.2

/-- The product-measure integral of the kernel pairing. -/
def kernelForm (μ : Measure X) (K : X → X → ℂ) (u v : X → ℂ) : ℂ :=
  ∫ p, integrand K u v p ∂μ.prod μ

omit [MeasurableSpace X] in
theorem integrand_norm_le {K : X → X → ℂ} {u v : X → ℂ} {ε : ℝ}
    (p : X × X) (hK : ‖K p.1 p.2‖ ≤ ε) :
    ‖integrand K u v p‖ ≤ ε * (‖u p.1‖ * ‖v p.2‖) := by
  simp only [integrand, norm_mul, norm_star]
  calc
    ‖u p.1‖ * ‖K p.1 p.2‖ * ‖v p.2‖ ≤ ‖u p.1‖ * ε * ‖v p.2‖ :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hK (norm_nonneg _))
        (norm_nonneg _)
    _ = ε * (‖u p.1‖ * ‖v p.2‖) := by ring

/-- A measurable bounded kernel paired with two L1 functions is integrable. -/
theorem integrable_integrand_of_bound {K : X → X → ℂ} {u v : X → ℂ} {ε : ℝ}
    (hu : Integrable u μ) (hv : Integrable v μ)
    (hK : AEStronglyMeasurable (fun p : X × X => K p.1 p.2) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2‖ ≤ ε) :
    Integrable (integrand K u v) (μ.prod μ) := by
  apply ((hu.norm.mul_prod hv.norm).const_mul ε).mono'
  · exact (hu.aestronglyMeasurable.star.comp_fst.mul hK).mul
      hv.aestronglyMeasurable.comp_snd
  · filter_upwards [hbound] with p hp
    exact integrand_norm_le p hp

/-- L1 error bound obtained by integrating the pointwise kernel bound. -/
theorem norm_kernelForm_le_l1 {K : X → X → ℂ} {u v : X → ℂ} {ε : ℝ}
    (hu : Integrable u μ) (hv : Integrable v μ)
    (hK : Integrable (integrand K u v) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2‖ ≤ ε) :
    ‖kernelForm μ K u v‖ ≤ ε * ((∫ x, ‖u x‖ ∂μ) * ∫ x, ‖v x‖ ∂μ) := by
  unfold kernelForm
  calc
    ‖∫ p, integrand K u v p ∂μ.prod μ‖ ≤
        ∫ p : X × X, ε * (‖u p.1‖ * ‖v p.2‖) ∂μ.prod μ := by
      apply (norm_integral_le_integral_norm _).trans
      apply integral_mono_ae hK.norm ((hu.norm.mul_prod hv.norm).const_mul ε)
      filter_upwards [hbound] with p hp
      exact integrand_norm_le p hp
    _ = ε * ((∫ x, ‖u x‖ ∂μ) * ∫ x, ‖v x‖ ∂μ) := by
      rw [integral_const_mul, integral_prod_mul (fun x => ‖u x‖) (fun x => ‖v x‖)]

/-- Cauchy--Schwarz with the constant function, proved by integrating
`2*a*b ≤ a²+b²` over the product measure. -/
theorem l1_sq_le_mass_l2 {u : X → ℂ} (hu : Integrable u μ)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    (∫ x, ‖u x‖ ∂μ) ^ 2 ≤ μ.real Set.univ * ∫ x, ‖u x‖ ^ 2 ∂μ := by
  have hleft := (hu.norm.mul_prod hu.norm).const_mul (2 : ℝ)
  have hright := (hu2.comp_fst μ).add (hu2.comp_snd μ)
  have h := integral_mono hleft hright (fun p => by
    change 2 * (‖u p.1‖ * ‖u p.2‖) ≤ ‖u p.1‖ ^ 2 + ‖u p.2‖ ^ 2
    nlinarith [sq_nonneg (‖u p.1‖ - ‖u p.2‖)])
  simp only [Pi.add_apply] at h
  rw [integral_const_mul, integral_prod_mul (fun x => ‖u x‖) (fun x => ‖u x‖),
    integral_add (hu2.comp_fst μ) (hu2.comp_snd μ),
    integral_fun_fst (fun x => ‖u x‖ ^ 2), integral_fun_snd (fun x => ‖u x‖ ^ 2)] at h
  simp only [smul_eq_mul] at h
  nlinarith

/-- A uniform kernel bound gives an L2 quadratic bound with the total measure. -/
theorem norm_kernelForm_le_l2 {K : X → X → ℂ} {u : X → ℂ} {ε : ℝ}
    (hε : 0 ≤ ε) (hu : Integrable u μ)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2‖ ≤ ε) :
    ‖kernelForm μ K u u‖ ≤ (ε * μ.real Set.univ) * ∫ x, ‖u x‖ ^ 2 ∂μ := by
  calc
    ‖kernelForm μ K u u‖ ≤ ε * (∫ x, ‖u x‖ ∂μ) ^ 2 := by
      simpa only [pow_two] using norm_kernelForm_le_l1 hu hu hK hbound
    _ ≤ ε * (μ.real Set.univ * ∫ x, ‖u x‖ ^ 2 ∂μ) :=
      mul_le_mul_of_nonneg_left (l1_sq_le_mass_l2 hu hu2) hε
    _ = (ε * μ.real Set.univ) * ∫ x, ‖u x‖ ^ 2 ∂μ := by ring

omit [IsFiniteMeasure μ] in
/-- Linearity in the kernel, with integrability retained explicitly. -/
theorem kernelForm_sub {K L : X → X → ℂ} {u v : X → ℂ}
    (hK : Integrable (integrand K u v) (μ.prod μ))
    (hL : Integrable (integrand L u v) (μ.prod μ)) :
    kernelForm μ (fun x y => K x y - L x y) u v =
      kernelForm μ K u v - kernelForm μ L u v := by
  unfold kernelForm
  calc
    (∫ p, integrand (fun x y => K x y - L x y) u v p ∂μ.prod μ) =
        ∫ p, integrand K u v p - integrand L u v p ∂μ.prod μ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun p => by simp only [integrand]; ring)
    _ = _ := integral_sub hK hL

/-- Difference of two actual quadratic forms, bounded by their uniform kernel error. -/
theorem norm_kernelForm_sub_le_l2 {K L : X → X → ℂ} {u : X → ℂ} {ε : ℝ}
    (hε : 0 ≤ ε) (hu : Integrable u μ)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hL : Integrable (integrand L u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2 - L p.1 p.2‖ ≤ ε) :
    ‖kernelForm μ K u u - kernelForm μ L u u‖ ≤
      (ε * μ.real Set.univ) * ∫ x, ‖u x‖ ^ 2 ∂μ := by
  have hKL : Integrable (integrand (fun x y => K x y - L x y) u u) (μ.prod μ) := by
    convert hK.sub hL using 1
    ext p
    simp only [integrand, Pi.sub_apply]
    ring
  rw [← kernelForm_sub hK hL]
  exact norm_kernelForm_le_l2 hε hu hu2 hKL hbound

/-- Fubini's theorem relates the product-measure definition to the iterated
kernel pairing when the specified integrand is integrable. -/
theorem kernelForm_eq_iterated {K : X → X → ℂ} {u v : X → ℂ}
    (hK : Integrable (integrand K u v) (μ.prod μ)) :
    kernelForm μ K u v = ∫ x, ∫ y, star (u x) * K x y * v y ∂μ ∂μ := by
  exact integral_prod (integrand K u v) hK

/-- Certified lower and upper bounds for the real part of the true quadratic
form. For Hermitian kernels these are bounds for the real quadratic form itself. -/
theorem kernelForm_real_sandwich {K L : X → X → ℂ} {u : X → ℂ} {ε : ℝ}
    (hε : 0 ≤ ε) (hu : Integrable u μ)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hL : Integrable (integrand L u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2 - L p.1 p.2‖ ≤ ε) :
    (kernelForm μ L u u).re - (ε * μ.real Set.univ) * (∫ x, ‖u x‖ ^ 2 ∂μ) ≤
        (kernelForm μ K u u).re ∧
    (kernelForm μ K u u).re ≤
        (kernelForm μ L u u).re + (ε * μ.real Set.univ) * (∫ x, ‖u x‖ ^ 2 ∂μ) := by
  have h := (Complex.abs_re_le_norm (kernelForm μ K u u - kernelForm μ L u u)).trans
    (norm_kernelForm_sub_le_l2 hε hu hu2 hK hL hbound)
  rw [Complex.sub_re, abs_le] at h
  constructor <;> linarith [h.1, h.2]

/-- The finite interval has mass `2*A`, with a nonnegative half-width. -/
theorem interval_mass {A : ℝ} (hA : 0 ≤ A) :
    (volume.restrict (Set.Icc (-A) A)).real Set.univ = 2 * A := by
  rw [measureReal_restrict_apply_univ,
    Real.volume_real_Icc_of_le (by linarith : -A ≤ A)]
  ring

/-- Uniform approximation on the actual Lebesgue square yields the factor
`2*A*ε` in the L2 quadratic error on the interval. -/
theorem interval_kernelForm_error {A ε : ℝ} {K L : ℝ → ℝ → ℂ} {u : ℝ → ℂ}
    (hA : 0 ≤ A) (hε : 0 ≤ ε)
    (hu : IntegrableOn u (Set.Icc (-A) A))
    (hu2 : IntegrableOn (fun x => ‖u x‖ ^ 2) (Set.Icc (-A) A))
    (hK : Integrable (integrand K u u)
      ((volume.restrict (Set.Icc (-A) A)).prod (volume.restrict (Set.Icc (-A) A))))
    (hL : Integrable (integrand L u u)
      ((volume.restrict (Set.Icc (-A) A)).prod (volume.restrict (Set.Icc (-A) A))))
    (hbound : ∀ x ∈ Set.Icc (-A) A, ∀ y ∈ Set.Icc (-A) A, ‖K x y - L x y‖ ≤ ε) :
    ‖kernelForm (volume.restrict (Set.Icc (-A) A)) K u u -
        kernelForm (volume.restrict (Set.Icc (-A) A)) L u u‖ ≤
      (2 * A * ε) * ∫ x in Set.Icc (-A) A, ‖u x‖ ^ 2 := by
  have hb : ∀ᵐ p ∂(volume.restrict (Set.Icc (-A) A)).prod
      (volume.restrict (Set.Icc (-A) A)), ‖K p.1 p.2 - L p.1 p.2‖ ≤ ε := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Icc.prod measurableSet_Icc)] with p hp
    exact hbound p.1 hp.1 p.2 hp.2
  have h := norm_kernelForm_sub_le_l2 hε hu hu2 hK hL hb
  rw [interval_mass hA] at h
  convert h using 1
  ring

end GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
