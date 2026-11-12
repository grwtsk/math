/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExactGammaTail
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The singular physical gamma head on compact Lipschitz and C1 tests

Consumer: the `harch` premise of the original exact gamma head-plus-tail
identity and its `primitiveArithmeticValue` return. No new Weil form is
introduced. All tests remain complex, on the real line with zero extension.

For support in [-A,A], A >= 0, and Lipschitz constant L, a shift 0 <= r <= R
has difference support in [-A-R,A], and norm at most L*r. Thus its ORIGINAL
Lebesgue energy is at most (2*A+R)*L^2*r^2. The elementary inequality
exp(2*r) >= 1+2*r gives r*K_a(r) <= r+1/2. Consequently the actual gamma
density on (0,R] is bounded by C*r, where
C=(2*A+R)*L^2*(R+1/2). Its omitted integral on (0,epsilon] is at most
C*epsilon^2/2. The outer measurability is proved from the jointly continuous
shift integrand, not assumed or inferred from a totalized integral.

The far tail is supplied by `WeilExactGammaTail`, using R=2*A+1 when a
single splitting point is needed. A compact C1 function has a bounded
continuous derivative, hence a genuine global Lipschitz constant by the
mean-value theorem. The final arithmetic return therefore requires neither
an assumed gamma integrability certificate nor an independently supplied L2
certificate for this test class.

This is NOT the H1 extension or density theorem, not an assertion about a
hard zero extension with nonzero boundary values, and not continuity of a
moving-window eigenvalue. The completed explicit formula, zeta pole assembly,
criterion transfer and signed-prime domination remain separate. No RH/GRH
or universal certificate-existence claim is made.

Inspected source: grwtsk/math@4363be401abeff44c5620dc3be90f757731c84c9.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Standard compact-support, mean-value and Lebesgue comparison arguments;
local attribution: grwtsk contributors. Individual provenance is adjacent.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability

open OddRootProjection SourcePrimeCorrelation ExactGammaTail CharacterWindow

private theorem energy_nonneg (f : ℝ → ℂ) : 0 ≤ energy f :=
  integral_nonneg (fun _ => sq_nonneg _)

private theorem denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  have he : Real.exp (-2 * r) < Real.exp 0 :=
    Real.exp_lt_exp.mpr (by linarith)
  simpa only [Real.exp_zero] using sub_pos.mpr he

private theorem kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r :=
  div_nonneg (Real.exp_nonneg _) (denominator_pos hr).le

private theorem density_nonneg (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r :=
  mul_nonneg (kernel_nonneg a hr) (energy_nonneg _)

/-- Uniform in the natural rate index. The singular kernel is never bounded
by a constant near zero; one first multiplies it by the actual shift. -/
theorem shift_mul_parityKernel_le (a : ℕ) {r : ℝ} (hr : 0 < r) :
    r * parityKernel a r ≤ r + 1 / 2 := by
  have hexp := Real.add_one_le_exp (2 * r)
  have hmul := mul_le_mul_of_nonneg_right hexp (Real.exp_nonneg (-2 * r))
  have heq : Real.exp (2 * r) * Real.exp (-2 * r) = 1 := by
    rw [← Real.exp_add]
    simp
  rw [heq] at hmul
  have hnum : Real.exp (-((a : ℝ) + 1 / 2) * r) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) hr.le
  have hnum' := mul_le_mul_of_nonneg_left hnum hr.le
  unfold parityKernel
  rw [← mul_div_assoc, div_le_iff₀ (denominator_pos hr)]
  nlinarith

/-- The actual integrated shift energy is measurable as a function of shift.
No interchange of two improper integrals is used. -/
theorem shiftEnergy_measurable {f : ℝ → ℂ} (hf : Continuous f) :
    Measurable (fun r : ℝ => energy (fun t => f (t + r) - f t)) := by
  have hc : Continuous (fun p : ℝ × ℝ => ‖f (p.2 + p.1) - f p.2‖ ^ 2) := by
    fun_prop
  have hm := hc.stronglyMeasurable.integral_prod_right' (ν := (volume : Measure ℝ))
  simpa only [energy] using hm.measurable

/-- Measurability of the native gamma density, including its actual inner integral. -/
theorem gammaCorrectionDensity_measurable (a : ℕ) {f : ℝ → ℂ}
    (hf : Continuous f) : Measurable (gammaCorrectionDensity a f) := by
  have hk : Measurable (parityKernel a) := by
    unfold parityKernel
    fun_prop
  exact hk.mul (shiftEnergy_measurable hf)

/-- Support enlarges on the physical real line; no periodic wraparound is allowed. -/
theorem shiftDifference_zero_outside {f : ℝ → ℂ} {A R r : ℝ}
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : 0 ≤ r) (hrR : r ≤ R) {t : ℝ} (ht : t ∉ Icc (-A - R) A) :
    f (t + r) - f t = 0 := by
  have hf0 : f t = 0 := by
    apply hsupport
    intro h
    apply ht
    constructor <;> linarith [h.1, h.2]
  have hs0 : f (t + r) = 0 := by
    apply hsupport
    intro h
    apply ht
    constructor <;> linarith [h.1, h.2]
  simp [hf0, hs0]

/-- An explicit quadratic small-shift bound for the original whole-line energy.
The L2 hypothesis records genuine integrability of every inner energy. -/
theorem shiftEnergy_le_lipschitz {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R r : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : 0 ≤ r) (hrR : r ≤ R) :
    energy (fun t => f (t + r) - f t) ≤ (2 * A + R) * (L : ℝ) ^ 2 * r ^ 2 := by
  have hi := integrable_shift_energy hf r
  have hzero (t : ℝ) (ht : t ∉ Icc (-A - R) A) :
      ‖f (t + r) - f t‖ ^ 2 = 0 := by
    rw [shiftDifference_zero_outside hsupport hr hrR ht]
    simp
  have hloc : (∫ t in Icc (-A - R) A, ‖f (t + r) - f t‖ ^ 2) =
      energy (fun t => f (t + r) - f t) :=
    setIntegral_eq_integral_of_forall_compl_eq_zero hzero
  have hbound (t : ℝ) (_ht : t ∈ Icc (-A - R) A) :
      ‖f (t + r) - f t‖ ^ 2 ≤ (L : ℝ) ^ 2 * r ^ 2 := by
    have hb := hL.norm_sub_le (t + r) t
    rw [add_sub_cancel_left, Real.norm_eq_abs, abs_of_nonneg hr] at hb
    have hs := mul_self_le_mul_self (norm_nonneg _) hb
    nlinarith
  have hcompare :
      (∫ t in Icc (-A - R) A, ‖f (t + r) - f t‖ ^ 2) ≤
        ∫ _t in Icc (-A - R) A, (L : ℝ) ^ 2 * r ^ 2 :=
    setIntegral_mono_on hi.integrableOn (integrable_const _) measurableSet_Icc hbound
  rw [hloc, setIntegral_const, Real.volume_real_Icc_of_le (by linarith), smul_eq_mul]
    at hcompare
  nlinarith [hcompare]

/-- The coefficient in the integrable linear majorant, not a lower sign bound. -/
def headConstant (A R : ℝ) (L : ℝ≥0) : ℝ :=
  (2 * A + R) * (L : ℝ) ^ 2 * (R + 1 / 2)

/-- Domination of the singular ORIGINAL density by a linear function of shift. -/
theorem gammaCorrectionDensity_le_head (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R r : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : 0 < r) (hrR : r ≤ R) :
    gammaCorrectionDensity a f r ≤ headConstant A R L * r := by
  have hE := shiftEnergy_le_lipschitz hL hf hA hR hsupport hr.le hrR
  have hk := shift_mul_parityKernel_le a hr
  have hD : 0 ≤ (2 * A + R) * (L : ℝ) ^ 2 := by positivity
  calc
    gammaCorrectionDensity a f r ≤
        parityKernel a r * ((2 * A + R) * (L : ℝ) ^ 2 * r ^ 2) :=
      mul_le_mul_of_nonneg_left hE (kernel_nonneg a hr)
    _ = ((2 * A + R) * (L : ℝ) ^ 2 * r) * (r * parityKernel a r) := by ring
    _ ≤ ((2 * A + R) * (L : ℝ) ^ 2 * r) * (R + 1 / 2) :=
      mul_le_mul_of_nonneg_left (hk.trans (by linarith)) (mul_nonneg hD hr.le)
    _ = headConstant A R L * r := by unfold headConstant; ring

/-- Genuine Bochner integrability on a head touching the singular point.
There is no premise asserting gamma integrability in this theorem. -/
theorem gammaCorrection_integrableOn_head (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 R) := by
  have hmajorant : IntegrableOn (fun r : ℝ => headConstant A R L * r) (Ioc 0 R) :=
    ((continuous_const.mul continuous_id).intervalIntegrable 0 R).1
  apply hmajorant.mono' (gammaCorrectionDensity_measurable a hL.continuous).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
  rw [Real.norm_eq_abs, abs_of_nonneg (density_nonneg a f hr.1)]
  exact gammaCorrectionDensity_le_head a hL hf hA hR hsupport hr.1 hr.2

/-- A complete error budget for omitting the head (0,epsilon]. It tends to
zero quadratically for each fixed supported Lipschitz test and fixed R. -/
theorem gammaCorrection_head_budget (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R ε : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hε : 0 ≤ ε) (hεR : ε ≤ R) :
    0 ≤ (∫ r in Ioc (0 : ℝ) ε, gammaCorrectionDensity a f r) ∧
      (∫ r in Ioc (0 : ℝ) ε, gammaCorrectionDensity a f r) ≤
        headConstant A R L * ε ^ 2 / 2 := by
  have hi := gammaCorrection_integrableOn_head a hL hf hA hε hsupport
  have hm : IntegrableOn (fun r : ℝ => headConstant A R L * r) (Ioc 0 ε) :=
    ((continuous_const.mul continuous_id).intervalIntegrable 0 ε).1
  constructor
  · apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    exact density_nonneg a f hr.1
  · calc
      _ ≤ ∫ r in Ioc (0 : ℝ) ε, headConstant A R L * r := by
        apply setIntegral_mono_on hi hm measurableSet_Ioc
        intro r hr
        exact gammaCorrectionDensity_le_head a hL hf hA hR hsupport hr.1
          (hr.2.trans hεR)
      _ = headConstant A R L * ε ^ 2 / 2 := by
        rw [integral_const_mul, ← intervalIntegral.integral_of_le hε,
          integral_id]
        ring

/-- Join the proved integrable head to the source-exact tail. -/
theorem gammaCorrection_integrableOn_of_lipschitz (a : ℕ) {f : ℝ → ℂ}
    {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A : ℝ}
    (hA : 0 ≤ A) (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) := by
  let R : ℝ := 2 * A + 1
  have hR : 0 < R := by dsimp [R]; linarith
  have hcut : 2 * A ≤ R := by dsimp [R]; linarith
  have hh := gammaCorrection_integrableOn_head a hL hf hA hR.le hsupport
  have ht := (gammaTail_integrable_and_eq a hf hR hsupport hcut).1
  have hu : Ioc (0 : ℝ) R ∪ Ioi R = Ioi 0 := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact hr.1
      · exact hR.trans hr
    · intro hr
      by_cases h : r ≤ R
      · exact Or.inl ⟨hr, h⟩
      · exact Or.inr (lt_of_not_ge h)
  rw [← hu]
  exact hh.union ht


/-- Finite translation interval plus finite exponential prefix, with BOTH
omitted endpoint budgets. This is an enclosure of the unchanged integral,
not a finite-dimensional or universal-positivity certificate. -/
theorem gammaCorrection_twoCutoff_enclosure (a n : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R ε : ℝ}
    (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hε : 0 ≤ ε) (hεR : ε ≤ R) :
    let approx := (∫ r in Ioc ε R, gammaCorrectionDensity a f r) +
      tailPrefix a n R * energy f
    approx ≤ (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) ∧
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) ≤ approx +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (a + 2 * n) R * energy f := by
  have harch := gammaCorrection_integrableOn_of_lipschitz a hL hf hA hsupport
  have hhead := gammaCorrection_integrableOn_head a hL hf hA hε hsupport
  have hmid : IntegrableOn (gammaCorrectionDensity a f) (Ioc ε R) :=
    harch.mono_set (fun _ hr => hε.trans_lt hr.1)
  have hd : Disjoint (Ioc (0 : ℝ) ε) (Ioc ε R) := by
    apply Set.disjoint_left.mpr
    intro r hr hr'
    exact (not_lt_of_ge hr.2) hr'.1
  have hu : Ioc (0 : ℝ) ε ∪ Ioc ε R = Ioc 0 R := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact ⟨hr.1, hr.2.trans hεR⟩
      · exact ⟨hε.trans_lt hr.1, hr.2⟩
    · intro hr
      by_cases h : r ≤ ε
      · exact Or.inl ⟨hr.1, h⟩
      · exact Or.inr ⟨lt_of_not_ge h, hr.2⟩
  have hsplit : (∫ r in Ioc (0 : ℝ) R, gammaCorrectionDensity a f r) =
      (∫ r in Ioc (0 : ℝ) ε, gammaCorrectionDensity a f r) +
        ∫ r in Ioc ε R, gammaCorrectionDensity a f r := by
    rw [← hu]
    exact setIntegral_union hd measurableSet_Ioc hhead hmid
  have hfull := gammaCorrectionIntegral_eq_head_add_tail a hf hR hsupport hcut harch
  rw [hsplit] at hfull
  have hh := gammaCorrection_head_budget a hL hf hA hR.le hsupport hε hεR
  have ht := tailMass_finite_enclosure a n hR
  have hlo := mul_le_mul_of_nonneg_right ht.1.le (energy_nonneg f)
  have hhi := mul_le_mul_of_nonneg_right ht.2 (energy_nonneg f)
  dsimp only
  constructor <;> nlinarith [hh.1, hh.2]

/-- Source-exact arithmetic enclosure with a singular-head budget and a
finite-prefix tail budget. The entire original signed prime sum is retained.
Finite integration and transcendental rounding errors are NOT included. -/
theorem primitiveArithmeticValue_twoCutoff_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hε : 0 ≤ ε) (hεR : ε ≤ R) :
    let approx := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∫ r in Ioc ε R, gammaCorrectionDensity (gammaParity χ) f r) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    approx ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ approx +
        headConstant A R L * ε ^ 2 / 2 +
        tailUpper (gammaParity χ + 2 * n) R * energy f := by
  have hg := gammaCorrection_twoCutoff_enclosure (gammaParity χ) n hL hf
    hA hR hsupport hcut hε hεR
  dsimp only at hg ⊢
  unfold primitiveArithmeticValue
  constructor <;> nlinarith [hg.1, hg.2]

/-- Compact C1 regularity supplies an actual Lipschitz constant by the
mean-value theorem. No norm bound is postulated for the derivative. -/
theorem exists_lipschitzWith_of_contDiff_compact {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    ∃ L : ℝ≥0, LipschitzWith L f := by
  obtain ⟨C, hC⟩ := hf.continuous_deriv_one.bounded_above_of_compact_support hs.deriv
  let L : ℝ≥0 := ⟨max C 0, le_max_right _ _⟩
  refine ⟨L, lipschitzWith_of_nnnorm_deriv_le (hf.differentiable one_ne_zero) ?_⟩
  intro x
  change ‖deriv f x‖₊ ≤ L
  exact_mod_cast (show ‖deriv f x‖ ≤ (L : ℝ) from (hC x).trans (le_max_left _ _))

/-- On the actual compact C1 class both L2 membership and full gamma
integrability follow, rather than being encoded as input certificates. -/
theorem gammaCorrection_integrableOn_of_contDiff (a : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) {A : ℝ} (hA : 0 ≤ A)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    MemLp f 2 volume ∧ IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) := by
  have hs : HasCompactSupport f := HasCompactSupport.intro isCompact_Icc hsupport
  have hLp : MemLp f 2 volume := hf.continuous.memLp_of_hasCompactSupport hs
  obtain ⟨L, hL⟩ := exists_lipschitzWith_of_contDiff_compact hf hs
  exact ⟨hLp, gammaCorrection_integrableOn_of_lipschitz a hL hLp hA hsupport⟩

/-- The former near-zero premise is discharged for compact C1 complex tests.
This is the native gamma identity, valid for both genuine parities. -/
theorem gammaCorrection_eq_head_add_tail_of_contDiff (a : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) {A R : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R) :
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) =
      (∫ r in Ioc 0 R, gammaCorrectionDensity a f r) + tailMass a R * energy f := by
  obtain ⟨hLp, harch⟩ := gammaCorrection_integrableOn_of_contDiff a hf hA hsupport
  exact gammaCorrectionIntegral_eq_head_add_tail a hLp hR hsupport hcut harch

/-- Return without an assumed harch or L2 certificate to the existing
primitive NONPRINCIPAL source. All original signed prime powers remain.
The conductor-one zeta pole assembly is not represented by this interface. -/
theorem primitiveArithmeticValue_eq_head_add_tail_of_contDiff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) {A R : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      (gammaConstant q (gammaParity χ) + tailMass (gammaParity χ) R) * energy f +
        (∫ r in Ioc 0 R, gammaCorrectionDensity (gammaParity χ) f r) -
        twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) := by
  obtain ⟨hLp, harch⟩ :=
    gammaCorrection_integrableOn_of_contDiff (gammaParity χ) hf hA hsupport
  exact primitiveArithmeticValue_eq_head_add_exact_tail χ hprimitive hnonprincipal
    hLp hR hsupport hcut harch

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability
