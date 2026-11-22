/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.FunctionalAnalysis.KernelIntegrationByParts
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeCharacterProperties
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelGamma
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelEnclosure
import Mathlib.Analysis.Calculus.Deriv.Star

/-!
# Return of the conductor-three integrated kernel to its arithmetic source

The input is a globally C1 compactly supported complex function. Half-line
FTC identifies the absolute and hinge kernels, while the actual integrable
gamma interchange identifies the archimedean correction. The native
quadratic character's conductor, parity and real-valuedness are proved.

The interval return uses the support of the derivative. The finite error is
therefore the energy of the derivative. No physical Green-metric comparison,
arithmetic lower sign, explicit-formula identification or GRH is asserted.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur
open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.FunctionalAnalysis.KernelIntegrationByParts
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- C1 compact tests have an actual integrable derivative. -/
theorem integrable_deriv_of_compactC1 {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    Integrable (deriv f) volume :=
  (hf.continuous_deriv le_rfl).integrable_of_hasCompactSupport hc.deriv

/-- The same derivative has finite squared-norm energy. -/
theorem integrable_deriv_sq_of_compactC1 {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    Integrable (fun x => ‖deriv f x‖ ^ 2) volume := by
  have hLp : MemLp (deriv f) 2 volume :=
    (hf.continuous_deriv le_rfl).memLp_of_hasCompactSupport hc.deriv
  exact hLp.integrable_norm_pow (p := 2) (by norm_num)

private theorem correlation_zero_local (f : ℝ → ℂ) :
    correlation f 0 = (energy f : ℂ) := by
  have hp (t : ℝ) : conj (f t) * f t = ((‖f t‖ ^ 2 : ℝ) : ℂ) := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  unfold correlation energy
  simp_rw [add_zero, hp]
  exact integral_ofReal

private theorem reversed_correlation (f : ℝ → ℂ) (r : ℝ) :
    (∫ y, conj (f (y + r)) * f y) = conj (correlation f r) := by
  unfold correlation
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards with y
  simp [mul_comm]

/-- The usual complex translation-energy identity on the original source
functions. This reuses the elementary expansion recorded in the historical
gamma and sine modules, without importing their larger analytic closures. -/
theorem shift_energy_eq {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    energy (fun t => f (t + r) - f t) =
      2 * energy f - 2 * (correlation f r).re := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) volume :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hcorr := integrable_correlation_integrand hf r
  have hreal : Integrable (fun t : ℝ => (conj (f t) * f (t + r)).re) volume :=
    hcorr.re
  have hpoint (t : ℝ) :
      ‖f (t + r) - f t‖ ^ 2 =
        ‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2 -
          2 * (conj (f t) * f (t + r)).re := by
    calc
      _ = Complex.normSq (f (t + r) - f t) := (Complex.normSq_eq_norm_sq _).symm
      _ = Complex.normSq (f (t + r)) + Complex.normSq (f t) -
          2 * (f (t + r) * conj (f t)).re := Complex.normSq_sub _ _
      _ = _ := by
        rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq,
          mul_comm (f (t + r)) (conj (f t))]
  calc
    energy (fun t => f (t + r) - f t) =
        ∫ t : ℝ, (‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2 -
          2 * (conj (f t) * f (t + r)).re) := by
      unfold energy
      exact integral_congr_ae (Filter.Eventually.of_forall hpoint)
    _ = (∫ t : ℝ, ‖f (t + r)‖ ^ 2) + (∫ t : ℝ, ‖f t‖ ^ 2) -
        2 * (∫ t : ℝ, (conj (f t) * f (t + r)).re) := by
      have hi := integral_sub (hshift.add hsq) (hreal.const_mul 2)
      simpa only [Pi.add_apply, integral_add hshift hsq, integral_const_mul] using hi
    _ = 2 * energy f - 2 * (correlation f r).re := by
      have hre := integral_re hcorr
      simp only [RCLike.re_to_complex] at hre
      rw [integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r, hre]
      unfold energy correlation
      ring

private theorem kernelForm_neg_local (K : ℝ → ℝ → ℂ) (u : ℝ → ℂ) :
    kernelForm volume (fun x y => -K x y) u u = -kernelForm volume K u u := by
  unfold kernelForm
  rw [← integral_neg]
  apply integral_congr_ae
  filter_upwards with p
  simp [integrand]

/-- The actual whole-line hinge pairing retains both conjugate orientations. -/
theorem kernelForm_hinge_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    {r : ℝ} (hr : 0 ≤ r) :
    kernelForm volume (fun x y => ((max (|x - y| - r) 0 : ℝ) : ℂ))
      (deriv f) (deriv f) = ((-2 * (correlation f r).re : ℝ) : ℂ) := by
  have hfc : ContDiff ℝ 1 (fun x => conj (f x)) :=
    Complex.conjCLE.contDiff.comp hf
  have hcc : HasCompactSupport (fun x => conj (f x)) := hc.comp_left (map_zero _)
  have hd : deriv (fun x => conj (f x)) = fun x => conj (deriv f x) := by
    funext x
    exact deriv.star
  have h := integral_hinge_deriv_product hfc hf hcc hc hr
  rw [hd, reversed_correlation] at h
  change kernelForm volume (fun x y => ((max (|x - y| - r) 0 : ℝ) : ℂ))
    (deriv f) (deriv f) = -conj (correlation f r) - correlation f r at h
  rw [h]
  apply Complex.ext
  · simp
    ring
  · simp

/-- The absolute-value kernel returns minus twice the original energy. -/
theorem kernelForm_abs_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    kernelForm volume (fun x y => ((|x - y| : ℝ) : ℂ)) (deriv f) (deriv f) =
      ((-2 * energy f : ℝ) : ℂ) := by
  have h := kernelForm_hinge_deriv hf hc (r := 0) le_rfl
  have hmax : ∀ t : ℝ, max |t| 0 = |t| := fun t => max_eq_left (abs_nonneg t)
  simpa only [sub_zero, hmax, correlation_zero_local,
    Complex.ofReal_re] using h

/-- The negative minimum kernel returns the actual translated squared norm. -/
theorem kernelForm_neg_minimum_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    {r : ℝ} (hr : 0 ≤ r) :
    kernelForm volume (fun x y => -minimumKernel r x y) (deriv f) (deriv f) =
      (energy (fun t => f (t + r) - f t) : ℂ) := by
  have hfc : ContDiff ℝ 1 (fun x => conj (f x)) :=
    Complex.conjCLE.contDiff.comp hf
  have hcc : HasCompactSupport (fun x => conj (f x)) := hc.comp_left (map_zero _)
  have hd : deriv (fun x => conj (f x)) = fun x => conj (deriv f x) := by
    funext x
    exact deriv.star
  have h := integral_min_deriv_product hfc hf hcc hc hr
  rw [hd, reversed_correlation] at h
  have hzero : (∫ x, conj (f x) * f x) = (energy f : ℂ) := by
    simpa only [correlation, add_zero] using correlation_zero_local f
  rw [hzero] at h
  change kernelForm volume (minimumKernel r) (deriv f) (deriv f) =
    -2 * (energy f : ℂ) + conj (correlation f r) + correlation f r at h
  rw [kernelForm_neg_local, h, shift_energy_eq (hf.continuous.memLp_of_hasCompactSupport hc)]
  apply Complex.ext
  · simp
    ring
  · simp

/-- Integrability of the original gamma density is derived from the actual
triple-integral majorant and the minimum-kernel identity. -/
theorem integrable_gammaCorrectionDensity_of_compactC1 {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    IntegrableOn (gammaCorrectionDensity 1 f) (Ioi (0 : ℝ)) := by
  have hi := (integrable_gammaKernelForms (deriv f)
    (integrable_deriv_of_compactC1 hf hc)).neg.re
  apply hi.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have h := kernelForm_neg_minimum_deriv hf hc hr.le
  rw [kernelForm_neg_local] at h
  have heq : -((parityKernel 1 r : ℂ) *
      kernelForm volume (minimumKernel r) (deriv f) (deriv f)) =
      ((gammaCorrectionDensity 1 f r : ℝ) : ℂ) := by
    rw [neg_mul_eq_mul_neg, h]
    simp only [gammaCorrectionDensity, Complex.ofReal_mul]
  exact congrArg Complex.re heq

/-- The complete signed gamma contribution returns to the original
arithmetic gamma integral, with no omitted positive-lag range. -/
theorem kernelForm_gamma_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    kernelForm volume (fun x y => -integratedGammaKernel x y) (deriv f) (deriv f) =
      ((∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 f r) : ℝ) := by
  rw [kernelForm_neg_integratedGammaKernel (deriv f) (integrable_deriv_of_compactC1 hf hc)]
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [kernelForm_neg_minimum_deriv hf hc hr.le]
  simp only [gammaCorrectionDensity, Complex.ofReal_mul]

private theorem integrable_continuousKernel_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (K : ℝ → ℝ → ℂ) (hK : Continuous (fun p : ℝ × ℝ => K p.1 p.2)) :
    Integrable (integrand K (deriv f) (deriv f)) (volume.prod volume) := by
  exact integrable_kernel_product
    (Complex.continuous_conj.comp (hf.continuous_deriv le_rfl))
    (hf.continuous_deriv le_rfl) hK
    (hc.deriv.comp_left (map_zero _)) hc.deriv

private theorem continuous_primeHinges_local : Continuous primeHinges := by
  have heq : primeHinges = fun t => ∑ n ∈ activePrimePowers 4,
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|t| - Real.log (n : ℝ)) 0 := funext primeHinges_eq_sum
  rw [heq]
  fun_prop

/-- The complete finite signed prime contribution returns to the literal
prime term, including its original cutoff and every character coefficient. -/
theorem kernelForm_prime_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    kernelForm volume (fun x y => (primeHinges (x - y) : ℂ))
      (deriv f) (deriv f) =
        ((-twistedPrime 4 modThreeQuadratic
          (fun n => correlation f (Real.log (n : ℝ))) : ℝ) : ℂ) := by
  let b : ℕ → ℂ := fun n => (primeWeight n * (conj (modThreeQuadratic n)).re : ℝ)
  let H : ℕ → ℝ → ℝ → ℂ := fun n x y =>
    ((max (|x - y| - Real.log (n : ℝ)) 0 : ℝ) : ℂ)
  have hi (n : ℕ) : Integrable
      (fun p : ℝ × ℝ => b n * integrand (H n) (deriv f) (deriv f) p)
      (volume.prod volume) := by
    apply (integrable_continuousKernel_deriv hf hc (H n) ?_).const_mul
    dsimp [H]
    fun_prop
  have heq : integrand (fun x y => (primeHinges (x - y) : ℂ)) (deriv f) (deriv f) =
      fun p => ∑ n ∈ activePrimePowers 4,
        b n * integrand (H n) (deriv f) (deriv f) p := by
    funext p
    simp only [integrand, primeHinges_eq_sum, Complex.ofReal_sum, Complex.ofReal_mul,
      Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    dsimp [b, H]
    push_cast
    ring
  unfold kernelForm
  rw [heq, integral_finsetSum _ (fun n _ => hi n)]
  simp_rw [integral_const_mul]
  change (∑ n ∈ activePrimePowers 4,
    b n * kernelForm volume (H n) (deriv f) (deriv f)) = _
  have hforms : ∀ n ∈ activePrimePowers (4 : ℝ),
      kernelForm volume (H n) (deriv f) (deriv f) =
        ((-2 * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ) := by
    intro n hn
    have hn2 : 2 ≤ n := (Finset.mem_filter.mp hn).2.1
    apply kernelForm_hinge_deriv hf hc
    exact Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))
  have hsum : (∑ n ∈ activePrimePowers (4 : ℝ),
      b n * kernelForm volume (H n) (deriv f) (deriv f)) =
      ∑ n ∈ activePrimePowers (4 : ℝ),
        b n * ((-2 * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ) := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [hforms n hn]
  rw [hsum]
  rw [modThreeQuadratic_twistedPrime_eq]
  simp only [b, Complex.ofReal_neg, Complex.ofReal_mul, Complex.ofReal_ofNat,
    Complex.ofReal_sum]
  rw [Finset.mul_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The source integrand is genuinely integrable on the whole product
space for a compact C1 test; the gamma part uses its proved L1 bound. -/
theorem integrable_sourceKernel_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    Integrable (integrand sourceConvolutionKernel (deriv f) (deriv f))
      (volume.prod volume) := by
  have ha := integrable_continuousKernel_deriv hf hc
    (fun x y => ((|x - y| : ℝ) : ℂ)) (by fun_prop)
  have hg := integrable_integratedGammaKernel (deriv f) (integrable_deriv_of_compactC1 hf hc)
  have hp := integrable_continuousKernel_deriv hf hc
    (fun x y => (primeHinges (x - y) : ℂ))
    (Complex.continuous_ofReal.comp (continuous_primeHinges_local.comp
      (continuous_fst.sub continuous_snd)))
  apply (((ha.const_mul (-(gammaConstant 3 1 : ℂ) / 2)).sub hg).add hp).congr
  filter_upwards with p
  simp only [Pi.add_apply, Pi.sub_apply, integrand, sourceConvolutionKernel, sourceKernel,
    integratedGammaKernel,
    Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_div, Complex.ofReal_mul,
    Complex.ofReal_neg, Complex.ofReal_ofNat]
  ring

/-- The whole-line source identity uses the actual primitive character and
every original arithmetic term. No positivity hypothesis is used. -/
theorem wholeline_sourceKernel_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    kernelForm volume sourceConvolutionKernel (deriv f) (deriv f) =
      ((primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f : ℝ) : ℂ) := by
  let A : ℝ → ℝ → ℂ := fun x y => ((|x - y| : ℝ) : ℂ)
  let P : ℝ → ℝ → ℂ := fun x y => (primeHinges (x - y) : ℂ)
  let c : ℂ := -(gammaConstant 3 1 : ℂ) / 2
  have ha := integrable_continuousKernel_deriv hf hc A (by dsimp [A]; fun_prop)
  have hg := integrable_integratedGammaKernel (deriv f) (integrable_deriv_of_compactC1 hf hc)
  have hp := integrable_continuousKernel_deriv hf hc P
    (Complex.continuous_ofReal.comp (continuous_primeHinges_local.comp
      (continuous_fst.sub continuous_snd)))
  have heq : integrand sourceConvolutionKernel (deriv f) (deriv f) = fun p =>
      c * integrand A (deriv f) (deriv f) p -
        integrand integratedGammaKernel (deriv f) (deriv f) p +
        integrand P (deriv f) (deriv f) p := by
    funext p
    simp only [integrand, sourceConvolutionKernel, sourceKernel, integratedGammaKernel,
      A, P, c, Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_div,
      Complex.ofReal_mul, Complex.ofReal_neg, Complex.ofReal_ofNat]
    ring
  unfold kernelForm
  have hcg : Integrable (fun p => c * integrand A (deriv f) (deriv f) p -
      integrand integratedGammaKernel (deriv f) (deriv f) p) (volume.prod volume) := by
    apply ((ha.const_mul c).sub hg).congr
    filter_upwards with p
    simp only [Pi.sub_apply]
  rw [heq, integral_add hcg hp,
    integral_sub (ha.const_mul c) hg, integral_const_mul]
  change c * kernelForm volume A (deriv f) (deriv f) -
    kernelForm volume integratedGammaKernel (deriv f) (deriv f) +
    kernelForm volume P (deriv f) (deriv f) = _
  rw [show A = (fun x y => ((|x - y| : ℝ) : ℂ)) from rfl,
    show P = (fun x y => (primeHinges (x - y) : ℂ)) from rfl,
    kernelForm_abs_deriv hf hc, kernelForm_prime_deriv hf hc,
    sub_eq_add_neg, ← kernelForm_neg_local integratedGammaKernel (deriv f),
    kernelForm_gamma_deriv hf hc]
  simp only [primitiveArithmeticValue, modThreeQuadratic_gammaParity, c,
    Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_mul,
    Complex.ofReal_neg, Complex.ofReal_ofNat]
  ring

/-- Support of the original function forces the derivative to vanish
outside the same closed source window. -/
theorem deriv_eq_zero_outside_window {f : ℝ → ℂ}
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) {x : ℝ} (hx : x ∉ Icc (-4 : ℝ) 4) :
    deriv f x = 0 :=
  deriv_of_notMem_tsupport (fun h => hx (hs h))

/-- The restricted interval pairing equals the whole-line pairing of the
same derivative, with no extension or boundary term left implicit. -/
theorem sourceKernelForm_deriv_eq_wholeline {f : ℝ → ℂ}
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    sourceKernelForm (deriv f) =
      kernelForm volume sourceConvolutionKernel (deriv f) (deriv f) := by
  unfold sourceKernelForm kernelForm
  change (∫ p, integrand sourceConvolutionKernel (deriv f) (deriv f) p
    ∂(volume.restrict (Icc (-4 : ℝ) 4)).prod (volume.restrict (Icc (-4 : ℝ) 4))) = _
  rw [Measure.prod_restrict]
  apply setIntegral_eq_integral_of_forall_compl_eq_zero
  intro p hp
  by_cases hx : p.1 ∈ Icc (-4 : ℝ) 4
  · have hy : p.2 ∉ Icc (-4 : ℝ) 4 := fun hy => hp ⟨hx, hy⟩
    simp [integrand, deriv_eq_zero_outside_window hs hy]
  · simp [integrand, deriv_eq_zero_outside_window hs hx]

/-- The original primitive arithmetic expression is the real part of the
maintained radius-four source kernel on the derivative carrier. -/
theorem arithmeticValue_eq_sourceKernelForm {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
      modThreeQuadratic_nonprincipal 4 f = (sourceKernelForm (deriv f)).re := by
  rw [sourceKernelForm_deriv_eq_wholeline hs, wholeline_sourceKernel_deriv hf hc]
  rfl

/-- The approximation price is exactly the whole-line derivative energy
because the derivative vanishes outside the recorded window. -/
theorem window_deriv_energy_eq {f : ℝ → ℂ}
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    (∫ x, ‖deriv f x‖ ^ 2 ∂kernelWindow) = energy (deriv f) := by
  apply setIntegral_eq_integral_of_forall_compl_eq_zero
  intro x hx
  simp [deriv_eq_zero_outside_window hs hx]

/-- Compact-support FTC supplies the genuine derivative mean-zero condition. -/
theorem integral_deriv_eq_zero_of_compactC1 {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    (∫ x : ℝ, deriv f x) = 0 := by
  have hi := integrable_deriv_of_compactC1 hf hc
  have h := intervalIntegral.integral_Iic_add_Ioi (b := (0 : ℝ))
    hi.integrableOn hi.integrableOn
  rw [HasCompactSupport.integral_Iic_deriv_eq hf hc,
    HasCompactSupport.integral_Ioi_deriv_eq hf hc] at h
  simpa only [add_neg_cancel] using h.symm

/-- Exact finite derivative coordinates preserve the original mean-zero
condition; no numerical constraint is substituted for the integral identity. -/
theorem sum_derivativeCellMoments_eq_zero (N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    (∑ i, featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f) i) = 0 := by
  have hi : Integrable (deriv f) kernelWindow :=
    (integrable_deriv_of_compactC1 hf hc).integrableOn
  rw [sum_featureMoment_cellFeature (gridCell N) (deriv f) (gridCell_measurableSet N) hi]
  have hw : (∫ x, deriv f x ∂kernelWindow) = ∫ x : ℝ, deriv f x := by
    apply setIntegral_eq_integral_of_forall_compl_eq_zero
    intro x hx
    exact deriv_eq_zero_outside_window hs hx
  rw [hw, integral_deriv_eq_zero_of_compactC1 hf hc]

/-- The accepted finite enclosure now returns to the original arithmetic
form with its exact packet metric and complete derivative-energy error. -/
theorem checked_arithmeticValue_lower {ν : Type*} [Fintype ν]
    (M N : ℕ) (P : Packet (Fin (N + 1) ⊕ Fin (N + 1)))
    (C : Certificate ℚ (Fin (N + 1) ⊕ Fin (N + 1)) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hencloses : Encloses P (realification (complexSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
      (splitVector (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))) -
      (8 * kernelApproximationBudget M N) * energy (deriv f) ≤
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
          modThreeQuadratic_nonprincipal 4 f := by
  rw [arithmeticValue_eq_sourceKernelForm hf hc hs]
  have h := checked_sourceKernelForm_lower M N P C (deriv f)
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn hencloses hcheck
  rw [window_deriv_energy_eq hs] at h
  exact h

/-- The genuine one-cell acceptance control now reaches the arithmetic
consumer. Its full approximation penalty is still paid. -/
theorem oneCell_arithmeticValue_lower (M : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(8 * kernelApproximationBudget M 0) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  rw [arithmeticValue_eq_sourceKernelForm hf hc hs]
  have h := OneCell.source_lower M (deriv f)
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn
  rw [window_deriv_energy_eq hs] at h
  exact h

/-- The finite quadratic approximates the original arithmetic value, with
the input derivative's complete energy and the original source samples. -/
theorem arithmeticValue_finite_error (M N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    |primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f -
      complexQuadratic (complexSampleMatrix M N)
        (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))| ≤
      (8 * kernelApproximationBudget M N) * energy (deriv f) := by
  have h := sourceKernelForm_finite_error M N (deriv f)
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn
  rw [window_deriv_energy_eq hs] at h
  rw [arithmeticValue_eq_sourceKernelForm hf hc hs, complexQuadratic]
  simpa only [Complex.sub_re] using (Complex.abs_re_le_norm _).trans h

/-- The finite indices work uniformly for all original compact C1 tests in
the radius-four window. This produces accuracy, not positive certificates. -/
theorem arithmeticValue_uniform_finite_approximation {ε : ℝ} (hε : 0 < ε) :
    ∃ M N : ℕ, ∀ f : ℝ → ℂ, ContDiff ℝ 1 f → HasCompactSupport f →
      tsupport f ⊆ Icc (-4 : ℝ) 4 →
      |primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
          modThreeQuadratic_nonprincipal 4 f -
        complexQuadratic (complexSampleMatrix M N)
          (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))| ≤
        ε * energy (deriv f) := by
  obtain ⟨M, N, hb⟩ := exists_kernelApproximationBudget_lt
    (div_pos hε (by norm_num : (0 : ℝ) < 8))
  refine ⟨M, N, fun f hf hc hs => (arithmeticValue_finite_error M N hf hc hs).trans ?_⟩
  apply mul_le_mul_of_nonneg_right (by linarith : 8 * kernelApproximationBudget M N ≤ ε)
  exact integral_nonneg (fun x => sq_nonneg ‖deriv f x‖)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
