# Complete source: GRWTSK.Topology.GeneralTopology.MonotoneMatchingMeasure.Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b312d425c9fa90ce3f9bc49593c9fc0fff35052` · SHA-256 `de3f4031882dc8a8c2548d97185388c262de47dd63e41fd41a781271943d5567`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Onset.Varianta871366fb3b74392f516ae2c07d30d99daad727f7850c7a22e20af35069ff4bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a871366fb3b74392f516ae2c07d30d99daad727f7850c7a22e20af35069ff4bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Onset.Varianta871366fb3b74392f516ae2c07d30d99daad727f7850c7a22e20af35069ff4bf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a871366fb3b74392f516ae2c07d30d99daad727f7850c7a22e20af35069ff4bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/matching_limit_review/MonotoneMatchingMeasure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Measure.WithDensity
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Topology.Piecewise
import Mathlib.MeasureTheory.Function.AbsolutelyContinuous

/-!
Optional monotone continuous-measure diagnostic for issue #322. The synthetic
measure is independently defined; no actual-prime or zeta adapter occurs.
Research direction: grwtsk contributors. Lean work: OpenAI Codex assistance.
-/


namespace GRWTSK.Topology.GeneralTopology.Onset.Varianta871366fb3b74392f516ae2c07d30d99daad727f7850c7a22e20af35069ff4bf

set_option autoImplicit false

namespace ContinuousResearch.MonotoneMatchingMeasure

open MeasureTheory Set Filter Topology
noncomputable section

def onset : ℝ := Real.log 2
def gap : ℝ := onset - Real.eulerMascheroniConstant
def amplitude : ℝ := gap * Real.exp (onset / 4)
def discrepancy (t : ℝ) : ℝ :=
  if t ≤ onset then -t else -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4)
def tailDensity (t : ℝ) : ℝ := 1 + amplitude / 4 * Real.exp (-t / 4)
def density (t : ℝ) : ℝ := (Ioi onset).indicator tailDensity t
def modelMeasure : Measure ℝ := volume.withDensity (fun t => ENNReal.ofReal (density t))
def cumulative (t : ℝ) : ℝ := ∫ s in 0..t, density s
def weightedPrefix (t : ℝ) : ℝ := ∫ s in 0..t, Real.exp s * density s

theorem onset_pos : 0 < onset := by
  unfold onset
  linarith [Real.log_two_gt_d9]

theorem gap_pos : 0 < gap := by
  unfold gap onset
  linarith [Real.log_two_gt_d9, Real.eulerMascheroniConstant_lt_two_thirds]

theorem amplitude_pos : 0 < amplitude := mul_pos gap_pos (Real.exp_pos _)

theorem onset_match : amplitude * Real.exp (-onset / 4) = gap := by
  unfold amplitude
  rw [mul_assoc, ← Real.exp_add]
  rw [show onset / 4 + -onset / 4 = 0 by ring, Real.exp_zero, mul_one]

theorem discrepancy_below {t : ℝ} (ht : t ≤ onset) : discrepancy t = -t := by
  simp [discrepancy, ht]

theorem discrepancy_above {t : ℝ} (ht : onset < t) :
    discrepancy t = -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4) := by
  simp [discrepancy, not_le.mpr ht]

theorem discrepancy_continuous : Continuous discrepancy := by
  have hc : Continuous (fun t : ℝ => -Real.eulerMascheroniConstant -
      amplitude * Real.exp (-t / 4)) :=
    continuous_const.sub (continuous_const.mul (Real.continuous_exp.comp
      (continuous_id.neg.div_const 4)))
  unfold discrepancy
  refine continuous_id.neg.if ?_ hc
  intro t ht
  change t ∈ frontier (Iic onset) at ht
  have ht' : t = onset := by simpa only [frontier_Iic, mem_singleton_iff] using ht
  subst t
  change -onset = -Real.eulerMascheroniConstant - amplitude * Real.exp (-onset / 4)
  rw [onset_match]
  unfold gap
  ring

theorem density_below {t : ℝ} (ht : t ≤ onset) : density t = 0 := by
  simp [density, not_lt.mpr ht]

theorem density_above {t : ℝ} (ht : onset < t) : density t = tailDensity t := by
  simp [density, ht]

theorem tailDensity_continuous : Continuous tailDensity :=
  continuous_const.add (continuous_const.mul (Real.continuous_exp.comp
    (continuous_id.neg.div_const 4)))

theorem density_measurable : Measurable density :=
  tailDensity_continuous.measurable.indicator measurableSet_Ioi

theorem density_nonneg (t : ℝ) : 0 ≤ density t := by
  by_cases ht : t ≤ onset
  · rw [density_below ht]
  · rw [density_above (lt_of_not_ge ht)]
    unfold tailDensity
    exact add_nonneg (by norm_num) (mul_nonneg (div_nonneg amplitude_pos.le (by norm_num)) (Real.exp_pos _).le)

theorem density_positive_above {t : ℝ} (ht : onset < t) : 1 < density t := by
  rw [density_above ht]
  unfold tailDensity
  have := mul_pos (div_pos amplitude_pos (by norm_num : (0 : ℝ) < 4)) (Real.exp_pos (-t / 4))
  linarith

theorem modelMeasure_no_atom (t : ℝ) : modelMeasure {t} = 0 := by
  unfold modelMeasure
  exact measure_singleton t

theorem density_intervalIntegrable (a b : ℝ) : IntervalIntegrable density volume a b := by
  apply intervalIntegrable_iff.mpr
  exact (tailDensity_continuous.intervalIntegrable a b).def'.indicator measurableSet_Ioi

theorem expDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun t => Real.exp t * density t) volume a b := by
  apply intervalIntegrable_iff.mpr
  have hi : IntervalIntegrable (fun t => Real.exp t * tailDensity t) volume a b :=
    (Real.continuous_exp.mul tailDensity_continuous).intervalIntegrable a b
  convert hi.def'.indicator (measurableSet_Ioi (a := onset)) using 1
  ext t
  by_cases ht : onset < t <;> simp [density, ht]

theorem integral_decay (a b : ℝ) :
    (∫ t in a..b, amplitude / 4 * Real.exp (-t / 4)) =
      amplitude * Real.exp (-a / 4) - amplitude * Real.exp (-b / 4) := by
  have hd (t : ℝ) : HasDerivAt (fun t => -amplitude * Real.exp (-t / 4))
      (amplitude / 4 * Real.exp (-t / 4)) t := by
    convert ((Real.hasDerivAt_exp (-t / 4)).comp t
      ((hasDerivAt_id t).neg.div_const 4)).const_mul (-amplitude) using 1 <;> first | rfl | ring
  have hi : IntervalIntegrable (fun t => amplitude / 4 * Real.exp (-t / 4)) volume a b :=
    (continuous_const.mul (Real.continuous_exp.comp (continuous_id.neg.div_const 4))).intervalIntegrable a b
  convert intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi using 1; ring

theorem prefix_below {t : ℝ} (ht0 : 0 ≤ t) (ht : t ≤ onset) : cumulative t = 0 := by
  unfold cumulative
  rw [intervalIntegral.integral_congr (g := fun _ => (0 : ℝ))]
  · simp
  · intro s hs
    rw [uIcc_of_le ht0] at hs
    exact density_below (hs.2.trans ht)

theorem prefix_above {t : ℝ} (ht : onset ≤ t) :
    cumulative t = t - Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4) := by
  unfold cumulative
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (density_intervalIntegrable 0 onset) (density_intervalIntegrable onset t)]
  have hzero : (∫ s in 0..onset, density s) = 0 := prefix_below onset_pos.le le_rfl
  rw [hzero, zero_add]
  rw [intervalIntegral.integral_congr_Ioo_of_le ht (g := tailDensity)]
  · unfold tailDensity
    have hi : IntervalIntegrable (fun s : ℝ => amplitude / 4 * Real.exp (-s / 4)) volume onset t :=
      (continuous_const.mul (Real.continuous_exp.comp (continuous_id.neg.div_const 4))).intervalIntegrable _ _
    rw [intervalIntegral.integral_add intervalIntegrable_const hi,
      intervalIntegral.integral_const, integral_decay, onset_match]
    unfold gap
    simp only [smul_eq_mul]
    ring
  · intro s hs
    exact density_above hs.1

theorem prefix_eq (t : ℝ) (ht : 0 ≤ t) : cumulative t = t + discrepancy t := by
  by_cases hl : t ≤ onset
  · rw [prefix_below ht hl, discrepancy_below hl]
    ring
  · rw [prefix_above (le_of_not_ge hl), discrepancy_above (lt_of_not_ge hl)]
    ring

theorem modelMeasure_prefix (t : ℝ) (ht : 0 ≤ t) :
    modelMeasure (Ioc 0 t) = ENNReal.ofReal (t + discrepancy t) := by
  rw [modelMeasure, withDensity_apply _ measurableSet_Ioc,
    ← ofReal_integral_eq_lintegral_ofReal]
  · rw [← intervalIntegral.integral_of_le ht]
    exact congrArg ENNReal.ofReal (prefix_eq t ht)
  · exact (density_intervalIntegrable 0 t).1
  · exact Eventually.of_forall density_nonneg

theorem cumulative_absolutelyContinuous (T : ℝ) (hT : 0 ≤ T) :
    AbsolutelyContinuousOnInterval cumulative 0 T := by
  exact (density_intervalIntegrable 0 T).absolutelyContinuousOnInterval_intervalIntegral
    (by rw [uIcc_of_le hT]; exact ⟨le_rfl, hT⟩)

theorem integral_exp_rate (c a b : ℝ) (hc : c ≠ 0) :
    (∫ t in a..b, Real.exp (c * t)) = (Real.exp (c * b) - Real.exp (c * a)) / c := by
  have hd (t : ℝ) : HasDerivAt (fun t => Real.exp (c * t) / c) (Real.exp (c * t)) t := by
    convert ((Real.hasDerivAt_exp (c * t)).comp t
      ((hasDerivAt_id t).const_mul c)).div_const c using 1
    all_goals first | rfl | field_simp [hc]
  have hi : IntervalIntegrable (fun t => Real.exp (c * t)) volume a b :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).intervalIntegrable a b
  convert intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi using 1
  ring

theorem weightedPrefix_below {t : ℝ} (ht0 : 0 ≤ t) (ht : t ≤ onset) : weightedPrefix t = 0 := by
  unfold weightedPrefix
  rw [intervalIntegral.integral_congr (g := fun _ => (0 : ℝ))]
  · simp
  · intro s hs
    rw [uIcc_of_le ht0] at hs
    change Real.exp s * density s = 0
    rw [density_below (hs.2.trans ht), mul_zero]

theorem weightedPrefix_above {t : ℝ} (ht : onset ≤ t) :
    weightedPrefix t = Real.exp t - 2 + amplitude / 3 *
      (Real.exp (3 * t / 4) - Real.exp (3 * onset / 4)) := by
  unfold weightedPrefix
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (expDensity_intervalIntegrable 0 onset) (expDensity_intervalIntegrable onset t)]
  have hzero : (∫ s in 0..onset, Real.exp s * density s) = 0 :=
    weightedPrefix_below onset_pos.le le_rfl
  rw [hzero, zero_add]
  have heq (s : ℝ) (hs : s ∈ Ioo onset t) :
      Real.exp s * density s = Real.exp s + amplitude / 4 * Real.exp ((3 / 4 : ℝ) * s) := by
    rw [density_above hs.1, tailDensity]
    calc
      _ = Real.exp s + amplitude / 4 * (Real.exp s * Real.exp (-s / 4)) := by ring
      _ = _ := by rw [← Real.exp_add]; congr 2; ring
  rw [intervalIntegral.integral_congr_Ioo_of_le ht heq]
  have hi1 : IntervalIntegrable (fun s : ℝ => Real.exp s) volume onset t :=
    Real.continuous_exp.intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun s : ℝ => amplitude / 4 * Real.exp ((3 / 4 : ℝ) * s)) volume onset t :=
    (continuous_const.mul (Real.continuous_exp.comp (continuous_const.mul continuous_id))).intervalIntegrable _ _
  rw [intervalIntegral.integral_add hi1 hi2, intervalIntegral.integral_const_mul,
    show (∫ s in onset..t, Real.exp s) = Real.exp t - Real.exp onset by
      simpa only [one_mul, div_one] using integral_exp_rate 1 onset t (by norm_num),
    integral_exp_rate (3 / 4) _ _ (by norm_num)]
  simp only [onset, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [show (3 / 4 : ℝ) * t = 3 * t / 4 by ring,
    show (3 / 4 : ℝ) * Real.log 2 = 3 * Real.log 2 / 4 by ring]
  ring

theorem counting_exact (x : ℝ) (hx : 2 ≤ x) :
    weightedPrefix (Real.log x) = x - 2 + amplitude / 3 *
      (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) := by
  have hx0 : 0 < x := by linarith
  have ht : onset ≤ Real.log x := Real.log_le_log (by norm_num) hx
  rw [weightedPrefix_above ht, Real.exp_log hx0]
  rw [Real.rpow_def_of_pos hx0, Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
  unfold onset
  rw [show 3 * Real.log x / 4 = Real.log x * (3 / 4) by ring,
    show 3 * Real.log 2 / 4 = Real.log 2 * (3 / 4) by ring]

theorem gamma_gt_fifty_three_hundredths : (53 / 100 : ℝ) < Real.eulerMascheroniConstant := by
  have h : (53 / 100 : ℝ) < Real.eulerMascheroniSeq 10 := by
    rw [Real.eulerMascheroniSeq]
    norm_num only [harmonic, Finset.sum_range_succ, Rat.cast_add, Rat.cast_inv,
      Rat.cast_natCast, Rat.cast_zero, Nat.cast_add, Nat.cast_ofNat]
    rw [lt_sub_iff_add_lt, ← lt_sub_iff_add_lt', Real.log_lt_iff_lt_exp (by norm_num)]
    refine lt_of_lt_of_le ?_ (Real.sum_le_exp_of_nonneg (by norm_num) 14)
    norm_num [Finset.sum_range_succ, Nat.factorial_succ]
  exact h.trans (Real.eulerMascheroniSeq_lt_eulerMascheroniConstant 10)

theorem exp_onset_quarter_lt : Real.exp (onset / 4) < (6 / 5 : ℝ) := by
  have h4 : Real.exp (onset / 4) ^ 4 = 2 := by
    rw [← Real.exp_nat_mul]
    norm_num
    rw [show 4 * (onset / 4) = onset by ring, onset,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  by_contra h
  have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 6 / 5) (le_of_not_gt h) 4
  rw [h4] at hp
  norm_num at hp

theorem amplitude_lt_one_fifth : amplitude < (1 / 5 : ℝ) := by
  have hg : gap < (1 / 6 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, gamma_gt_fifty_three_hundredths]
  have hp := mul_lt_mul_of_pos_left exp_onset_quarter_lt gap_pos
  unfold amplitude
  nlinarith

theorem density_upper (t : ℝ) : density t ≤ 1 + gap / 4 := by
  by_cases ht : t ≤ onset
  · rw [density_below ht]
    linarith [gap_pos]
  · rw [density_above (lt_of_not_ge ht), tailDensity]
    have he := Real.exp_le_exp.mpr (show -t / 4 ≤ -onset / 4 by linarith)
    have hmul := mul_le_mul_of_nonneg_left he amplitude_pos.le
    rw [onset_match] at hmul
    nlinarith

theorem density_upper_chebyshev (t : ℝ) : density t < 4 * Real.log 2 := by
  have hgap : gap < (1 / 5 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, Real.one_half_lt_eulerMascheroniConstant]
  have := density_upper t
  linarith [Real.log_two_gt_d9]

theorem square_decay_bound (t : ℝ) (ht : 0 ≤ t) :
    t ^ 2 * Real.exp (-t / 4) ≤ 64 * Real.exp (-2) := by
  have h := Real.mul_exp_neg_le_exp_neg_one (t / 8)
  have h0 : 0 ≤ t / 8 * Real.exp (-(t / 8)) := mul_nonneg (by linarith) (Real.exp_pos _).le
  have hh := pow_le_pow_left₀ h0 h 2
  rw [mul_pow, ← Real.exp_nat_mul, ← Real.exp_nat_mul] at hh
  norm_num at hh
  rw [show -(2 * (t / 8)) = -t / 4 by ring] at hh
  nlinarith

theorem exp_neg_two_lt_one_seventh : Real.exp (-2) < (1 / 7 : ℝ) := by
  have he : (7 : ℝ) < Real.exp 2 := by
    have h := Real.exp_one_gt_d9
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2.7182818283) h.le 2
    rw [← Real.exp_nat_mul] at hp
    norm_num at hp
    linarith
  rw [Real.exp_neg]
  simpa only [one_div] using (inv_lt_inv₀ (Real.exp_pos 2) (by norm_num : (0 : ℝ) < 7)).mpr he

theorem discrepancy_rate (t : ℝ) (ht : 0 < t) :
    |discrepancy t + Real.eulerMascheroniConstant| < (1833 / 1000 : ℝ) / t ^ 2 := by
  apply (lt_div_iff₀ (sq_pos_of_pos ht)).mpr
  by_cases hL : t ≤ onset
  · rw [discrepancy_below hL]
    have ht1 : t < (7 / 10 : ℝ) := by
      unfold onset at hL
      linarith [Real.log_two_lt_d9]
    have hg0 := Real.one_half_lt_eulerMascheroniConstant
    have hg1 := Real.eulerMascheroniConstant_lt_two_thirds
    have habs : |-t + Real.eulerMascheroniConstant| < (7 / 10 : ℝ) := by
      apply abs_lt.mpr
      constructor <;> linarith
    have ht2 : t ^ 2 < (49 / 100 : ℝ) := by nlinarith
    nlinarith [abs_nonneg (-t + Real.eulerMascheroniConstant)]
  · rw [discrepancy_above (lt_of_not_ge hL)]
    have he0 := Real.exp_pos (-t / 4)
    have hp := mul_pos amplitude_pos he0
    have he := mul_lt_mul_of_pos_left exp_neg_two_lt_one_seventh (by norm_num : (0 : ℝ) < 64)
    have hb := square_decay_bound t ht.le
    have hb0 : 0 ≤ t ^ 2 * Real.exp (-t / 4) := mul_nonneg (sq_nonneg _) he0.le
    have ha := amplitude_lt_one_fifth
    have hb1 : amplitude * (t ^ 2 * Real.exp (-t / 4)) < (64 / 35 : ℝ) := by
      have hm := mul_le_mul_of_nonneg_left hb amplitude_pos.le
      nlinarith
    rw [show -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4) +
        Real.eulerMascheroniConstant = -(amplitude * Real.exp (-t / 4)) by ring,
      abs_neg, abs_of_pos hp]
    nlinarith

theorem discrepancy_range (t : ℝ) (ht : 0 ≤ t) :
    -onset ≤ discrepancy t ∧ discrepancy t ≤ 0 := by
  by_cases hL : t ≤ onset
  · rw [discrepancy_below hL]
    constructor <;> linarith
  · rw [discrepancy_above (lt_of_not_ge hL)]
    have he := Real.exp_le_exp.mpr (show -t / 4 ≤ -onset / 4 by linarith)
    have hmul := mul_le_mul_of_nonneg_left he amplitude_pos.le
    rw [onset_match] at hmul
    have hp := mul_pos amplitude_pos (Real.exp_pos (-t / 4))
    have hg := Real.one_half_lt_eulerMascheroniConstant
    unfold gap at hmul
    constructor <;> linarith

theorem discrepancy_abs_le_onset (t : ℝ) (ht : 0 ≤ t) : |discrepancy t| ≤ onset := by
  rcases discrepancy_range t ht with ⟨hlo, hhi⟩
  rw [abs_of_nonpos hhi]
  linarith

theorem discrepancy_tendsto : Tendsto discrepancy atTop (𝓝 (-Real.eulerMascheroniConstant)) := by
  have he : Tendsto (fun t : ℝ => Real.exp (-t / 4)) atTop (𝓝 0) := by
    exact Real.tendsto_exp_atBot.comp (tendsto_neg_atTop_atBot.atBot_div_const (by norm_num))
  have h : Tendsto (fun t : ℝ => -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4))
      atTop (𝓝 (-Real.eulerMascheroniConstant - amplitude * 0)) :=
    tendsto_const_nhds.sub (he.const_mul amplitude)
  have hf : discrepancy =ᶠ[atTop] (fun t => -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4)) := by
    filter_upwards [eventually_gt_atTop onset] with t ht
    exact discrepancy_above ht
  simpa only [mul_zero, sub_zero] using h.congr' hf.symm

theorem weightedPrefix_upper (t : ℝ) (ht : 0 ≤ t) :
    weightedPrefix t ≤ (1 + gap / 4) * (Real.exp t - 1) := by
  have hi : IntervalIntegrable (fun s : ℝ => (1 + gap / 4) * Real.exp s) volume 0 t :=
    (continuous_const.mul Real.continuous_exp).intervalIntegrable _ _
  have hm := intervalIntegral.integral_mono_on ht (expDensity_intervalIntegrable 0 t) hi
    (fun s _ => show Real.exp s * density s ≤ (1 + gap / 4) * Real.exp s by
      nlinarith [mul_le_mul_of_nonneg_left (density_upper s) (Real.exp_pos s).le])
  unfold weightedPrefix
  rw [intervalIntegral.integral_const_mul,
    show (∫ s in 0..t, Real.exp s) = Real.exp t - 1 by
      simpa only [one_mul, div_one, Real.exp_zero] using integral_exp_rate 1 0 t (by norm_num)] at hm
  exact hm

theorem counting_chebyshev (x : ℝ) (hx : 1 ≤ x) :
    weightedPrefix (Real.log x) < 4 * Real.log 2 * x := by
  have hx0 : 0 < x := by linarith
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have hm := weightedPrefix_upper (Real.log x) hlog
  rw [Real.exp_log hx0] at hm
  have hg : gap < (1 / 5 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, Real.one_half_lt_eulerMascheroniConstant]
  have hc : 1 + gap / 4 < 4 * Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hx1 : 0 ≤ x - 1 := by linarith
  have hp := mul_lt_mul_of_pos_right hc hx0
  nlinarith [gap_pos]

theorem modelMeasure_interval_transport (f : ℝ → ℝ) (a b : ℝ) :
    (∫ t in a..b, f t ∂modelMeasure) = ∫ t in a..b, density t * f t := by
  unfold intervalIntegral modelMeasure
  rw [setIntegral_withDensity_eq_setIntegral_toReal_smul density_measurable.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top)) f measurableSet_Ioc,
    setIntegral_withDensity_eq_setIntegral_toReal_smul density_measurable.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top)) f measurableSet_Ioc]
  simp only [ENNReal.toReal_ofReal (density_nonneg _), smul_eq_mul]

theorem modelMeasure_continuous_intervalIntegrable (f : ℝ → ℝ) (hf : Continuous f) (a b : ℝ) :
    IntervalIntegrable f modelMeasure a b := by
  have hi := (density_intervalIntegrable a b).mul_continuousOn hf.continuousOn
  apply intervalIntegrable_iff.mpr
  rw [IntegrableOn, modelMeasure, restrict_withDensity measurableSet_uIoc]
  apply (integrable_withDensity_iff_integrable_smul' density_measurable.ennreal_ofReal
    (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))).mpr
  simpa only [ENNReal.toReal_ofReal (density_nonneg _), smul_eq_mul] using (show Integrable (fun t => density t * f t) (volume.restrict (uIoc a b)) from hi.def')

theorem modelMeasure_weightedPrefix (t : ℝ) :
    (∫ s in 0..t, Real.exp s ∂modelMeasure) = weightedPrefix t := by
  rw [modelMeasure_interval_transport]
  unfold weightedPrefix
  congr 1
  funext s
  ring

set_option maxRecDepth 4096 in
set_option maxHeartbeats 1200000 in
theorem gamma_gt_five_seventy_three_thousandths :
    (573 / 1000 : ℝ) < Real.eulerMascheroniConstant := by
  have h : (573 / 1000 : ℝ) < Real.eulerMascheroniSeq 130 := by
    rw [Real.eulerMascheroniSeq]
    norm_num only [harmonic, Finset.sum_range_succ, Rat.cast_add, Rat.cast_inv,
      Rat.cast_natCast, Rat.cast_zero, Nat.cast_add, Nat.cast_ofNat]
    rw [lt_sub_iff_add_lt, ← lt_sub_iff_add_lt', Real.log_lt_iff_lt_exp (by norm_num)]
    refine lt_of_lt_of_le ?_ (Real.sum_le_exp_of_nonneg (by norm_num) 26)
    norm_num [Finset.sum_range_succ, Nat.factorial_succ]
  exact h.trans (Real.eulerMascheroniSeq_lt_eulerMascheroniConstant 130)

theorem cumulative_nonpos {t : ℝ} (ht : t ≤ 0) : cumulative t = 0 := by
  unfold cumulative
  rw [intervalIntegral.integral_symm]
  have hzero : (∫ s in t..0, density s) = 0 := by
    rw [intervalIntegral.integral_congr (g := fun _ => (0 : ℝ))]
    · simp
    · intro s hs
      rw [uIcc_of_le ht] at hs
      exact density_below (hs.2.trans onset_pos.le)
  rw [hzero, neg_zero]

theorem cumulative_eq_all_real (t : ℝ) : cumulative t = t + discrepancy t := by
  by_cases ht : 0 ≤ t
  · exact prefix_eq t ht
  · rw [cumulative_nonpos (le_of_not_ge ht), discrepancy_below
      ((le_of_not_ge ht).trans onset_pos.le)]
    ring

theorem discrepancy_hasDerivAt_below {t : ℝ} (ht : t < onset) :
    HasDerivAt discrepancy (-1) t := by
  have he : discrepancy =ᶠ[𝓝 t] (fun s : ℝ => -s) := by
    filter_upwards [gt_mem_nhds ht] with s hs
    exact discrepancy_below hs.le
  exact (hasDerivAt_id t).neg.congr_of_eventuallyEq he

theorem discrepancy_hasDerivAt_above {t : ℝ} (ht : onset < t) :
    HasDerivAt discrepancy (amplitude / 4 * Real.exp (-t / 4)) t := by
  have hd : HasDerivAt (fun s : ℝ => -Real.eulerMascheroniConstant -
      amplitude * Real.exp (-s / 4)) (amplitude / 4 * Real.exp (-t / 4)) t := by
    convert (hasDerivAt_const t (-Real.eulerMascheroniConstant)).sub
      (((Real.hasDerivAt_exp (-t / 4)).comp t
        ((hasDerivAt_id t).neg.div_const 4)).const_mul amplitude) using 1 <;> first | rfl | ring
  have he : discrepancy =ᶠ[𝓝 t] (fun s : ℝ => -Real.eulerMascheroniConstant -
      amplitude * Real.exp (-s / 4)) := by
    filter_upwards [lt_mem_nhds ht] with s hs
    exact discrepancy_above hs
  exact hd.congr_of_eventuallyEq he

theorem density_eq_one_add_deriv_ae :
    density =ᵐ[volume] (fun t => 1 + deriv discrepancy t) := by
  filter_upwards [volume.ae_ne onset] with t ht
  rcases lt_or_gt_of_ne ht with hlt | hgt
  · rw [density_below hlt.le, (discrepancy_hasDerivAt_below hlt).deriv]
    norm_num
  · rw [density_above hgt, (discrepancy_hasDerivAt_above hgt).deriv]
    rfl

theorem discrepancy_absolutelyContinuous_window (A : ℝ) (hA : 0 ≤ A) :
    AbsolutelyContinuousOnInterval discrepancy (-(2 * A)) (2 * A) := by
  have hprim : AbsolutelyContinuousOnInterval cumulative (-(2 * A)) (2 * A) :=
    (density_intervalIntegrable (-(2 * A)) (2 * A)).absolutelyContinuousOnInterval_intervalIntegral
      (by rw [uIcc_of_le (by linarith)]; constructor <;> linarith)
  have hid : AbsolutelyContinuousOnInterval (fun t : ℝ => t) (-(2 * A)) (2 * A) :=
    contDiff_id.contDiffOn.absolutelyContinuousOnInterval
  have he : discrepancy = fun t => cumulative t - t := by
    funext t
    rw [cumulative_eq_all_real]
    ring
  rw [he]
  exact hprim.fun_sub hid

#check onset
#print axioms onset
#check gap
#print axioms gap
#check amplitude
#print axioms amplitude
#check discrepancy
#print axioms discrepancy
#check tailDensity
#print axioms tailDensity
#check density
#print axioms density
#check modelMeasure
#print axioms modelMeasure
#check cumulative
#print axioms cumulative
#check weightedPrefix
#print axioms weightedPrefix
#check onset_pos
#print axioms onset_pos
#check gap_pos
#print axioms gap_pos
#check amplitude_pos
#print axioms amplitude_pos
#check onset_match
#print axioms onset_match
#check discrepancy_below
#print axioms discrepancy_below
#check discrepancy_above
#print axioms discrepancy_above
#check discrepancy_continuous
#print axioms discrepancy_continuous
#check density_below
#print axioms density_below
#check density_above
#print axioms density_above
#check tailDensity_continuous
#print axioms tailDensity_continuous
#check density_measurable
#print axioms density_measurable
#check density_nonneg
#print axioms density_nonneg
#check density_positive_above
#print axioms density_positive_above
#check modelMeasure_no_atom
#print axioms modelMeasure_no_atom
#check density_intervalIntegrable
#print axioms density_intervalIntegrable
#check expDensity_intervalIntegrable
#print axioms expDensity_intervalIntegrable
#check integral_decay
#print axioms integral_decay
#check prefix_below
#print axioms prefix_below
#check prefix_above
#print axioms prefix_above
#check prefix_eq
#print axioms prefix_eq
#check modelMeasure_prefix
#print axioms modelMeasure_prefix
#check cumulative_absolutelyContinuous
#print axioms cumulative_absolutelyContinuous
#check integral_exp_rate
#print axioms integral_exp_rate
#check weightedPrefix_below
#print axioms weightedPrefix_below
#check weightedPrefix_above
#print axioms weightedPrefix_above
#check counting_exact
#print axioms counting_exact
#check gamma_gt_fifty_three_hundredths
#print axioms gamma_gt_fifty_three_hundredths
#check exp_onset_quarter_lt
#print axioms exp_onset_quarter_lt
#check amplitude_lt_one_fifth
#print axioms amplitude_lt_one_fifth
#check density_upper
#print axioms density_upper
#check density_upper_chebyshev
#print axioms density_upper_chebyshev
#check square_decay_bound
#print axioms square_decay_bound
#check exp_neg_two_lt_one_seventh
#print axioms exp_neg_two_lt_one_seventh
#check discrepancy_rate
#print axioms discrepancy_rate
#check discrepancy_range
#print axioms discrepancy_range
#check discrepancy_abs_le_onset
#print axioms discrepancy_abs_le_onset
#check discrepancy_tendsto
#print axioms discrepancy_tendsto
#check weightedPrefix_upper
#print axioms weightedPrefix_upper
#check counting_chebyshev
#print axioms counting_chebyshev
#check modelMeasure_interval_transport
#print axioms modelMeasure_interval_transport
#check modelMeasure_continuous_intervalIntegrable
#print axioms modelMeasure_continuous_intervalIntegrable
#check modelMeasure_weightedPrefix
#print axioms modelMeasure_weightedPrefix
#check gamma_gt_five_seventy_three_thousandths
#print axioms gamma_gt_five_seventy_three_thousandths
#check cumulative_nonpos
#print axioms cumulative_nonpos
#check cumulative_eq_all_real
#print axioms cumulative_eq_all_real
#check discrepancy_hasDerivAt_below
#print axioms discrepancy_hasDerivAt_below
#check discrepancy_hasDerivAt_above
#print axioms discrepancy_hasDerivAt_above
#check density_eq_one_add_deriv_ae
#print axioms density_eq_one_add_deriv_ae
#check discrepancy_absolutelyContinuous_window
#print axioms discrepancy_absolutelyContinuous_window

end
end ContinuousResearch.MonotoneMatchingMeasure
```
