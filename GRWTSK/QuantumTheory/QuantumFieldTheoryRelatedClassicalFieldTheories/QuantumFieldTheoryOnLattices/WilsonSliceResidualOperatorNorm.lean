/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualQuadraticBound

/-!
# Actual invariant residual identification and weighted norm bound

The residual integral operator on invariant inputs is identified in actual L2
with T-c lambda^2 rankOne(f), using the principal continuous embedding and AE
scalar/subtraction laws. The weighted absolute-quadratic bound then transfers
to this very operator. Symmetry and the absolute Rayleigh norm characterization
give norm(T-c lambda^2 rankOne(f)) <= lambda(1-c lambda).
All constants retain fixed-regulator and coupling dependence. No normalized
spectral-ratio, uniform physical gap or continuum theorem is asserted here.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, transitive axiom and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualOperatorNorm
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualQuadraticBound
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
variable (L : ℕ) [NeZero L]

def minorizationCoefficient (β : ℝ) (hβ : 0 < β) : ℝ :=
  Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2

def residualRate (β : ℝ) (hβ : 0 < β) : ℝ :=
  lambda0 L β hβ.le * (1 - Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le)

def residualOperator (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    gaugeInvariantSpace L →L[ℝ] gaugeInvariantSpace L :=
  invariantOperator L β hβ.le - minorizationCoefficient L β hβ • rankOne f

theorem lambda0_le_one (β : ℝ) (hβ : 0 < β) : lambda0 L β hβ.le ≤ 1 := by
  obtain ⟨f, hn, he⟩ := principal_eigenvector L β hβ
  have h := invariantOperator_norm_apply_le L β hβ.le f
  rw [he, norm_smul, Real.norm_eq_abs, abs_of_pos (lambda0_pos L β hβ), hn, mul_one] at h
  exact h

theorem residualRate_nonnegative (β : ℝ) (hβ : 0 < β) : 0 ≤ residualRate L β hβ := by
  have hc : Real.exp (-12 * β * (L : ℝ)^3) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    have hp : 0 ≤ 12 * β * (L : ℝ)^3 := by positivity
    linarith
  have hm : Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le ≤ 1 := by
    calc
      _ ≤ Real.exp (-12 * β * (L : ℝ)^3) * 1 :=
        mul_le_mul_of_nonneg_left (lambda0_le_one L β hβ) (Real.exp_pos _).le
      _ ≤ 1 := by simpa only [mul_one] using hc
  exact mul_nonneg (lambda0_pos L β hβ).le (sub_nonneg.mpr hm)

/-- Exact L2 identification on every actual invariant input. -/
theorem residualOperator_coe (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (x : gaugeInvariantSpace L) :
    (residualOperator L β hβ f x : RealSliceL2 L) =
      GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator
        (sliceHaar L) (residualKernel L β hβ f) (x : RealSliceL2 L) := by
  let phi := principalRepresentative L β hβ f
  let k := minorizationCoefficient L β hβ
  have hi : (∫ b, phi b * (x : RealSliceL2 L) b ∂sliceHaar L) = inner ℝ f x := by
    rw [← GRWTSK.Analysis.Integration.RealKernelQuadratic.inner_feature,
      principalRepresentative_toLp L β hβ f he]
    rfl
  have hix : Integrable (fun b => phi b * (x : RealSliceL2 L) b) (sliceHaar L) := by
    have h := (integrable_L2 L x).bdd_mul phi.continuous.aestronglyMeasurable
      (ae_of_all _ phi.norm_coe_le_norm)
    simpa only [mul_comm] using h
  have hpoint (a : Slice L SU2) :
      (∫ b, residualKernel L β hβ f (a,b) * (x : RealSliceL2 L) b ∂sliceHaar L) =
        kernelIntegral L β x a - (k * phi a) * inner ℝ f x := by
    have hfun : (fun b => residualKernel L β hβ f (a,b) * (x : RealSliceL2 L) b) =
        fun b => sliceKernel L β a b * (x : RealSliceL2 L) b -
          (k * phi a) * (phi b * (x : RealSliceL2 L) b) := by
      funext b
      dsimp [residualKernel, k, minorizationCoefficient, phi]
      ring
    rw [hfun, integral_sub
      (integrable_kernelIntegrand L β hβ.le (integrable_L2 L x) a) (hix.const_mul _),
      integral_const_mul, hi]
    rfl
  change operator L β hβ.le (x : RealSliceL2 L) -
      k • (inner ℝ f x • (f : RealSliceL2 L)) = _
  rw [smul_smul]
  apply Lp.ext
  filter_upwards [Lp.coeFn_sub (operator L β hβ.le (x : RealSliceL2 L))
      ((k * inner ℝ f x) • (f : RealSliceL2 L)),
    Lp.coeFn_smul (k * inner ℝ f x) (f : RealSliceL2 L),
    operator_apply_ae L β hβ.le (x : RealSliceL2 L),
    GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator_apply_ae
      (sliceHaar L) (residualKernel L β hβ f) (x : RealSliceL2 L),
    principalRepresentative_eq_ae L β hβ f he] with a hsub hsmul hT hR hphi
  rw [hsub, hsmul, hT, hR]
  change kernelIntegral L β x a - (k * inner ℝ f x) * (f : RealSliceL2 L) a =
    ∫ b, residualKernel L β hβ f (a,b) * (x : RealSliceL2 L) b ∂sliceHaar L
  rw [hphi, hpoint]
  change kernelIntegral L β x a - (k * inner ℝ f x) * phi a = _
  ring

theorem residualOperator_isSymmetric (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    (residualOperator L β hβ f).toLinearMap.IsSymmetric := by
  intro x y
  change inner ℝ (residualOperator L β hβ f x) y = inner ℝ x (residualOperator L β hβ f y)
  simp only [residualOperator, ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply,
    rankOne_apply, inner_sub_left, inner_sub_right, real_inner_smul_left, inner_smul_right]
  rw [invariantOperator_isSymmetric L β hβ.le x y, real_inner_comm x f]
  ring

theorem residualOperator_absolute_quadratic (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (x : gaugeInvariantSpace L) :
    |inner ℝ x (residualOperator L β hβ f x)| ≤ residualRate L β hβ * ‖x‖^2 := by
  change |inner ℝ (x : RealSliceL2 L) (residualOperator L β hβ f x : RealSliceL2 L)| ≤ _
  rw [residualOperator_coe L β hβ f he x]
  exact actual_residual_absolute_quadratic L β hβ f hn hf he x

/-- Symmetric absolute Rayleigh control gives the norm of the actual residual. -/
theorem residualOperator_norm_le (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    ‖residualOperator L β hβ f‖ ≤ residualRate L β hβ := by
  rw [(residualOperator L β hβ f).norm_eq_iSup_rayleighQuotient
    (residualOperator_isSymmetric L β hβ f)]
  apply ciSup_le
  intro x
  by_cases hx : x = 0
  · subst x
    simpa [ContinuousLinearMap.rayleighQuotient, ContinuousLinearMap.reApplyInnerSelf] using
      residualRate_nonnegative L β hβ
  · have hb := residualOperator_absolute_quadratic L β hβ f hn hf he x
    change |inner ℝ (residualOperator L β hβ f x) x / ‖x‖^2| ≤ _
    rw [abs_div, abs_of_nonneg (sq_nonneg _), real_inner_comm]
    exact (div_le_iff₀ (sq_pos_of_pos (norm_pos_iff.mpr hx))).mpr hb

end GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualOperatorNorm
