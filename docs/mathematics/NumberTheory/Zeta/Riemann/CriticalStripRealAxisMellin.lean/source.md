# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42` · SHA-256 `e28d7bf5ba64f66f92d316bc6b3abe0af5d0617c389bc54cfe47c0100a89c97a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch
import Mathlib.Analysis.MellinTransform
import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A sourced Mellin proof of the real-axis base

The bounded fractional-part kernel is zero below 1. Abel summation identifies its
Mellin transform with the actual zeta source on Re(s)>1. Both sides of the
pole-normalized identity are holomorphic on the connected half-plane Re(s)>0,
so the identity theorem extends that equality without any RH or nonvanishing premise.

For real 0<s<1 the Mellin integrand is nonnegative. The resulting identity
  H(s) = s + s(1-s) M(s)
proves Re(H(s)) >= s > 0, hence zeta(s) is nonzero (indeed its real part is negative).
The existing exact critical-strip theorem then excludes every real nontrivial zero
and discharges WindowRH 0. No complex-strip interior exclusion is inferred.

All integrations are genuinely convergent at the consumed parameters. The proof
never treats an undefined tsum or integral as an analytic continuation. These are
source proofs awaiting elaboration and axiom replay, not an execution receipt.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex MeasureTheory Filter Set Asymptotics
open scoped Topology

noncomputable section

/-- The real fractional-part kernel, with support bounded away from zero. -/
def realFractionalKernel (t : ℝ) : ℝ :=
  if 1 ≤ t then t - (⌊t⌋₊ : ℝ) else 0

/-- The same exact kernel in the scalar field of the Mellin transform. -/
def fractionalKernel (t : ℝ) : ℂ := (realFractionalKernel t : ℂ)

lemma realFractionalKernel_nonneg (t : ℝ) : 0 ≤ realFractionalKernel t := by
  by_cases ht : 1 ≤ t
  · simp only [realFractionalKernel, if_pos ht]
    exact sub_nonneg.mpr (Nat.floor_le (zero_le_one.trans ht))
  · simp [realFractionalKernel, ht]

lemma realFractionalKernel_le_one (t : ℝ) : realFractionalKernel t ≤ 1 := by
  by_cases ht : 1 ≤ t
  · simp only [realFractionalKernel, if_pos ht]
    have h := Nat.lt_floor_add_one t
    linarith
  · simp [realFractionalKernel, ht]

lemma fractionalKernel_norm_le_one (t : ℝ) : ‖fractionalKernel t‖ ≤ 1 := by
  simpa only [fractionalKernel, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (realFractionalKernel_nonneg t)] using realFractionalKernel_le_one t

lemma realFractionalKernel_measurable : Measurable realFractionalKernel := by
  have hf : Measurable (fun t : ℝ => (⌊t⌋₊ : ℝ)) :=
    (measurable_from_nat (f := fun n : ℕ => (n : ℝ))).comp Nat.measurable_floor
  exact Measurable.ite measurableSet_Ici (measurable_id.sub hf) measurable_const

lemma fractionalKernel_measurable : Measurable fractionalKernel :=
  Complex.continuous_ofReal.measurable.comp realFractionalKernel_measurable

lemma fractionalKernel_locallyIntegrable :
    LocallyIntegrableOn fractionalKernel (Ioi 0) := by
  have hmem : MemLp fractionalKernel ⊤ (volume : Measure ℝ) :=
    memLp_top_of_bound fractionalKernel_measurable.aestronglyMeasurable 1
      (Eventually.of_forall fractionalKernel_norm_le_one)
  exact (hmem.locallyIntegrable le_top).locallyIntegrableOn _

lemma fractionalKernel_isBigO_top :
    fractionalKernel =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
  refine isBigO_iff.mpr ⟨1, Eventually.of_forall ?_⟩
  intro t
  simpa using fractionalKernel_norm_le_one t

lemma fractionalKernel_isBigO_zero (b : ℝ) :
    fractionalKernel =O[𝓝[>] (0 : ℝ)] (fun t : ℝ => t ^ (-b)) := by
  refine isBigO_iff.mpr ⟨0, ?_⟩
  filter_upwards [(eventually_lt_nhds (show (0 : ℝ) < 1 from zero_lt_one)).filter_mono
    nhdsWithin_le_nhds] with t ht
  simp [fractionalKernel, realFractionalKernel, not_le.mpr ht]

/-- This definition is used only where its convergence is proved below. -/
def fractionalMellin (s : ℂ) : ℂ := mellin fractionalKernel (-s)

lemma fractionalMellin_convergent {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent fractionalKernel (-s) := by
  apply mellinConvergent_of_isBigO_rpow fractionalKernel_locallyIntegrable
    fractionalKernel_isBigO_top (by simpa using neg_neg_of_pos hs)
    (fractionalKernel_isBigO_zero (-s.re - 1))
  simp only [Complex.neg_re]
  linarith

lemma fractionalMellin_differentiableAt {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ fractionalMellin s := by
  have hm : DifferentiableAt ℂ (mellin fractionalKernel) (-s) := by
    apply mellin_differentiableAt_of_isBigO_rpow fractionalKernel_locallyIntegrable
      fractionalKernel_isBigO_top (by simpa using neg_neg_of_pos hs)
      (fractionalKernel_isBigO_zero (-s.re - 1))
    simp only [Complex.neg_re]
    linarith
  exact hm.comp s differentiableAt_id.neg

/-- The support restriction is an exact integral identity, not a tail omission. -/
lemma fractionalMellin_eq_integral (s : ℂ) :
    fractionalMellin s = ∫ t : ℝ in Ioi 1,
      ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1)) := by
  unfold fractionalMellin mellin
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Set.Ici_subset_Ioi.mpr zero_lt_one) ?_]
  · rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    change (1 : ℝ) < t at ht
    simp only [fractionalKernel, realFractionalKernel, if_pos (le_of_lt ht),
      Complex.ofReal_sub, Complex.ofReal_natCast, smul_eq_mul]
    rw [show -s - 1 = -(s + 1) by ring]
    exact mul_comm _ _
  · intro t ht
    have ht1 : t < 1 := lt_of_not_ge ht.2
    simp [fractionalKernel, realFractionalKernel, not_le.mpr ht1]

lemma fractionalMellin_integrable {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ =>
      ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))) (Ioi 1) := by
  have hi : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s - 1) • fractionalKernel t)
      (Ioi 1) :=
    (fractionalMellin_convergent hs).mono_set (Ioi_subset_Ioi zero_le_one)
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  change (1 : ℝ) < t at ht
  simp only [fractionalKernel, realFractionalKernel, if_pos (le_of_lt ht),
    Complex.ofReal_sub, Complex.ofReal_natCast, smul_eq_mul]
  rw [show -s - 1 = -(s + 1) by ring]
  exact mul_comm _ _

lemma complex_one_sum_Icc (n : ℕ) :
    (∑ _k ∈ Finset.Icc 1 n, (1 : ℂ)) = (n : ℂ) := by simp

/-- Abel summation on the domain of absolute convergence, with every integer counted. -/
lemma zeta_eq_floor_integral {s : ℂ} (hs : 1 < s.re) :
    riemannZeta s = s * ∫ t : ℝ in Ioi 1,
      (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
  have hO : (fun n : ℕ => ∑ _k ∈ Finset.Icc 1 n, (1 : ℂ))
      =O[atTop] (fun n : ℕ => (n : ℝ) ^ (1 : ℝ)) := by
    refine isBigO_iff.mpr ⟨1, Eventually.of_forall ?_⟩
    intro n
    simp
  have h := LSeries_eq_mul_integral (1 : ℕ → ℂ) (r := 1) zero_le_one hs
    (LSeriesSummable_one_iff.mpr hs) hO
  rw [LSeries_one_eq_riemannZeta hs] at h
  simpa using h

lemma real_mul_cpow_sub_one (s : ℂ) {t : ℝ} (ht : 0 < t) :
    (t : ℂ) * (t : ℂ) ^ (-(s + 1)) = (t : ℂ) ^ (-s) := by
  have ht0 : (t : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr ht.ne'
  calc
    (t : ℂ) * (t : ℂ) ^ (-(s + 1)) =
        (t : ℂ) ^ (1 : ℂ) * (t : ℂ) ^ (-(s + 1)) := by rw [Complex.cpow_one]
    _ = (t : ℂ) ^ ((1 : ℂ) + -(s + 1)) := (Complex.cpow_add _ _ ht0).symm
    _ = (t : ℂ) ^ (-s) := by congr 1; ring

lemma floor_integral_eq {s : ℂ} (hs : 1 < s.re) :
    (∫ t : ℝ in Ioi 1, (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      1 / (s - 1) - fractionalMellin s := by
  have hp : (-s).re < -1 := by simp only [Complex.neg_re]; linarith
  have hg := integrableOn_Ioi_cpow_of_lt hp (show (0 : ℝ) < 1 from zero_lt_one)
  have hh := fractionalMellin_integrable (zero_lt_one.trans hs)
  have hsplit :
      (∫ t : ℝ in Ioi 1, (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      ∫ t : ℝ in Ioi 1, ((t : ℂ) ^ (-s) -
        ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    change (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) =
      (t : ℂ) ^ (-s) - ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))
    rw [sub_mul, real_mul_cpow_sub_one s (zero_lt_one.trans ht)]
    ring
  rw [hsplit, integral_sub hg hh, ← fractionalMellin_eq_integral]
  congr 1
  rw [integral_Ioi_cpow_of_lt hp (show (0 : ℝ) < 1 from zero_lt_one),
    Complex.ofReal_one, Complex.one_cpow, show -s + 1 = -(s - 1) by ring,
    neg_div_neg_eq]

/-- The pole-removed form makes the continuation domain connected without a puncture. -/
def fractionalPoleModel (s : ℂ) : ℂ := s - s * (s - 1) * fractionalMellin s

lemma fractionalPoleModel_differentiableAt {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ fractionalPoleModel s :=
  differentiableAt_id.sub ((differentiableAt_id.mul
    (differentiableAt_id.sub_const 1)).mul (fractionalMellin_differentiableAt hs))

lemma poleNormalized_eq_fractional_of_one_lt {s : ℂ} (hs : 1 < s.re) :
    poleNormalizedZeta s = fractionalPoleModel s := by
  have hs1 : s ≠ 1 := by intro h; simp only [h, Complex.one_re, lt_self_iff_false] at hs
  rw [poleNormalizedZeta_of_ne hs1, zeta_eq_floor_integral hs, floor_integral_eq hs]
  unfold fractionalPoleModel
  field_simp [sub_ne_zero.mpr hs1]

/-- Source identity on the full right half-plane, proved by holomorphic uniqueness.
This is the analytic continuation supplier, not an assumed numerical correspondence. -/
theorem poleNormalized_eq_fractional {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = fractionalPoleModel s := by
  let U : Set ℂ := {z | 0 < z.re}
  have hUo : IsOpen U := Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have hUc : IsPreconnected U :=
    ((convex_Ioi (0 : ℝ)).linear_preimage Complex.reCLM.toLinearMap).isPreconnected
  have hH : AnalyticOnNhd ℂ poleNormalizedZeta U :=
    differentiable_poleNormalizedZeta.differentiableOn.analyticOnNhd hUo
  have hG : AnalyticOnNhd ℂ fractionalPoleModel U := by
    refine DifferentiableOn.analyticOnNhd (fun z hz => ?_) hUo
    exact (fractionalPoleModel_differentiableAt hz).differentiableWithinAt
  have hV : {z : ℂ | 1 < z.re} ∈ 𝓝 (2 : ℂ) :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by norm_num)
  have heq : poleNormalizedZeta =ᶠ[𝓝 (2 : ℂ)] fractionalPoleModel := by
    filter_upwards [hV] with z hz
    exact poleNormalized_eq_fractional_of_one_lt hz
  exact hH.eqOn_of_preconnected_of_eventuallyEq hG hUc (by norm_num [U]) heq hs

/-- On real positive parameters the convergent Mellin integral has nonnegative real part. -/
lemma fractionalMellin_re_nonneg {s : ℝ} (hs : 0 < s) :
    0 ≤ (fractionalMellin (s : ℂ)).re := by
  have hi := fractionalMellin_integrable (s := (s : ℂ)) (by simpa using hs)
  rw [fractionalMellin_eq_integral]
  have hproj := Complex.reCLM.integral_comp_comm hi
  convert! (show 0 ≤ ∫ t : ℝ in Ioi 1,
    (((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-((s : ℂ) + 1))).re from ?_) using 1
  · exact hproj.symm
  ·
    apply setIntegral_nonneg measurableSet_Ioi
    intro t ht
    have ht0 : 0 ≤ t := (zero_lt_one.trans ht).le
    have hpow : (t : ℂ) ^ (-((s : ℂ) + 1)) =
        ((t ^ (-(s + 1)) : ℝ) : ℂ) := by
      simpa only [Complex.ofReal_neg, Complex.ofReal_add, Complex.ofReal_one] using
        (Complex.ofReal_cpow ht0 (-(s + 1))).symm
    rw [hpow]
    simpa [Complex.mul_re, Complex.sub_re, Complex.sub_im] using
      mul_nonneg (sub_nonneg.mpr (Nat.floor_le ht0)) (Real.rpow_nonneg ht0 (-(s + 1)))

/-- A genuinely positive sourced lower bound on the real critical interval. -/
theorem real_le_poleNormalized_re {s : ℝ} (hs : 0 < s) (hs1 : s ≤ 1) :
    s ≤ (poleNormalizedZeta (s : ℂ)).re := by
  have hM := fractionalMellin_re_nonneg hs
  have heq := congrArg Complex.re (poleNormalized_eq_fractional (s := (s : ℂ))
    (by simpa using hs))
  simp only [fractionalPoleModel, Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.one_re, Complex.sub_im, Complex.mul_im, Complex.ofReal_im, Complex.one_im,
    zero_mul, mul_zero, add_zero, sub_zero, sub_self] at heq
  have hprod : 0 ≤ s * (1 - s) * (fractionalMellin (s : ℂ)).re :=
    mul_nonneg (mul_nonneg hs.le (sub_nonneg.mpr hs1)) hM
  nlinarith

/-- The sign assertion is about the actual zeta source on 0<s<1. -/
theorem riemannZeta_re_neg_on_real_critical_interval {s : ℝ}
    (hs : 0 < s) (hs1 : s < 1) : (riemannZeta (s : ℂ)).re < 0 := by
  have hH : 0 < (poleNormalizedZeta (s : ℂ)).re :=
    hs.trans_le (real_le_poleNormalized_re hs hs1.le)
  have hsne : (s : ℂ) ≠ 1 := by
    intro h
    have hreal := congrArg Complex.re h
    simp only [Complex.ofReal_re, Complex.one_re] at hreal
    linarith
  rw [poleNormalizedZeta_of_ne hsne] at hH
  simp only [Complex.mul_re, Complex.sub_re, Complex.ofReal_re, Complex.one_re,
    Complex.sub_im, Complex.ofReal_im, Complex.one_im, sub_self, zero_mul, sub_zero] at hH
  by_contra hnot
  have hnonneg : 0 ≤ (riemannZeta (s : ℂ)).re := le_of_not_gt hnot
  have hprod : (s - 1) * (riemannZeta (s : ℂ)).re ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hs1.le) hnonneg
  exact (not_lt_of_ge hprod) hH

/-- No canonical nontrivial zeta zero lies on the real axis. -/
theorem nontrivialZetaZero_im_ne_zero {z : ℂ} (hz : NontrivialZetaZero z) : z.im ≠ 0 := by
  intro him
  have hstrip := hz.mem_critical_strip
  have hreal : z = (z.re : ℂ) := by
    apply Complex.ext
    · simp
    · simpa using him
  have hneg := riemannZeta_re_neg_on_real_critical_interval hstrip.1 hstrip.2
  rw [← hreal, hz.1] at hneg
  simp at hneg

/-- The previously missing height-zero base, with no additional supplier premise. -/
theorem windowRH_zero : WindowRH 0 := by
  intro z hz hzero
  have habs : |z.im| ≤ 0 := by
    simpa only [heightWindow, Set.mem_ofPred_eq, ZetaCommutatorRoot.heightAt_eq_im,
      Nat.cast_zero] using hz
  have him : z.im = 0 := abs_eq_zero.mp (le_antisymm habs (abs_nonneg _))
  exact False.elim (nontrivialZetaZero_im_ne_zero hzero him)

/-- The old patch endpoint now consumes an independently derived base theorem. -/
theorem rh_of_all_source_patch_covers
    (covers : ∀ N m : ℕ, FiniteVariationCover riemannZeta (rightAwayShell N m)) :
    _root_.RiemannHypothesis :=
  rh_of_base_and_patch_covers windowRH_zero covers

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
