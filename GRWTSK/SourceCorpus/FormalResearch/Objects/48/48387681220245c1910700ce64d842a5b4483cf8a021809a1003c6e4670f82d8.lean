import FormalResearch.MathematicalTooling.Laplace.Continuation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# Direct pickup transform and its conditional positive-Laplace return

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.

The literal reciprocal-zeta transform of the logarithmic Möbius pickup is
`1 / (z * (z + 1/2) * riemannZeta (z + 1/2))`. This file proves its exact
pole order at every right-half nontrivial zero, including multiple zeros, and
shows that an analytic polynomial correction cannot cancel those poles.

The final theorem assumes a continuous pickup, one global polynomial upper
bound, its elementary exponential growth bound, and its exact initial direct
Laplace identity. It constructs the complete positive corrected density and
proves its initial integrability and continuation regularity. The actual signed
supplier and the source-specific direct transform identity remain separate
premises. An entire regularization fixes the removable value at `z = 1/2`;
positive-real analyticity uses the previously checked real-axis zero exclusion.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SupplierLandauReturn

open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology
open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.MathematicalTooling.Laplace.Continuation

noncomputable section

/-- The unchanged direct reciprocal-zeta pickup transform. -/
def pickupTransform (z : ℂ) : ℂ :=
  1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))

/-- The reciprocal continuation with its correct removable value at `z=1/2`.
The denominator uses the actual entire `s(s-1)ζ(s)` regularization. -/
def normalizedPickupTransform (z : ℂ) : ℂ :=
  (z - 1 / 2) / (z * ZeroEta.regularizedZeta (z + 1 / 2))

/-- Away from the removable center, the normalized formula is the literal
reciprocal on the positive half-plane. -/
theorem normalizedPickupTransform_eq
    {z : ℂ} (hz : 0 < z.re) (hhalf : z ≠ 1 / 2) :
    normalizedPickupTransform z = pickupTransform z := by
  have hs0 : z + (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hh := congrArg Complex.re h
    norm_num at hh
    linarith
  have hs1 : z + (1 / 2 : ℂ) ≠ 1 := by
    intro h
    apply hhalf
    linear_combination h
  unfold normalizedPickupTransform pickupTransform
  rw [ZeroEta.regularizedZeta_eq hs0 hs1]
  have hd : z * ((z + 1 / 2) * (z + 1 / 2 - 1) * riemannZeta (z + 1 / 2)) =
      (z - 1 / 2) * (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by ring
  rw [hd]
  simpa only [mul_one] using
    (mul_div_mul_left (1 : ℂ) (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))
      (sub_ne_zero.mpr hhalf))

/-- The normalized continuation agrees with the direct initial transform. -/
theorem normalizedPickupTransform_eq_initial {z : ℂ} (hz : 1 < z.re) :
    normalizedPickupTransform z = pickupTransform z := by
  apply normalizedPickupTransform_eq (by linarith)
  intro h
  rw [h] at hz
  norm_num at hz

/-- The normalized direct transform is meromorphic on the entire complex plane. -/
theorem normalizedPickupTransform_meromorphic (z : ℂ) :
    MeromorphicAt normalizedPickupTransform z := by
  have hreg : AnalyticAt ℂ (fun w : ℂ ↦ ZeroEta.regularizedZeta (w + 1 / 2)) z :=
    (ZeroEta.differentiable_regularizedZeta.analyticAt _).comp
      (analyticAt_id.add analyticAt_const)
  exact (analyticAt_id.sub analyticAt_const).meromorphicAt.div
    (analyticAt_id.mul hreg).meromorphicAt

/-- Actual real-axis nonvanishing makes the regularized denominator nonzero. -/
theorem regularizedZeta_ne_zero_positive_real
    {s : ℝ} (hs : 0 < s) : ZeroEta.regularizedZeta (s : ℂ) ≠ 0 := by
  by_cases hs1 : s = 1
  · subst s
    simp [ZeroEta.regularizedZeta, Complex.Gammaℝ_one]
  · have hc0 : (s : ℂ) ≠ 0 := by exact_mod_cast hs.ne'
    have hc1 : (s : ℂ) ≠ 1 := by exact_mod_cast hs1
    rw [ZeroEta.regularizedZeta_eq hc0 hc1]
    apply mul_ne_zero (mul_ne_zero hc0 (sub_ne_zero.mpr hc1))
    by_cases hlarge : 1 ≤ s
    · exact riemannZeta_ne_zero_of_one_le_re (by simpa using hlarge)
    · exact ZeroEta.real_zero_exclusion s hs (lt_of_not_ge hlarge)

/-- The normalized direct continuation is analytic at every positive real point,
including the reciprocal's removable center. -/
theorem normalizedPickupTransform_analytic_positive_real
    (t : ℝ) (ht : 0 < t) : AnalyticAt ℂ normalizedPickupTransform (t : ℂ) := by
  have hreg : AnalyticAt ℂ (fun w : ℂ ↦ ZeroEta.regularizedZeta (w + 1 / 2)) (t : ℂ) :=
    (ZeroEta.differentiable_regularizedZeta.analyticAt _).comp
      (analyticAt_id.add analyticAt_const)
  apply (analyticAt_id.sub analyticAt_const).div (analyticAt_id.mul hreg)
  apply mul_ne_zero (by change (t : ℂ) ≠ 0; exact_mod_cast ht.ne')
  simpa only [Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_one,
    Complex.ofReal_ofNat] using
    (regularizedZeta_ne_zero_positive_real (s := t + 1 / 2) (by linarith))

/-- An analytic upper correction is subtracted from the direct pickup, with
the sign required by a nonnegative density `correction - pickup`. -/
def correctedPickupTransform (H : ℂ → ℂ) (z : ℂ) : ℂ :=
  H z - normalizedPickupTransform z

/-- The direct transform keeps the complete finite analytic zero order. -/
theorem pickupTransform_order_at_zero
    {ρ : ℂ} (hρ : NontrivialZetaZero ρ) (hr : 1 / 2 < ρ.re) :
    meromorphicOrderAt pickupTransform (ρ - 1 / 2) =
      -((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
  have hc : ρ - (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hh := congrArg Complex.re h
    norm_num at hh
    linarith
  have hρ0 : ρ ≠ 0 := hρ.ne_zero
  have hg : AnalyticAt ℂ (fun z : ℂ ↦ z * (z + 1 / 2)) (ρ - 1 / 2) := by
    fun_prop
  have hgne : (ρ - 1 / 2) * ((ρ - 1 / 2) + 1 / 2) ≠ 0 := by
    simpa only [sub_add_cancel] using mul_ne_zero hc hρ0
  have horder :
      meromorphicOrderAt (fun z : ℂ ↦ z * (z + 1 / 2) * riemannZeta (z + 1 / 2))
          (ρ - 1 / 2) =
        ((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
    calc
      _ = meromorphicOrderAt (fun z : ℂ ↦ riemannZeta (z + 1 / 2)) (ρ - 1 / 2) :=
        meromorphicOrderAt_mul_of_ne_zero hg hgne
      _ = meromorphicOrderAt riemannZeta ρ := by
        simpa only [sub_add_cancel] using
          (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
            (f := riemannZeta) (x := ρ - 1 / 2) (c := 1 / 2))
      _ = ((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
        rw [(analyticOn_riemannZeta ρ hρ.2.2).meromorphicOrderAt_eq,
          ← Nat.cast_analyticOrderNatAt (zeta_order_finite hρ.2.2)]
        simp
  have hfun : pickupTransform =
      (fun z : ℂ ↦ (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))⁻¹) := by
    funext z
    simp only [pickupTransform, one_div]
  rw [hfun]
  change meromorphicOrderAt
      ((fun z : ℂ ↦ z * (z + 1 / 2) * riemannZeta (z + 1 / 2))⁻¹)
      (ρ - 1 / 2) = _
  rw [meromorphicOrderAt_inv, horder]

/-- Normalization at the zeta pole does not change a nontrivial-zero germ. -/
theorem normalizedPickupTransform_order_at_zero
    {ρ : ℂ} (hρ : NontrivialZetaZero ρ) (hr : 1 / 2 < ρ.re) :
    meromorphicOrderAt normalizedPickupTransform (ρ - 1 / 2) =
      meromorphicOrderAt pickupTransform (ρ - 1 / 2) := by
  apply meromorphicOrderAt_congr
  have hc : ρ - (1 / 2 : ℂ) ≠ 1 / 2 := by
    intro h
    apply hρ.2.2
    linear_combination h
  have hs : 0 < (ρ - (1 / 2 : ℂ)).re := by norm_num; linarith
  have hn : ∀ᶠ z : ℂ in 𝓝 (ρ - 1 / 2), 0 < z.re :=
    (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hs
  have hneq : ∀ᶠ z : ℂ in 𝓝 (ρ - 1 / 2), z ≠ 1 / 2 :=
    compl_singleton_mem_nhds_iff.mpr hc
  filter_upwards [hn.filter_mono nhdsWithin_le_nhds,
    hneq.filter_mono nhdsWithin_le_nhds] with z hz hh
  exact normalizedPickupTransform_eq hz hh

/-- Every actual right-half zero creates a strictly negative pickup pole order. -/
theorem pickupTransform_order_negative
    {ρ : ℂ} (hρ : NontrivialZetaZero ρ) (hr : 1 / 2 < ρ.re) :
    meromorphicOrderAt pickupTransform (ρ - 1 / 2) < 0 := by
  rw [pickupTransform_order_at_zero hρ hr]
  have hp := zeta_multiplicity_pos hρ
  exact_mod_cast neg_neg_of_pos (show (0 : ℤ) < analyticOrderNatAt riemannZeta ρ by
    exact_mod_cast hp)

/-- A finite analytic correction leaves every right-half pickup pole unchanged. -/
theorem correctedPickupTransform_order_at_zero
    {H : ℂ → ℂ} {ρ : ℂ} (hρ : NontrivialZetaZero ρ) (hr : 1 / 2 < ρ.re)
    (hH : AnalyticAt ℂ H (ρ - 1 / 2)) :
    meromorphicOrderAt (correctedPickupTransform H) (ρ - 1 / 2) =
      meromorphicOrderAt pickupTransform (ρ - 1 / 2) := by
  have hn := pickupTransform_order_negative hρ hr
  have hneg :
      meromorphicOrderAt (fun z ↦ -normalizedPickupTransform z) (ρ - 1 / 2) =
        meromorphicOrderAt pickupTransform (ρ - 1 / 2) :=
    meromorphicOrderAt_fun_neg.symm.trans (normalizedPickupTransform_order_at_zero hρ hr)
  have hsum := meromorphicOrderAt_add_eq_left_of_lt hH.meromorphicAt
    (show meromorphicOrderAt (fun z ↦ -normalizedPickupTransform z) (ρ - 1 / 2) <
      meromorphicOrderAt H (ρ - 1 / 2) from
        by rw [hneg]; exact hn.trans_le hH.meromorphicOrderAt_nonneg)
  have heq : correctedPickupTransform H =
      (fun z ↦ -normalizedPickupTransform z) + H := by
    funext z
    simp only [correctedPickupTransform, Pi.add_apply, sub_eq_add_neg, add_comm]
  rw [heq]
  exact hsum.trans hneg

/-- A positive-Laplace continuation of the corrected direct pickup excludes all
right-half nontrivial zeros. Each analytic/source premise is explicit. -/
theorem no_right_zero_of_positive_laplace_return
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω) (X : Ω → ℝ)
    (H : ℂ → ℂ)
    (hXm : AEMeasurable X μ) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (hH : ∀ z : ℂ, 0 < z.re → AnalyticAt ℂ H z)
    (hinit : ∀ z : ℂ, 1 < z.re →
      correctedPickupTransform H z = transform X μ z)
    {ρ : ℂ} (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 := by
  by_contra hn
  have hr : 1 / 2 < ρ.re := lt_of_not_ge hn
  have hs : 0 < (ρ - (1 / 2 : ℂ)).re := by
    norm_num
    linarith
  have hmero : MeromorphicOn (correctedPickupTransform H) {z : ℂ | 0 < z.re} := by
    intro z hz
    exact (hH z hz).meromorphicAt.sub (normalizedPickupTransform_meromorphic z)
  have hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ (correctedPickupTransform H) (t : ℂ) := by
    intro t ht
    exact (hH (t : ℂ) (by simpa using ht)).sub
      (normalizedPickupTransform_analytic_positive_real t ht)
  have hnonneg := order_nonneg_of_continuation hXm hX hconv
    (correctedPickupTransform H) hmero hreal hinit (ρ - 1 / 2) hs
  rw [correctedPickupTransform_order_at_zero hρ hr (hH _ hs)] at hnonneg
  exact not_le_of_gt (pickupTransform_order_negative hρ hr) hnonneg

/-- Exact functional-equation reflection turns the conditional direct Landau
return into Mathlib's literal RH proposition. This supplies no arithmetic bound. -/
theorem riemann_hypothesis_of_positive_laplace_return
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω) (X : Ω → ℝ)
    (H : ℂ → ℂ)
    (hXm : AEMeasurable X μ) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (hH : ∀ z : ℂ, 0 < z.re → AnalyticAt ℂ H z)
    (hinit : ∀ z : ℂ, 1 < z.re →
      correctedPickupTransform H z = transform X μ z) :
    _root_.RiemannHypothesis := by
  intro ρ hzero htrivial hone
  have hρ : NontrivialZetaZero ρ := ⟨hzero, htrivial, hone⟩
  have hr := no_right_zero_of_positive_laplace_return
    μ X H hXm hX hconv hH hinit hρ
  have hl := no_right_zero_of_positive_laplace_return
    μ X H hXm hX hconv hH hinit hρ.reflect
  simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hl
  linarith

/-- Lebesgue measure on the original nonnegative time half-line. -/
def pickupTimeMeasure : Measure ℝ := volume.restrict (Ioi 0)

/-- The exact nonnegative density supplied by a global polynomial upper bound. -/
def polynomialPickupDensity (W : ℝ → ℝ) (C : ℝ) (m : ℕ) (t : ℝ) : ℝ :=
  C * (1 + t) ^ m - W t

/-- The positive measure retains the actual pickup through its complete density. -/
def polynomialPickupMeasure (W : ℝ → ℝ) (C : ℝ) (m : ℕ) : Measure ℝ :=
  pickupTimeMeasure.withDensity
    (fun t ↦ ENNReal.ofReal (polynomialPickupDensity W C m t))

/-- A global polynomial upper bound is converted into a positive measure and
the direct Landau return. The two genuine source-integral premises remain
explicit: initial weighted integrability and the actual corrected transform.
No finite sample or bound for a different pickup can satisfy this interface. -/
theorem riemann_hypothesis_of_polynomial_pickup_and_initial_transform
    (W : ℝ → ℝ) (C : ℝ) (m : ℕ) (H : ℂ → ℂ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ m)
    (hH : ∀ z : ℂ, 0 < z.re → AnalyticAt ℂ H z)
    (hweighted : ∀ z : ℂ, 1 < z.re →
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ)) pickupTimeMeasure)
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ) ∂pickupTimeMeasure) =
        H z - pickupTransform z) :
    _root_.RiemannHypothesis := by
  have hdcont : Continuous (polynomialPickupDensity W C m) := by
    unfold polynomialPickupDensity
    fun_prop
  have hdm : AEMeasurable
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity W C m t)) pickupTimeMeasure :=
    hdcont.aemeasurable.ennreal_ofReal
  have hdtop : ∀ᵐ t ∂pickupTimeMeasure,
      ENNReal.ofReal (polynomialPickupDensity W C m t) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  have hdreal : ∀ᵐ t ∂pickupTimeMeasure,
      (ENNReal.ofReal (polynomialPickupDensity W C m t)).toReal =
        polynomialPickupDensity W C m t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact ENNReal.toReal_ofReal (sub_nonneg.mpr (hupper t ht.le))
  have hpos : ∀ᵐ t ∂polynomialPickupMeasure W C m, 0 ≤ (id t : ℝ) := by
    have hs : ∀ᵐ t ∂pickupTimeMeasure, 0 < t := ae_restrict_mem measurableSet_Ioi
    have hp : ∀ᵐ t ∂polynomialPickupMeasure W C m, 0 < t :=
      (withDensity_absolutelyContinuous pickupTimeMeasure
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity W C m t))).ae_le hs
    exact hp.mono (fun t ht ↦ ht.le)
  have heint (z : ℂ) (hz : 1 < z.re) :
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t))
        (polynomialPickupMeasure W C m) := by
    apply (integrable_withDensity_iff_integrable_smul₀' hdm hdtop).mpr
    apply (hweighted z hz).congr
    filter_upwards [hdreal] with t ht
    rw [ht, Complex.real_smul]
    exact mul_comm _ _
  apply riemann_hypothesis_of_positive_laplace_return
    (polynomialPickupMeasure W C m) id H (by fun_prop) hpos ?_ hH ?_
  · intro t ht
    have hi := (heint (t : ℂ) (by simpa using ht)).norm
    simpa only [Complex.norm_exp, Complex.mul_re, Complex.neg_re,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, mul_zero, sub_zero,
      id_eq] using hi
  · intro z hz
    have heq :
        transform id (polynomialPickupMeasure W C m) z =
          H z - pickupTransform z := by
      rw [transform, complexMGF, polynomialPickupMeasure,
        integral_withDensity_eq_integral_toReal_smul₀ hdm hdtop]
      calc
        _ = ∫ t : ℝ, Complex.exp (-z * t) *
              (polynomialPickupDensity W C m t : ℂ) ∂pickupTimeMeasure := by
          apply integral_congr_ae
          filter_upwards [hdreal] with t ht
          rw [ht, Complex.real_smul]
          exact mul_comm _ _
        _ = _ := hformula z hz
    rw [correctedPickupTransform, normalizedPickupTransform_eq_initial hz]
    exact heq.symm

/-- Every integer polynomial correction has genuine real exponential moments
at every positive parameter. -/
theorem polynomial_correction_real_integrable
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (s : ℝ) (hs : 0 < s) :
    Integrable (fun t : ℝ ↦ C * (1 + t) ^ m * Real.exp (-s * t)) pickupTimeMeasure := by
  have hzero := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (0 : ℝ)) (p := (1 : ℝ)) (b := s) (by norm_num) zero_lt_one hs
  have hpow := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (m : ℝ)) (p := (1 : ℝ)) (b := s)
    (by have := Nat.cast_nonneg (α := ℝ) m; linarith) zero_lt_one hs
  simp only [Real.rpow_zero, Real.rpow_one, one_mul] at hzero
  simp only [Real.rpow_natCast, Real.rpow_one] at hpow
  have hmajor := (hzero.add hpow).const_mul (C * 2 ^ (m - 1))
  apply hmajor.mono' (by fun_prop)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := ht.le
  rw [Real.norm_of_nonneg (by positivity)]
  have hpoly := add_pow_le (show (0 : ℝ) ≤ 1 by norm_num) ht.le m
  simp only [one_pow] at hpoly
  calc
    C * (1 + t) ^ m * Real.exp (-s * t) ≤
        C * (2 ^ (m - 1) * (1 + t ^ m)) * Real.exp (-s * t) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hpoly hC) (Real.exp_pos _).le
    _ = (C * 2 ^ (m - 1)) * (Real.exp (-s * t) + t ^ m * Real.exp (-s * t)) := by ring

/-- The complex polynomial correction is initially integrable and, in fact,
integrable on the full positive half-plane. -/
theorem polynomial_correction_complex_integrable
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (z : ℂ) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ Complex.exp (-z * t) *
      (C * (1 + t) ^ m : ℝ)) pickupTimeMeasure := by
  apply (integrable_norm_iff (by fun_prop)).mp
  apply (polynomial_correction_real_integrable C hC m z.re hz).congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := ht.le
  have hco : ‖((C * (1 + t) ^ m : ℝ) : ℂ)‖ = C * (1 + t) ^ m := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (mul_nonneg hC (pow_nonneg (by linarith) m))]
  rw [norm_mul, hco, Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero]
  exact mul_comm _ _

/-- The actual polynomial correction transform, defined by its genuine integral. -/
def polynomialCorrectionTransform (C : ℝ) (m : ℕ) (z : ℂ) : ℂ :=
  ∫ t : ℝ, Complex.exp (-z * t) * (C * (1 + t) ^ m : ℝ) ∂pickupTimeMeasure

/-- A positive polynomial density represents the correction transform exactly. -/
theorem polynomialCorrectionTransform_eq_measure
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (z : ℂ) :
    polynomialCorrectionTransform C m z =
      transform id (polynomialPickupMeasure (fun _ ↦ 0) C m) z := by
  have hdm : AEMeasurable
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity (fun _ ↦ 0) C m t)) pickupTimeMeasure := by
    apply AEMeasurable.ennreal_ofReal
    apply Continuous.aemeasurable
    unfold polynomialPickupDensity
    fun_prop
  have hdtop : ∀ᵐ t ∂pickupTimeMeasure,
      ENNReal.ofReal (polynomialPickupDensity (fun _ ↦ 0) C m t) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  rw [transform, complexMGF, polynomialPickupMeasure,
    integral_withDensity_eq_integral_toReal_smul₀ hdm hdtop]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := ht.le
  have hnonneg : 0 ≤ polynomialPickupDensity (fun _ ↦ 0) C m t := by
    simp only [polynomialPickupDensity, sub_zero]
    exact mul_nonneg hC (pow_nonneg (by linarith) m)
  rw [ENNReal.toReal_ofReal hnonneg, Complex.real_smul]
  simp only [polynomialPickupDensity, sub_zero, id_eq]
  exact mul_comm _ _

/-- The correction transform is analytic throughout the positive half-plane,
proved from its actual positive polynomial measure and genuine moments. -/
theorem polynomialCorrectionTransform_analytic
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (z : ℂ) (hz : 0 < z.re) :
    AnalyticAt ℂ (polynomialCorrectionTransform C m) z := by
  have hdm : AEMeasurable
      (fun t ↦ ENNReal.ofReal (polynomialPickupDensity (fun _ ↦ 0) C m t)) pickupTimeMeasure := by
    apply AEMeasurable.ennreal_ofReal
    apply Continuous.aemeasurable
    unfold polynomialPickupDensity
    fun_prop
  have hdtop : ∀ᵐ t ∂pickupTimeMeasure,
      ENNReal.ofReal (polynomialPickupDensity (fun _ ↦ 0) C m t) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  have hconv (s : ℝ) (hs : 0 < s) :
      Integrable (fun t : ℝ ↦ Real.exp (-s * id t))
        (polynomialPickupMeasure (fun _ ↦ 0) C m) := by
    apply (integrable_withDensity_iff_integrable_smul₀' hdm hdtop).mpr
    apply (polynomial_correction_real_integrable C hC m s hs).congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 ≤ t := ht.le
    have hnonneg : 0 ≤ polynomialPickupDensity (fun _ ↦ 0) C m t := by
      simp only [polynomialPickupDensity, sub_zero]
      exact mul_nonneg hC (pow_nonneg (by linarith) m)
    rw [ENNReal.toReal_ofReal hnonneg]
    simp only [polynomialPickupDensity, sub_zero, id_eq, smul_eq_mul]
  have heq : polynomialCorrectionTransform C m =
      transform id (polynomialPickupMeasure (fun _ ↦ 0) C m) :=
    funext (polynomialCorrectionTransform_eq_measure C hC m)
  rw [heq]
  exact transform_analytic 0 hconv z hz

/-- Integer polynomial control of the actual pickup implies RH once the exact
initial direct pickup Laplace identity and its genuine integrability are supplied.
The polynomial correction, positive density and Landau continuation are proved. -/
theorem riemann_hypothesis_of_polynomial_pickup
    (W : ℝ → ℝ) (C : ℝ) (hC : 0 ≤ C) (m : ℕ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ m)
    (hweighted : ∀ z : ℂ, 1 < z.re →
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) pickupTimeMeasure)
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = pickupTransform z) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_of_polynomial_pickup_and_initial_transform
    W C m (polynomialCorrectionTransform C m) hW hupper
    (polynomialCorrectionTransform_analytic C hC m) ?_ ?_
  · intro z hz
    have hp := polynomial_correction_complex_integrable C hC m z (by linarith)
    apply (hp.sub (hweighted z hz)).congr
    exact Eventually.of_forall (fun t ↦ by
      simp [polynomialPickupDensity, Complex.ofReal_sub, mul_sub])
  · intro z hz
    have hp := polynomial_correction_complex_integrable C hC m z (by linarith)
    have heq : (fun t : ℝ ↦ Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ)) =
        (fun t : ℝ ↦ Complex.exp (-z * t) * (C * (1 + t) ^ m : ℝ)) -
          (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) := by
      funext t
      simp [polynomialPickupDensity, Complex.ofReal_sub, mul_sub]
    rw [heq]
    change (∫ t : ℝ, Complex.exp (-z * t) * (C * (1 + t) ^ m : ℝ) -
      Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = _
    rw [integral_sub hp (hweighted z hz), hformula z hz]
    rfl

/-- A fixed real polynomial exponent is enlarged once to a fixed natural degree;
all constants remain independent of time. -/
theorem riemann_hypothesis_of_real_polynomial_pickup
    (W : ℝ → ℝ) (C : ℝ) (hC : 0 ≤ C) (p : ℝ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ p)
    (hweighted : ∀ z : ℂ, 1 < z.re →
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) pickupTimeMeasure)
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = pickupTransform z) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_of_polynomial_pickup W C hC ⌈p⌉₊ hW ?_ hweighted hformula
  intro t ht
  apply (hupper t ht).trans
  apply mul_le_mul_of_nonneg_left ?_ hC
  rw [← Real.rpow_natCast]
  exact Real.rpow_le_rpow_of_exponent_le (by linarith) (Nat.le_ceil p)

/-- The elementary pickup growth bound pays genuine initial Laplace
integrability; this leaf requires no signed cancellation. -/
theorem pickup_initial_integrable_of_growth
    (W : ℝ → ℝ) (hW : Continuous W)
    (hgrowth : ∀ t : ℝ, 0 ≤ t → |W t| ≤ 2 * Real.exp (t / 2))
    (z : ℂ) (hz : 1 < z.re) :
    Integrable (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) pickupTimeMeasure := by
  have hmajor := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (0 : ℝ)) (p := (1 : ℝ)) (b := z.re - 1 / 2)
    (by norm_num) zero_lt_one (by linarith)
  simp only [Real.rpow_zero, Real.rpow_one, one_mul] at hmajor
  apply (hmajor.const_mul 2).mono' (by fun_prop)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  calc
    ‖Complex.exp (-z * t) * (W t : ℂ)‖ = Real.exp (-z.re * t) * |W t| := by
      simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ Real.exp (-z.re * t) * (2 * Real.exp (t / 2)) :=
      mul_le_mul_of_nonneg_left (hgrowth t ht.le) (Real.exp_pos _).le
    _ = 2 * Real.exp (-(z.re - 1 / 2) * t) := by
      rw [← mul_assoc, mul_comm (Real.exp (-z.re * t)) 2, mul_assoc, ← Real.exp_add]
      congr 2
      ring

/-- Final generic adapter: real polynomial upper pickup control, the elementary
absolute growth bound and the exact initial direct transform imply literal RH.
Only the direct source-transform identity remains an analytic source premise. -/
theorem riemann_hypothesis_of_real_polynomial_pickup_and_direct_identity
    (W : ℝ → ℝ) (C : ℝ) (hC : 0 ≤ C) (p : ℝ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ p)
    (hgrowth : ∀ t : ℝ, 0 ≤ t → |W t| ≤ 2 * Real.exp (t / 2))
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = pickupTransform z) :
    _root_.RiemannHypothesis :=
  riemann_hypothesis_of_real_polynomial_pickup W C hC p hW hupper
    (pickup_initial_integrable_of_growth W hW hgrowth) hformula

end
end GRWTSK.RiemannHypothesis.Conversation.SupplierLandauReturn
