/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
import Mathlib.Analysis.Calculus.BumpFunction.InnerProduct
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Tactic

/-!
# The actual archimedean domain and its exponential tail

MSC2020: 11M06, 11M26, 11M41, 28A25, 26D15.

Reuse the original `parityKernel`, `energy`, `gammaCorrectionDensity`, and
`primitiveArithmeticValue`. For a globally L-Lipschitz L1/L2 function,
E(tau_r f - f) <= 2 L |r| ||f||_1 and E(tau_r f - f) <= 4 E(f).
The first bound cancels the gamma kernel singularity at zero; the second
controls the entire infinite tail. For every natural parity parameter a,
compact C1 tests therefore belong to the original archimedean integral domain.
No contour identity, zero-counting bound, or global arithmetic sign is assumed.

The source-return consumer removes the old explicit L2 and archimedean-domain
premises from the cofinal conductor reduction on the canonical admissible tests.
Its all-window small-conductor lower-bound supplier remains an explicit premise.
The zeta poles are not part of this gamma density and are not removed.

Statement migration v2 (2026-11-11): at the pinned Mathlib revision the order
`top` in ContDiff is analytic, while scoped `infty` is C-infinity. The canonical
Admissible definition and the two earlier Fourier specializations are corrected
in the same change. The final bump theorem witnesses a nonzero test in that
corrected domain, without claiming negative arithmetic value or interpolation.
See the adjacent WeilArchimedeanDomain.provenance/MIGRATION-v2.md and individual declaration records.

Local elementary consequences of the execution mandate, Sections 3 and 5,
and the existing source at c14f9934bbe83e7ff5706f6a730947fac003a412.
Mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612, Lean v4.34.1.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
independent analytic review: NOT_RUN. Novelty UNASSESSED. Coordination: #1801.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm

open OddRootProjection SourcePrimeCorrelation

/-- The first-order shift estimate uses L1 mass, not an assumed Fourier bound. -/
theorem shift_energy_le_lipschitz_l1 {f : ℝ → ℂ} (L : ℝ) (hL : 0 ≤ L)
    (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ L * |x - y|) (r : ℝ) :
    energy (fun t => f (t + r) - f t) ≤
      2 * L * |r| * ∫ t : ℝ, ‖f t‖ := by
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hf1.norm
  have hpoint (t : ℝ) : ‖f (t + r) - f t‖ ^ 2 ≤
      (L * |r|) * (‖f (t + r)‖ + ‖f t‖) := by
    rw [pow_two]
    exact mul_le_mul (by simpa using hlip (t + r) t) (norm_sub_le _ _)
      (norm_nonneg _) (mul_nonneg hL (abs_nonneg _))
  calc
    energy (fun t => f (t + r) - f t) ≤
        ∫ t : ℝ, (L * |r|) * (‖f (t + r)‖ + ‖f t‖) :=
      integral_mono (integrable_shift_energy hf2 r)
        ((hshift.add hf1.norm).const_mul _) hpoint
    _ = 2 * L * |r| * ∫ t : ℝ, ‖f t‖ := by
      rw [integral_const_mul, integral_add hshift hf1.norm,
        integral_add_right_eq_self (fun t : ℝ => ‖f t‖) r]
      ring

/-- Translation invariance supplies a uniform bound for every shift. -/
theorem shift_energy_le_four_mul {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    energy (fun t => f (t + r) - f t) ≤ 4 * energy f := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) volume :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hpoint (t : ℝ) : ‖f (t + r) - f t‖ ^ 2 ≤
      2 * (‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2) := by
    calc
      ‖f (t + r) - f t‖ ^ 2 ≤ (‖f (t + r)‖ + ‖f t‖) ^ 2 := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ _ := by nlinarith [sq_nonneg (‖f (t + r)‖ - ‖f t‖)]
  calc
    energy (fun t => f (t + r) - f t) ≤
        ∫ t : ℝ, 2 * (‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2) :=
      integral_mono (integrable_shift_energy hf r) ((hshift.add hsq).const_mul 2) hpoint
    _ = 4 * energy f := by
      rw [integral_const_mul, integral_add hshift hsq,
        integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
      unfold energy
      ring

/-- Parameter measurability is proved independently of integrability. -/
theorem measurable_gammaCorrectionDensity (a : ℕ) {f : ℝ → ℂ} (hf : Continuous f) :
    Measurable (gammaCorrectionDensity a f) := by
  have hjoint : Continuous (fun p : ℝ × ℝ => ‖f (p.2 + p.1) - f p.2‖ ^ 2) := by
    fun_prop
  have henergy : Measurable (fun r : ℝ => energy (fun t => f (t + r) - f t)) :=
    hjoint.stronglyMeasurable.integral_prod_right'.measurable
  have hk : Measurable (parityKernel a) := by
    unfold parityKernel
    fun_prop
  exact hk.mul henergy

private theorem kernel_denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  apply sub_pos.mpr
  calc
    Real.exp (-2 * r) < Real.exp 0 := Real.exp_lt_exp.mpr (by linarith)
    _ = 1 := Real.exp_zero

/-- Nonnegativity of this correction does not imply positivity of the full form. -/
theorem gammaCorrectionDensity_nonneg_of_pos (a : ℕ) (f : ℝ → ℂ) {r : ℝ}
    (hr : 0 < r) : 0 ≤ gammaCorrectionDensity a f r := by
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) (kernel_denominator_pos hr).le)
    (integral_nonneg (fun _ => sq_nonneg _))

/-- A uniform small-shift estimate for every actual natural parity parameter. -/
theorem mul_parityKernel_le_three_halves (a : ℕ) {r : ℝ}
    (hr : 0 < r) (hr1 : r ≤ 1) : r * parityKernel a r ≤ 3 / 2 := by
  have hd := kernel_denominator_pos hr
  have hexp := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r))
    (Real.exp_nonneg (-2 * r))
  have hcancel : Real.exp (2 * r) * Real.exp (-2 * r) = 1 := by
    rw [← Real.exp_add]
    simp
  rw [hcancel] at hexp
  have hden : r ≤ (3 / 2) * (1 - Real.exp (-2 * r)) := by
    have hprod := mul_nonneg (show 0 ≤ 2 - 2 * r by linarith) hd.le
    nlinarith
  have hn : Real.exp (-((a : ℝ) + 1 / 2) * r) ≤ 1 := by
    calc
      _ ≤ Real.exp 0 := Real.exp_le_exp.mpr
        (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) hr.le)
      _ = 1 := Real.exp_zero
  calc
    r * parityKernel a r =
        (r * Real.exp (-((a : ℝ) + 1 / 2) * r)) / (1 - Real.exp (-2 * r)) := by
      unfold parityKernel
      ring
    _ ≤ r / (1 - Real.exp (-2 * r)) :=
      div_le_div_of_nonneg_right
        (by simpa only [mul_one] using mul_le_mul_of_nonneg_left hn hr.le) hd.le
    _ ≤ 3 / 2 := (div_le_iff₀ hd).mpr hden

/-- The genuine gamma kernel has an exponential bound beyond shift one. -/
theorem parityKernel_le_exp_tail (a : ℕ) {r : ℝ} (hr : 1 ≤ r) :
    parityKernel a r ≤ Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2)) := by
  have hd := kernel_denominator_pos (show 0 < r by linarith)
  have hb : 0 < 1 - Real.exp (-2) := by
    simpa using kernel_denominator_pos (r := 1) zero_lt_one
  have hden : 1 - Real.exp (-2) ≤ 1 - Real.exp (-2 * r) := by
    have h := Real.exp_le_exp.mpr (show -2 * r ≤ -2 by linarith)
    linarith
  have hn : Real.exp (-((a : ℝ) + 1 / 2) * r) ≤
      Real.exp (-(1 / 2 : ℝ) * r) := by
    apply Real.exp_le_exp.mpr
    nlinarith [mul_nonneg (Nat.cast_nonneg (α := ℝ) a) (show 0 ≤ r by linarith)]
  unfold parityKernel
  apply (div_le_div_iff₀ hd hb).mpr
  exact (mul_le_mul_of_nonneg_right hn hb.le).trans
    (mul_le_mul_of_nonneg_left hden (Real.exp_nonneg _))

/-- The Lipschitz-L1 shift bound cancels the apparent singularity at zero. -/
theorem gammaCorrectionDensity_le_near_zero (a : ℕ) {f : ℝ → ℂ}
    (L : ℝ) (hL : 0 ≤ L) (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ L * |x - y|)
    {r : ℝ} (hr : 0 < r) (hr1 : r ≤ 1) :
    gammaCorrectionDensity a f r ≤ 3 * L * ∫ t : ℝ, ‖f t‖ := by
  have hk : 0 ≤ parityKernel a r :=
    div_nonneg (Real.exp_nonneg _) (kernel_denominator_pos hr).le
  have hJ : 0 ≤ ∫ t : ℝ, ‖f t‖ := integral_nonneg (fun _ => norm_nonneg _)
  calc
    gammaCorrectionDensity a f r ≤
        parityKernel a r * (2 * L * |r| * ∫ t : ℝ, ‖f t‖) :=
      mul_le_mul_of_nonneg_left (shift_energy_le_lipschitz_l1 L hL hf1 hf2 hlip r) hk
    _ = (r * parityKernel a r) * (2 * L * ∫ t : ℝ, ‖f t‖) := by
      rw [abs_of_nonneg hr.le]
      ring
    _ ≤ (3 / 2) * (2 * L * ∫ t : ℝ, ‖f t‖) :=
      mul_le_mul_of_nonneg_right (mul_parityKernel_le_three_halves a hr hr1)
        (by positivity)
    _ = 3 * L * ∫ t : ℝ, ‖f t‖ := by ring

/-- A source-energy bound for the complete untruncated gamma tail. -/
theorem gammaCorrectionDensity_le_exp_tail (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) {r : ℝ} (hr : 1 ≤ r) :
    gammaCorrectionDensity a f r ≤
      (4 * energy f / (1 - Real.exp (-2))) * Real.exp (-(1 / 2 : ℝ) * r) := by
  have hb : 0 < 1 - Real.exp (-2) := by
    simpa using kernel_denominator_pos (r := 1) zero_lt_one
  calc
    gammaCorrectionDensity a f r ≤
        (Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2))) * (4 * energy f) :=
      mul_le_mul (parityKernel_le_exp_tail a hr) (shift_energy_le_four_mul hf r)
        (integral_nonneg (fun _ => sq_nonneg _)) (div_nonneg (Real.exp_nonneg _) hb.le)
    _ = _ := by ring

/-- Tail integrability needs continuous L2 input, not a smoothness assumption. -/
theorem integrableOn_gammaCorrectionDensity_tail (a : ℕ) {f : ℝ → ℂ}
    (hc : Continuous f) (hf : MemLp f 2 volume) (R : ℝ) (hR : 1 ≤ R) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioi R) volume := by
  have hmajor := (integrableOn_exp_mul_Ioi
    (a := -(1 / 2 : ℝ)) (by norm_num) R).const_mul
      (4 * energy f / (1 - Real.exp (-2)))
  apply hmajor.mono' (measurable_gammaCorrectionDensity a hc).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have h1 : 1 ≤ r := hR.trans hr.le
  rw [Real.norm_eq_abs, abs_of_nonneg
    (gammaCorrectionDensity_nonneg_of_pos a f (by linarith))]
  exact gammaCorrectionDensity_le_exp_tail a hf h1

/-- A quantitative bound on every omitted archimedean tail, with source energy retained. -/
theorem integral_gammaCorrectionDensity_tail_le (a : ℕ) {f : ℝ → ℂ}
    (hc : Continuous f) (hf : MemLp f 2 volume) (R : ℝ) (hR : 1 ≤ R) :
    (∫ r in Ioi R, gammaCorrectionDensity a f r) ≤
      (8 * energy f / (1 - Real.exp (-2))) * Real.exp (-(1 / 2 : ℝ) * R) := by
  have hmajor := (integrableOn_exp_mul_Ioi
    (a := -(1 / 2 : ℝ)) (by norm_num) R).const_mul
      (4 * energy f / (1 - Real.exp (-2)))
  calc
    (∫ r in Ioi R, gammaCorrectionDensity a f r) ≤
        ∫ r in Ioi R, (4 * energy f / (1 - Real.exp (-2))) *
          Real.exp (-(1 / 2 : ℝ) * r) := by
      apply integral_mono_ae (integrableOn_gammaCorrectionDensity_tail a hc hf R hR) hmajor
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      exact gammaCorrectionDensity_le_exp_tail a hf (hR.trans hr.le)
    _ = _ := by
      rw [integral_const_mul,
        integral_exp_mul_Ioi (by norm_num : -(1 / 2 : ℝ) < 0) R]
      ring

/-- Neither the zero endpoint nor the infinite tail is discarded. -/
theorem gammaCorrectionDensity_integrable_of_lipschitz (a : ℕ) {f : ℝ → ℂ}
    (L : ℝ) (hL : 0 ≤ L) (hc : Continuous f)
    (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ L * |x - y|) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) volume := by
  have hconstant : IntegrableOn
      (fun _ : ℝ => 3 * L * ∫ t : ℝ, ‖f t‖) (Ioc (0 : ℝ) 1) volume :=
    (continuous_const.integrableOn_Icc : IntegrableOn
      (fun _ : ℝ => 3 * L * ∫ t : ℝ, ‖f t‖) (Icc (0 : ℝ) 1) volume).mono_set
        Ioc_subset_Icc_self
  have hnear : IntegrableOn (gammaCorrectionDensity a f) (Ioc (0 : ℝ) 1) volume := by
    apply hconstant.mono' (measurable_gammaCorrectionDensity a hc).aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    rw [Real.norm_eq_abs, abs_of_nonneg (gammaCorrectionDensity_nonneg_of_pos a f hr.1)]
    exact gammaCorrectionDensity_le_near_zero a L hL hf1 hf2 hlip hr.1 hr.2
  have htail := integrableOn_gammaCorrectionDensity_tail a hc hf2 1 le_rfl
  have hsets : Ioc (0 : ℝ) 1 ∪ Ioi 1 = Ioi 0 := by
    ext r
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (h | h)
      · exact h.1
      · linarith
    · intro h
      by_cases h1 : r ≤ 1
      · exact Or.inl ⟨h, h1⟩
      · exact Or.inr (lt_of_not_ge h1)
  simpa only [hsets] using hnear.union htail

/-- Compact C1 regularity supplies the global Lipschitz constant and both norms. -/
theorem gammaCorrectionDensity_integrable_of_contDiff_one (a : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) volume := by
  have hd : Continuous (deriv f) := hf.continuous_deriv le_rfl
  obtain ⟨L, hL⟩ := hd.norm.bddAbove_range_of_hasCompactSupport hc.deriv.norm
  have hb (x : ℝ) : ‖deriv f x‖ ≤ L := hL (mem_range_self x)
  have hL0 : 0 ≤ L := (norm_nonneg (deriv f 0)).trans (hb 0)
  have hdiff : Differentiable ℝ f := hf.differentiable (by norm_num)
  have hlip (x y : ℝ) : ‖f x - f y‖ ≤ L * |x - y| := by
    simpa only [Real.norm_eq_abs] using
      (convex_univ : Convex ℝ (univ : Set ℝ)).norm_image_sub_le_of_norm_deriv_le
        (fun t _ => hdiff t) (fun t _ => hb t) (mem_univ y) (mem_univ x)
  exact gammaCorrectionDensity_integrable_of_lipschitz a L hL0 hf.continuous
    (hf.continuous.integrable_of_hasCompactSupport hc)
    (hf.continuous.memLp_of_hasCompactSupport hc) hlip

/-- The corrected canonical smooth domain supplies all analytic premises used here. -/
theorem admissible_analytic_domain {f : ℝ → ℂ} (hf : WeilNegativeWitness.Admissible f) :
    Integrable f volume ∧ MemLp f 2 volume ∧
      ∀ a : ℕ, IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) volume := by
  refine ⟨hf.1.continuous.integrable_of_hasCompactSupport hf.2,
    hf.1.continuous.memLp_of_hasCompactSupport hf.2, ?_⟩
  intro a
  exact gammaCorrectionDensity_integrable_of_contDiff_one a (hf.1.of_le (by simp)) hf.2

/-- Return to the unchanged original arithmetic value. The all-window residual
lower bounds are still required; this is not unconditional arithmetic positivity. -/
theorem primitiveArithmeticValue_nonneg_of_cofinal_bounds_admissible
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1) {f : ℝ → ℂ} {T : ℝ}
    (hf : WeilNegativeWitness.Admissible f)
    (hs : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hsmall : ∀ j : ℕ, T ≤ (j : ℝ) + 1 → chi.conductor < conductorFrontier (j + 1) →
      -((1 / 2 : ℝ) ^ j) * energy f ≤
        primitiveArithmeticValue chi hp hn ((j : ℝ) + 1) f) :
    0 ≤ primitiveArithmeticValue chi hp hn T f := by
  have hdomain := admissible_analytic_domain hf
  exact primitiveArithmeticValue_nonneg_of_cofinal_small_conductor_bounds chi hp hn
    hdomain.2.1 hs (hdomain.2.2 (gammaParity chi)) hsmall

/-- Nonvacuity of the corrected C-infinity test domain, with a genuine compact
bump and all gamma-domain obligations. This is not a negative Weil witness. -/
theorem exists_admissible_one_at_zero :
    ∃ f : ℝ → ℂ, WeilNegativeWitness.Admissible f ∧ f 0 = 1 ∧
      ∀ a : ℕ, IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) volume := by
  let b : ContDiffBump (0 : ℝ) := ⟨1, 2, by norm_num, by norm_num⟩
  let f : ℝ → ℂ := fun t => (b t : ℂ)
  have hsm : ContDiff ℝ ∞ f := by
    change ContDiff ℝ ∞ (fun t => Complex.ofRealCLM (b t))
    exact Complex.ofRealCLM.contDiff.comp b.contDiff
  have hcompact : HasCompactSupport f := by
    apply b.hasCompactSupport.mono
    intro t ht
    change b t ≠ 0
    intro hz
    apply ht
    change (b t : ℂ) = 0
    simp [hz]
  have hadm : WeilNegativeWitness.Admissible f := ⟨hsm, hcompact⟩
  refine ⟨f, hadm, ?_, (admissible_analytic_domain hadm).2.2⟩
  change (b 0 : ℂ) = 1
  have hb0 : b 0 = 1 := b.one_of_mem_closedBall (by simp [b, Metric.mem_closedBall])
  simpa only [Complex.ofReal_one] using congrArg (fun x : ℝ => (x : ℂ)) hb0

end GRWTSK.NumberTheory.WeilQuadraticForm
