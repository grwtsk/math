import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateActualSourceKernelBound

/-!
# Plain sampling of the unchanged signed source

Only positive-axis differentiability is used. The zero exponential moment is
reflected with its minus sign before any absolute-value estimate is applied.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePlainKernel

open MeasureTheory Set Filter
open scoped Interval
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity
open EstimateSourceMobiusKernel EstimateMomentReflection EstimateLogSampling
open EstimateTwoMomentSampling EstimateTwoMomentSamplingBound EstimateLogSamplingIntegrals
open EstimateActualSourceKernelBound

noncomputable section

private def plainTerm (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.exp (-(Real.log x + Real.log u) / 2) * F (Real.log x + Real.log u)

private def plainDeriv (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.exp (-(Real.log x + Real.log u) / 2) / u *
    (deriv F (Real.log x + Real.log u) - F (Real.log x + Real.log u) / 2)

private theorem plainTerm_contDiffOn_pos {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (_hx : 0 < x) : ContDiffOn ℝ 1 (plainTerm F x) (Ioi 0) := by
  have hl : ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) :=
    Real.contDiffOn_log.mono (fun u hu ↦ by simpa using ne_of_gt hu)
  have hs : ContDiffOn ℝ 1 (fun u ↦ Real.log x + Real.log u) (Ioi 0) :=
    contDiffOn_const.add hl
  exact ((hs.neg.div_const 2).exp).mul (hF.comp_contDiffOn hs)

private theorem plainTerm_hasDerivAt {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (_hx : 0 < x) (hu : 0 < u) :
    HasDerivAt (plainTerm F x) (plainDeriv F x u) u := by
  have hs := (Real.hasDerivAt_log (ne_of_gt hu)).const_add (Real.log x)
  have hf := (hF.differentiable (by norm_num) (Real.log x + Real.log u)).hasDerivAt.comp u hs
  exact (((hs.neg.div_const 2).exp).mul hf).congr_deriv (by dsimp [plainDeriv]; ring)

private theorem deriv_plainTerm {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (hx : 0 < x) (hu : 0 < u) :
    deriv (plainTerm F x) u = plainDeriv F x u :=
  (plainTerm_hasDerivAt hF hx hu).deriv

private theorem plainDeriv_continuousOn_pos
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x) :
    ContinuousOn
      (plainDeriv F x)
      (Ioi (0 : ℝ)) := by
  have h :=
    (plainTerm_contDiffOn_pos hF hx).continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)
  exact h.congr fun u hu =>
    (deriv_plainTerm hF hx (u := u) hu).symm

private theorem plainTerm_intervalIntegrable
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x a b : ℝ} (hx : 0 < x)
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (plainTerm F x) volume a b := by
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    ((plainTerm_contDiffOn_pos hF hx).continuousOn.mono
      (fun u hu => ha.trans_le hu.1))

private theorem plainDeriv_intervalIntegrable
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x a b : ℝ} (hx : 0 < x)
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (plainDeriv F x) volume a b := by
  exact ContinuousOn.intervalIntegrable_of_Icc hab
    ((plainDeriv_continuousOn_pos hF hx).mono
      (fun u hu => ha.trans_le hu.1))

private theorem unit_plain_sampling_error_identity
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    plainTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u =
      -∫ u in (k : ℝ)..(k + 1 : ℝ),
        ((k + 1 : ℝ) - u) *
          plainDeriv F x u := by
  let w : ℝ → ℝ := fun u => (k + 1 : ℝ) - u
  have hw (u : ℝ) :
      HasDerivAt w (-1) u := by
    unfold w
    exact (hasDerivAt_id u).const_sub (k + 1 : ℝ)
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hg (u : ℝ) (hu : u ∈ [[(k : ℝ), k + 1]]) :
      HasDerivAt (plainTerm F x)
        (plainDeriv F x u) u := by
    rw [uIcc_of_le hkle] at hu
    have hu0 : 0 < u := by
      have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
      linarith [hu.1]
    exact plainTerm_hasDerivAt hF hx hu0
  have hwi :
      IntervalIntegrable (fun _ : ℝ => (-1 : ℝ))
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact continuous_const.intervalIntegrable _ _
  have hgi :=
    plainDeriv_intervalIntegrable
      hF hx
      (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk))
      hkle
  have h :=
    intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (u := w) (v := plainTerm F x)
      (u' := fun _ => (-1 : ℝ))
      (v' := plainDeriv F x)
      (fun u _ => hw u)
      hg hwi hgi
  unfold w at h
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul,
    neg_one_mul, intervalIntegral.integral_neg] at h
  linarith

private theorem abs_unit_plain_sampling_error_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    |plainTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ),
        |plainDeriv F x u| := by
  rw [unit_plain_sampling_error_identity hF hx k hk,
    abs_neg]
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hInt :
      IntervalIntegrable
        (fun u => |plainDeriv F x u|)
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact ContinuousOn.intervalIntegrable_of_Icc hkle
      ((plainDeriv_continuousOn_pos hF hx).abs.mono
        (fun u hu => by
          have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
          exact (zero_lt_one.trans_le hkR).trans_le hu.1))
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      hkle
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) *
          plainDeriv F x u)
      (g := fun u : ℝ =>
        |plainDeriv F x u|)
      ?_ hInt
  · simpa only [IntegrableOn, Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith [hu.1, hu.2]
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith [hu.1, hu.2]
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg hw0]
    nlinarith [abs_nonneg
      (plainDeriv F x u)]

private theorem integral_plainSampling_eq_sum_unit_intervals
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      plainTerm F x u) =
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u := by
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
          plainTerm_intervalIntegrable
            hF hx zero_lt_one
            (by norm_num : (1 : ℝ) ≤ N + 1)
        have hright :=
          plainTerm_intervalIntegrable
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

private theorem finite_plain_sampling_error
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    |leftSampleSum (plainTerm F x) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          plainTerm F x u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |plainDeriv F x u| := by
  rw [integral_plainSampling_eq_sum_unit_intervals
    hF hx N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
      (plainTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u)| ≤
      ∑ k ∈ Finset.Icc 1 N,
        |plainTerm F x k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            plainTerm F x u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          |plainDeriv F x u| := by
      gcongr with k hk
      exact abs_unit_plain_sampling_error_le
        hF hx k (Finset.mem_Icc.mp hk).1
    _ =
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |plainDeriv F x u| := by
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
                  (fun u => |plainDeriv F x u|)
                  volume 1 (N + 1) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((plainDeriv_continuousOn_pos hF hx).abs.mono
                  (fun u hu => zero_lt_one.trans_le hu.1))
            have hright :
                IntervalIntegrable
                  (fun u => |plainDeriv F x u|)
                  volume (N + 1) (N + 2) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((plainDeriv_continuousOn_pos hF hx).abs.mono
                  (fun u hu => (by positivity : (0 : ℝ) < N + 1).trans_le hu.1))
            have hsplit :=
              intervalIntegral.integral_add_adjacent_intervals
                hleft hright
            rw [ih] at hsplit
            rw [Finset.sum_Icc_succ_top
              (by omega : 1 ≤ N + 1)]
            have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
            simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm


private theorem plainDeriv_abs_le {F : ℝ → ℝ} {x u B0 B1 : ℝ}
    (hu : 1 ≤ u) (hB : ProfileSupBounds F B0 B1) :
    |plainDeriv F x u| ≤
      Real.exp (-Real.log x / 2) * (B1 + B0 / 2) * halfDensity u := by
  have hf : |deriv F (Real.log x + Real.log u) - F (Real.log x + Real.log u) / 2| ≤
      B1 + B0 / 2 := by
    calc
      _ ≤ |deriv F (Real.log x + Real.log u)| + |F (Real.log x + Real.log u) / 2| :=
        by
          simpa using abs_sub_le (deriv F (Real.log x + Real.log u)) 0
            (F (Real.log x + Real.log u) / 2)
      _ ≤ _ := by
        rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
        exact add_le_add (hB.2.2.2 _) (div_le_div_of_nonneg_right (hB.2.2.1 _) (by norm_num))
  have he : Real.exp (-(Real.log x + Real.log u) / 2) =
      Real.exp (-Real.log x / 2) * Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]; congr 1; ring
  dsimp [plainDeriv]
  rw [abs_mul, abs_of_nonneg (by positivity)]
  calc
    _ ≤ Real.exp (-(Real.log x + Real.log u) / 2) / u * (B1 + B0 / 2) := by
      gcongr
    _ = _ := by rw [he]; dsimp [halfDensity]; ring

private theorem finite_plain_error {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ} (hx : 0 < x) (hB : ProfileSupBounds F B0 B1) (N : ℕ) :
    |leftSampleSum (plainTerm F x) N - ∫ u in (1 : ℝ)..(N + 1 : ℝ), plainTerm F x u| ≤
      Real.exp (-Real.log x / 2) * (B0 + 2 * B1) := by
  let M : ℝ → ℝ := fun u ↦ Real.exp (-Real.log x / 2) * (B1 + B0 / 2) * halfDensity u
  have hm : IntegrableOn M (Ioi (1 : ℝ)) :=
    halfDensity_integrableOn.const_mul (Real.exp (-Real.log x / 2) * (B1 + B0 / 2))
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have hsub : Ioc (1 : ℝ) (N + 1 : ℝ) ⊆ Ioi (1 : ℝ) := fun _ h ↦ h.1
  have hmi : IntervalIntegrable M volume 1 (N+1) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hle).2 (hm.mono_set hsub)
  calc
    _ ≤ ∫ u in (1 : ℝ)..(N + 1 : ℝ), |plainDeriv F x u| :=
      finite_plain_sampling_error hF hx N
    _ ≤ ∫ u in (1 : ℝ)..(N + 1 : ℝ), M u := by
      apply intervalIntegral.integral_mono_on hle
        (plainDeriv_intervalIntegrable hF hx zero_lt_one hle).abs hmi
      intro u hu
      exact plainDeriv_abs_le hu.1 hB
    _ ≤ ∫ u in Ioi (1 : ℝ), M u := by
      rw [intervalIntegral.integral_of_le hle]
      apply setIntegral_mono_set hm
      · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
        dsimp [M, halfDensity]
        exact mul_nonneg (mul_nonneg (Real.exp_pos _).le (by linarith [hB.1, hB.2.1]))
          (div_nonneg (Real.exp_pos _).le (by have hu1 : (1 : ℝ) < u := hu; linarith))
      · exact Eventually.of_forall hsub
    _ = _ := by rw [integral_const_mul, halfDensity_integral]; ring

private theorem plain_reflection {F : ℝ → ℝ} (hMom : TwoMomentProfile F) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), Real.exp (r / 2) * F (s + r)) =
      -(∫ r in Ioi (0 : ℝ), Real.exp (-r / 2) * F (s - r)) := by
  have hsupp : HasCompactSupport (fun r : ℝ ↦ F (s + r)) :=
    hMom.2.1.comp_homeomorph (Homeomorph.addLeft s)
  have hc := hMom.1
  have hi : Integrable (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) :=
    (show Continuous (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) by
      fun_prop).integrable_of_hasCompactSupport
      hsupp.mul_left
  have he : (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) =
      (fun r : ℝ ↦ Real.exp (-s/2) * (Real.exp ((r+s)/2) * F (r+s))) := by
    funext r
    rw [← mul_assoc, ← Real.exp_add]
    congr 2 <;> ring
  have hz : (∫ r : ℝ, Real.exp (r/2) * F (s+r)) = 0 := by
    rw [he, integral_const_mul,
      integral_add_right_eq_self (fun t ↦ Real.exp (t/2) * F t) s, hMom.2.2.1, mul_zero]
  have hn := integral_comp_neg_Iic (0 : ℝ)
    (fun r : ℝ ↦ Real.exp (-r/2) * F (s-r))
  simp only [neg_zero, neg_neg, sub_neg_eq_add] at hn
  have hsplit := intervalIntegral.integral_Iic_add_Ioi
    (b := (0 : ℝ)) hi.integrableOn hi.integrableOn
  rw [hz, hn] at hsplit
  linarith

private theorem plain_integral_reflected {F : ℝ → ℝ} (hMom : TwoMomentProfile F) (x : ℝ) :
    (∫ u in Ioi (1 : ℝ), plainTerm F x u) =
      -Real.exp (-Real.log x / 2) *
        ∫ r in Ioi (0 : ℝ), Real.exp (-r/2) * F (Real.log x-r) := by
  have hs := integral_comp_exp_Ioi (plainTerm F x) (0 : ℝ)
  simp only [Real.exp_zero, smul_eq_mul] at hs
  rw [← hs]
  have he : (fun r : ℝ ↦ Real.exp r * plainTerm F x (Real.exp r)) =
      (fun r : ℝ ↦ Real.exp (-Real.log x/2) * (Real.exp (r/2) * F (Real.log x+r))) := by
    funext r
    dsimp [plainTerm]
    rw [Real.log_exp, ← mul_assoc, ← Real.exp_add, ← mul_assoc, ← Real.exp_add]
    congr 2; ring
  rw [he, integral_const_mul, plain_reflection hMom]
  ring

private theorem plain_integral_abs_le {F : ℝ → ℝ} (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ} (hB : ProfileSupBounds F B0 B1) :
    |∫ u in Ioi (1 : ℝ), plainTerm F x u| ≤ Real.exp (-Real.log x/2) * (2*B0) := by
  have hb : IntegrableOn (fun r : ℝ ↦ Real.exp (-r/2)) (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by rw [exponential_half_mass]; norm_num)
  have h := norm_integral_le_of_norm_le (hb.const_mul B0) (by
    filter_upwards with r
    change ‖Real.exp (-r/2) * F (Real.log x-r)‖ ≤ B0 * Real.exp (-r/2)
    rw [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
    nlinarith [hB.2.2.1 (Real.log x-r), Real.exp_pos (-r/2)])
  rw [integral_const_mul, exponential_half_mass, Real.norm_eq_abs] at h
  rw [plain_integral_reflected hMom, abs_mul, abs_neg, abs_of_pos (Real.exp_pos _)]
  nlinarith [Real.exp_pos (-Real.log x/2)]

private theorem plain_finite_integral_eq
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ)
    (hTail : ∀ u : ℝ, (N + 1 : ℝ) < u → plainTerm F x u = 0) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      plainTerm F x u) =
      ∫ u in Ioi (1 : ℝ),
        plainTerm F x u := by
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have hinterval :=
    plainTerm_intervalIntegrable
      hF hx zero_lt_one hle
  have hIoc :
      IntegrableOn
        (plainTerm F x)
        (Ioc (1 : ℝ) (N + 1)) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hle).1
      hinterval
  have htailInt :
      IntegrableOn
        (plainTerm F x)
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
  have htailZero : (∫ u in Ioi (N + 1 : ℝ), plainTerm F x u) = 0 :=
    setIntegral_eq_zero_of_forall_eq_zero (fun u hu => hTail u hu)
  rw [htailZero, add_zero]


/-- The unchanged source weight at a positive multiplicative argument. -/
def sourcePlainWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

/-- The fixed plain sampling inventory, with no logarithmic coefficient. -/
def sourcePlainKernel (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), sourcePlainWeight A (x*k)

private theorem plainTerm_source (A x : ℝ) (k : ℕ) (hx : 0 < x) (hk : 1 ≤ k) :
    plainTerm (sourceCorrelation explicitSecondDerivative A) x k =
      sourcePlainWeight A (x*k) := by
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast hk
  have hl := Real.log_mul hx.ne' hk0.ne'
  dsimp [plainTerm, sourcePlainWeight]
  rw [← hl, neg_div, Real.exp_neg, Real.exp_half, Real.exp_log (mul_pos hx hk0)]
  ring

private theorem plain_source_tail (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    ∀ u : ℝ, (sourceKernelCutoff A + 1 : ℝ) < u →
      plainTerm (sourceCorrelation explicitSecondDerivative A) x u = 0 := by
  intro u hu
  have hxu : EstimateMertensAbel.sourceUpper A < u := (Nat.lt_floor_add_one _).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2*A)).trans hxu
  have hlogu : 2*A ≤ Real.log u := (Real.le_log_iff_exp_le hu0).2 hxu.le
  have hlogx := Real.log_nonneg hx
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A
    (Real.log x + Real.log u) (by linarith)
    ((by linarith : 2*A ≤ Real.log x + Real.log u).trans (le_abs_self _))
  simp only [plainTerm, hz, mul_zero]

/-- The signed zero-moment reflection used by the plain kernel; the sign is negative. -/
theorem source_plain_reflection (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Ioi (0 : ℝ), Real.exp (r/2) *
      sourceCorrelation explicitSecondDerivative A (s+r)) =
    -(∫ r in Ioi (0 : ℝ), Real.exp (-r/2) *
      sourceCorrelation explicitSecondDerivative A (s-r)) :=
  plain_reflection (sourceCorrelation_twoMomentProfile A hA) s

/-- Uniform plain-kernel estimate on the whole positive source scale. -/
theorem sourcePlainKernel_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourcePlainKernel A x| ≤ (3+10/A) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hb := sourceCorrelation_profileSupBounds A hA
  have he := finite_plain_error hc hx0 hb (sourceKernelCutoff A)
  rw [plain_finite_integral_eq hc hx0 _ (plain_source_tail A x hA hx)] at he
  have hi := plain_integral_abs_le (x := x) (sourceCorrelation_twoMomentProfile A hA) hb
  have ht := abs_add_le
    (leftSampleSum (plainTerm (sourceCorrelation explicitSecondDerivative A) x)
      (sourceKernelCutoff A) - ∫ u in Ioi (1 : ℝ),
        plainTerm (sourceCorrelation explicitSecondDerivative A) x u)
    (∫ u in Ioi (1 : ℝ), plainTerm (sourceCorrelation explicitSecondDerivative A) x u)
  rw [sub_add_cancel] at ht
  have hs : leftSampleSum (plainTerm (sourceCorrelation explicitSecondDerivative A) x)
      (sourceKernelCutoff A) = sourcePlainKernel A x := by
    apply Finset.sum_congr rfl
    intro k hk
    exact plainTerm_source A x k hx0 (Finset.mem_Icc.mp hk).1
  rw [hs] at ht he
  have h : |sourcePlainKernel A x| ≤ Real.exp (-Real.log x/2) * (3+10/A) := by
    calc
      _ ≤ _ := ht
      _ ≤ _ := add_le_add he hi
      _ = _ := by ring
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx0] at h
  simpa only [div_eq_mul_inv, mul_comm] using h

end
end EstimatePlainKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
