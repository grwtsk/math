# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen.Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f67dabeab1d9b08ef25033ccd41252e02054d30` · SHA-256 `3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals

/-!
# RH estimate: assembled two-moment sampling bound

This module assembles the finite left-endpoint quadrature estimate, the exact
two-moment reflection identity, and the logarithmic derivative L1 estimate.

The theorem is stated for a finite cutoff beyond which the sampled logarithmic
profile vanishes. This is the natural formulation for the actual source kernel:
its k-sum is finite, and no separate infinite-series convergence object is
introduced.

The resulting constant is the archived one:

  |T_F(x)| <= exp(-log(x)/2) * (8 B0 + 4 B1).

For x > 0 the exponential factor is exactly 1 / sqrt(x).
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateTwoMomentSamplingBound

open MeasureTheory Set Filter
open scoped Interval
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateTwoMomentSampling EstimateMomentReflection
open EstimateLogSampling EstimateLogSamplingIntegrals
open EstimateSourceMobiusKernel
open Realization CorrelationRegularity

noncomputable section

def SamplingTailZero
    (F : ℝ → ℝ) (x : ℝ) (N : ℕ) : Prop :=
  ∀ u : ℝ, (N + 1 : ℝ) < u →
    logSamplingTerm F x u = 0

theorem logSamplingDerivative_continuousOn_pos
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x) :
    ContinuousOn
      (logSamplingDerivative F x)
      (Ioi (0 : ℝ)) := by
  have h :=
    (logSamplingTerm_contDiffOn_pos hF hx).continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)
  exact h.congr fun u hu =>
    (deriv_logSamplingTerm hF hx (u := u) hu).symm

theorem logSamplingTerm_intervalIntegrable
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x a b : ℝ} (hx : 0 < x)
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (logSamplingTerm F x) volume a b := by
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    ((logSamplingTerm_contDiffOn_pos hF hx).continuousOn.mono
      (fun u hu => ha.trans_le hu.1))

theorem logSamplingDerivative_intervalIntegrable
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x a b : ℝ} (hx : 0 < x)
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (logSamplingDerivative F x) volume a b := by
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    ((logSamplingDerivative_continuousOn_pos hF hx).mono
      (fun u hu => ha.trans_le hu.1))

theorem unit_log_sampling_error_identity
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    logSamplingTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u =
      -∫ u in (k : ℝ)..(k + 1 : ℝ),
        ((k + 1 : ℝ) - u) *
          logSamplingDerivative F x u := by
  let w : ℝ → ℝ := fun u => (k + 1 : ℝ) - u
  have hw (u : ℝ) :
      HasDerivAt w (-1) u := by
    unfold w
    exact (hasDerivAt_id u).const_sub (k + 1 : ℝ)
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hg (u : ℝ) (hu : u ∈ [[(k : ℝ), k + 1]]) :
      HasDerivAt (logSamplingTerm F x)
        (logSamplingDerivative F x u) u := by
    rw [uIcc_of_le hkle] at hu
    have hu0 : 0 < u := by
      have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
      linarith [hu.1]
    exact logSamplingTerm_hasDerivAt hF hx hu0
  have hwi :
      IntervalIntegrable (fun _ : ℝ => (-1 : ℝ))
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact continuous_const.intervalIntegrable _ _
  have hgi :=
    logSamplingDerivative_intervalIntegrable
      hF hx
      (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk))
      hkle
  have h :=
    intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (u := w) (v := logSamplingTerm F x)
      (u' := fun _ => (-1 : ℝ))
      (v' := logSamplingDerivative F x)
      (fun u _ => hw u)
      hg hwi hgi
  unfold w at h
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul,
    neg_one_mul, intervalIntegral.integral_neg] at h
  linarith

theorem abs_unit_log_sampling_error_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    |logSamplingTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ),
        |logSamplingDerivative F x u| := by
  rw [unit_log_sampling_error_identity hF hx k hk,
    abs_neg]
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hInt :
      IntervalIntegrable
        (fun u => |logSamplingDerivative F x u|)
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact ContinuousOn.intervalIntegrable_of_Icc hkle
      ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
        (fun u hu => by
          have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
          exact (zero_lt_one.trans_le hkR).trans_le hu.1))
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      hkle
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) *
          logSamplingDerivative F x u)
      (g := fun u : ℝ =>
        |logSamplingDerivative F x u|)
      ?_ hInt
  · simpa only [IntegrableOn, Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith [hu.1, hu.2]
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith [hu.1, hu.2]
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg hw0]
    nlinarith [abs_nonneg
      (logSamplingDerivative F x u)]

theorem integral_logSampling_eq_sum_unit_intervals
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      logSamplingTerm F x u) =
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u := by
  induction N with
  | zero =>
      norm_num
  | succ N ih =>
      by_cases hN : N = 0
      · subst N
        norm_num
      · have h1N : 1 ≤ N :=
          Nat.one_le_iff_ne_zero.mpr hN
        have hleft :=
          logSamplingTerm_intervalIntegrable
            hF hx zero_lt_one
            (by norm_num : (1 : ℝ) ≤ N + 1)
        have hright :=
          logSamplingTerm_intervalIntegrable
            hF hx
            (by
              have : (0 : ℝ) < N + 1 := by positivity
              exact this)
            (by norm_num :
              (N + 1 : ℝ) ≤ N + 2)
        have hsplit :=
          intervalIntegral.integral_add_adjacent_intervals
            hleft hright
        rw [ih] at hsplit
        rw [Finset.sum_Icc_succ_top
          (by omega : 1 ≤ N + 1)]
        have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
        simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

theorem finite_log_sampling_error
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    |leftSampleSum (logSamplingTerm F x) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          logSamplingTerm F x u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |logSamplingDerivative F x u| := by
  rw [integral_logSampling_eq_sum_unit_intervals
    hF hx N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
      (logSamplingTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u)| ≤
      ∑ k ∈ Finset.Icc 1 N,
        |logSamplingTerm F x k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            logSamplingTerm F x u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          |logSamplingDerivative F x u| := by
      gcongr with k hk
      exact abs_unit_log_sampling_error_le
        hF hx k (Finset.mem_Icc.mp hk).1
    _ =
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |logSamplingDerivative F x u| := by
      symm
      -- Reuse the same partition induction directly through continuity.
      induction N with
      | zero => norm_num
      | succ N ih =>
          by_cases hN : N = 0
          · subst N
            norm_num
          · have h1N : 1 ≤ N :=
              Nat.one_le_iff_ne_zero.mpr hN
            have hleft :
                IntervalIntegrable
                  (fun u => |logSamplingDerivative F x u|)
                  volume 1 (N + 1) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
                  (fun u hu => zero_lt_one.trans_le hu.1))
            have hright :
                IntervalIntegrable
                  (fun u => |logSamplingDerivative F x u|)
                  volume (N + 1) (N + 2) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
                  (fun u hu => (by positivity : (0 : ℝ) < N + 1).trans_le hu.1))
            have hsplit :=
              intervalIntegral.integral_add_adjacent_intervals
                hleft hright
            rw [ih] at hsplit
            rw [Finset.sum_Icc_succ_top
              (by omega : 1 ≤ N + 1)]
            have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
            simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

theorem logSamplingDerivative_integrableOn_Ioi_one
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1) :
    IntegrableOn
      (logSamplingDerivative F x)
      (Ioi (1 : ℝ)) := by
  have hmaj :=
    logSamplingDerivativeMajorant_integrableOn
      x B0 B1
  have hmeas :
      AEStronglyMeasurable
        (logSamplingDerivative F x)
        (volume.restrict (Ioi (1 : ℝ))) :=
    (logSamplingDerivative_continuousOn_pos hF hx).mono
      (Set.Ioi_subset_Ioi zero_le_one)
      |>.aestronglyMeasurable measurableSet_Ioi
  refine Integrable.mono' hmaj hmeas ?_
  exact
    (ae_restrict_iff' measurableSet_Ioi).2
      (Eventually.of_forall fun u hu => by
        rw [Real.norm_eq_abs]
        exact abs_logSamplingDerivative_le
          hx (le_of_lt hu) hB)

theorem finite_log_sampling_error_global
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1)
    (N : ℕ) :
    |leftSampleSum (logSamplingTerm F x) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          logSamplingTerm F x u| ≤
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) := by
  have hfinite :=
    finite_log_sampling_error hF hx N
  have hglobal :=
    integral_abs_logSamplingDerivative_le
      hF hx hB
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have habs :
      IntegrableOn
        (fun u => |logSamplingDerivative F x u|)
        (Ioi (1 : ℝ)) := by
    simpa only [IntegrableOn, Real.norm_eq_abs] using
      (logSamplingDerivative_integrableOn_Ioi_one
        hF hx hB).norm
  have hmono :
      (∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |logSamplingDerivative F x u|) ≤
      ∫ u in Ioi (1 : ℝ),
        |logSamplingDerivative F x u| := by
    rw [intervalIntegral.integral_of_le hle]
    apply setIntegral_mono_set habs
    · exact
        (ae_restrict_iff' measurableSet_Ioi).2
          (Eventually.of_forall fun _ _ =>
            abs_nonneg _)
    · exact Eventually.of_forall fun _ hu => hu.1
  exact hfinite.trans (hmono.trans hglobal)

theorem logSampling_integral_Ioi_eq_shifted
    {F : ℝ → ℝ} {x : ℝ}
    (_hx : 0 < x) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u) =
      Real.exp (-Real.log x / 2) *
        ∫ r in Ioi (0 : ℝ),
          shiftedMomentIntegrand F (Real.log x) r := by
  have hsub :=
    integral_comp_exp_Ioi
      (logSamplingTerm F x) (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r *
          logSamplingTerm F x (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ),
          logSamplingTerm F x u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  rw [← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro r hr
  unfold logSamplingTerm shiftedMomentIntegrand
  dsimp only
  rw [Real.log_exp]
  have he :
      Real.exp r *
        Real.exp (-(Real.log x + r) / 2) =
      Real.exp (-Real.log x / 2) *
        Real.exp (r / 2) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  linear_combination (r * F (Real.log x + r)) * he

theorem logSampling_integral_Ioi_eq_reflected
    {F : ℝ → ℝ} (hMom : TwoMomentProfile F)
    {x : ℝ} (hx : 0 < x) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u) =
      Real.exp (-Real.log x / 2) *
        ∫ r in Ioi (0 : ℝ),
          reflectedMomentIntegrand F
            (Real.log x) r := by
  rw [logSampling_integral_Ioi_eq_shifted hx]
  rw [two_moment_reflection hMom (Real.log x)]

theorem abs_logSampling_integral_Ioi_le
    {F : ℝ → ℝ}
    (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1) :
    |∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u| ≤
      Real.exp (-Real.log x / 2) *
        (4 * B0) := by
  have hbase :
      IntegrableOn
        (fun r : ℝ =>
          r * Real.exp (-r / 2))
        (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by
      rw [exponential_half_first_moment]
      norm_num)
  have href : IntegrableOn (reflectedMomentIntegrand F (Real.log x)) (Ioi (0 : ℝ)) :=
    (reflectedMomentIntegrand_integrable
      hMom (Real.log x)).integrableOn
  have hrefAbs :
      IntegrableOn
        (fun r =>
          |reflectedMomentIntegrand F
            (Real.log x) r|)
        (Ioi (0 : ℝ)) := by
    simpa only [IntegrableOn, Real.norm_eq_abs] using href.norm
  have hbound :
      |∫ r in Ioi (0 : ℝ),
        reflectedMomentIntegrand F
          (Real.log x) r| ≤
        4 * B0 := by
    calc
      |∫ r in Ioi (0 : ℝ),
        reflectedMomentIntegrand F
          (Real.log x) r| ≤
        ∫ r in Ioi (0 : ℝ),
          |reflectedMomentIntegrand F
            (Real.log x) r| := by
        exact abs_integral_le_integral_abs
      _ ≤
        ∫ r in Ioi (0 : ℝ),
          B0 * (r * Real.exp (-r / 2)) := by
        refine setIntegral_mono_ae_restrict hrefAbs
          (hbase.const_mul B0) ?_
        exact
          (ae_restrict_iff' measurableSet_Ioi).2
            (Eventually.of_forall fun r hr => by
              have hr0 : 0 ≤ r := le_of_lt hr
              have hE : 0 ≤ Real.exp (-r / 2) :=
                (Real.exp_pos _).le
              unfold reflectedMomentIntegrand
              dsimp only
              rw [abs_mul, abs_mul,
                abs_of_nonneg hr0,
                abs_of_nonneg hE]
              have hFle := hB.2.2.1 (Real.log x - r)
              nlinarith [mul_nonneg hr0 hE])
      _ = 4 * B0 := by
        rw [integral_const_mul,
          exponential_half_first_moment]
        ring
  rw [logSampling_integral_Ioi_eq_reflected
    hMom hx, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left hbound
    (Real.exp_pos _).le

theorem finite_interval_eq_Ioi_of_tailZero
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ)
    (hTail : SamplingTailZero F x N) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      logSamplingTerm F x u) =
      ∫ u in Ioi (1 : ℝ),
        logSamplingTerm F x u := by
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have hinterval :=
    logSamplingTerm_intervalIntegrable
      hF hx zero_lt_one hle
  have hIoc :
      IntegrableOn
        (logSamplingTerm F x)
        (Ioc (1 : ℝ) (N + 1)) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hle).1
      hinterval
  have htailInt :
      IntegrableOn
        (logSamplingTerm F x)
        (Ioi (N + 1 : ℝ)) := by
    exact IntegrableOn.congr_fun
      integrableOn_zero
      (fun u hu => by
        symm
        exact hTail u hu)
      measurableSet_Ioi
  rw [intervalIntegral.integral_of_le hle]
  rw [← Ioc_union_Ioi_eq_Ioi hle,
    setIntegral_union Ioc_disjoint_Ioi_same
      measurableSet_Ioi hIoc htailInt]
  have htailZero : (∫ u in Ioi (N + 1 : ℝ), logSamplingTerm F x u) = 0 :=
    setIntegral_eq_zero_of_forall_eq_zero (fun u hu => hTail u hu)
  rw [htailZero, add_zero]

theorem two_moment_sampling_bound
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1)
    (N : ℕ)
    (hTail : SamplingTailZero F x N) :
    |leftSampleSum (logSamplingTerm F x) N| ≤
      Real.exp (-Real.log x / 2) *
        (8 * B0 + 4 * B1) := by
  have herr :=
    finite_log_sampling_error_global
      hF hx hB N
  have hIntEq :=
    finite_interval_eq_Ioi_of_tailZero
      hF hx N hTail
  have hint :=
    abs_logSampling_integral_Ioi_le
      hMom hx hB
  rw [hIntEq] at herr
  calc
    |leftSampleSum (logSamplingTerm F x) N| =
        |(leftSampleSum (logSamplingTerm F x) N -
            ∫ u in Ioi (1 : ℝ),
              logSamplingTerm F x u) +
          (∫ u in Ioi (1 : ℝ),
              logSamplingTerm F x u)| := by
      congr 1
      ring
    _ ≤
        |leftSampleSum (logSamplingTerm F x) N -
          ∫ u in Ioi (1 : ℝ),
            logSamplingTerm F x u| +
        |∫ u in Ioi (1 : ℝ),
          logSamplingTerm F x u| :=
      abs_add_le _ _
    _ ≤
        Real.exp (-Real.log x / 2) *
            (4 * B0 + 4 * B1) +
          Real.exp (-Real.log x / 2) *
            (4 * B0) :=
      add_le_add herr hint
    _ =
        Real.exp (-Real.log x / 2) *
          (8 * B0 + 4 * B1) := by ring

theorem exp_neg_log_half_eq_inv_sqrt
    {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x / 2) =
      (Real.sqrt x)⁻¹ := by
  rw [neg_div, Real.exp_neg,
    Real.exp_half, Real.exp_log hx]

theorem two_moment_sampling_bound_sqrt
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1)
    (N : ℕ)
    (hTail : SamplingTailZero F x N) :
    |leftSampleSum (logSamplingTerm F x) N| ≤
      (8 * B0 + 4 * B1) / Real.sqrt x := by
  rw [div_eq_mul_inv, ← exp_neg_log_half_eq_inv_sqrt hx]
  simpa [mul_comm] using
    two_moment_sampling_bound
      hF hMom hx hB N hTail

def TwoMomentSamplingCheckpoint : Prop :=
  ∀ F : ℝ → ℝ,
    ContDiff ℝ 1 F →
    TwoMomentProfile F →
    ∀ x B0 B1 : ℝ,
      0 < x →
      ProfileSupBounds F B0 B1 →
      ∀ N : ℕ,
        SamplingTailZero F x N →
        |leftSampleSum (logSamplingTerm F x) N| ≤
          (8 * B0 + 4 * B1) / Real.sqrt x

theorem two_moment_sampling_checkpoint :
    TwoMomentSamplingCheckpoint :=
  fun F hF hMom x B0 B1 hx hB N hTail =>
    two_moment_sampling_bound_sqrt
      (F := F) hF hMom (x := x) (B0 := B0) (B1 := B1) hx hB N hTail

end
end EstimateTwoMomentSamplingBound
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
