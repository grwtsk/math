-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadrature.Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogSquareQuadrature.Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611","mathematical_subject":"Analysis.Integration","original_sha256":"8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mobius-quadrature/MobiusQuadratureBoundAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Log-square quadrature with the actual fractional endpoint

The integer-prefix rectangular error is nonnegative and at most the final
logarithmic square. The remaining fractional interval is retained and bounded
separately, giving a two-sided error bound for every real endpoint at least one.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadrature.Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611

namespace FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature
open MeasureTheory Set
noncomputable section

/-- The exact integer-prefix minus integral discrepancy, retaining the fractional endpoint. -/
def logSquareQuadrature (y : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 ⌊y⌋₊, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2

theorem logSquare_monotoneOn : MonotoneOn (fun t : ℝ => (Real.log t) ^ 2) (Ici 1) := by
  intro a ha b _ hab
  exact pow_le_pow_left₀ (Real.log_nonneg ha)
    (Real.log_le_log (lt_of_lt_of_le zero_lt_one ha) hab) 2

theorem logSquare_intervalIntegrable (a b : ℝ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    IntervalIntegrable (fun t : ℝ => (Real.log t) ^ 2) volume a b := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ((le_min ha hb).trans ht.1)
  exact ((Real.continuousAt_log ht0.ne').pow 2).continuousWithinAt

theorem logSquare_integer_bounds (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      ∫ t in 1..(N : ℝ), (Real.log t) ^ 2 ∧
    (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      (∫ t in 1..(N : ℝ), (Real.log t) ^ 2) ≤ (Real.log (N : ℝ)) ^ 2 := by
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNext : (1 : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤ N + 1)
    have hle : (N : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast Nat.le_succ N
    have hi := logSquare_intervalIntegrable (N : ℝ) (N + 1 : ℕ) hN1 hNext
    have hlo : (Real.log (N : ℝ)) ^ 2 ≤
        ∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N : ℝ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ)) hi
        (fun t ht => logSquare_monotoneOn hN1 (hN1.trans ht.1) ht.1)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hhi : (∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2) ≤
        (Real.log (N + 1 : ℕ)) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle hi
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N + 1 : ℕ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ))
        (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hNext ht.2)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    constructor <;> linarith [ih.1, ih.2]

theorem logSquareQuadrature_abs_le (y : ℝ) (hy : 1 ≤ y) :
    |logSquareQuadrature y| ≤ (Real.log y) ^ 2 := by
  let N := ⌊y⌋₊
  have hN : 1 ≤ N := Nat.le_floor (by simpa using hy)
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hNy : (N : ℝ) ≤ y := Nat.floor_le (zero_le_one.trans hy)
  have hgap : y - (N : ℝ) ≤ 1 := by
    have h := Nat.lt_floor_add_one y
    dsimp only [N]
    linarith
  have hi := logSquare_intervalIntegrable (N : ℝ) y hN1 hy
  have hzero : 0 ≤ ∫ t in (N : ℝ)..y, (Real.log t) ^ 2 :=
    intervalIntegral.integral_nonneg hNy (fun _ _ => sq_nonneg _)
  have htail : (∫ t in (N : ℝ)..y, (Real.log t) ^ 2) ≤ (Real.log y) ^ 2 := by
    have hb := intervalIntegral.integral_mono_on hNy hi
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (Real.log y) ^ 2)
        volume (N : ℝ) y)
      (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hy ht.2)
    rw [intervalIntegral.integral_const, smul_eq_mul] at hb
    exact hb.trans (mul_le_of_le_one_left (sq_nonneg _) hgap)
  have hmono := logSquare_monotoneOn hN1 hy hNy
  have hb := logSquare_integer_bounds N hN
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
  change |(∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2| ≤ _
  exact abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩

end
end FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature

set_option autoImplicit false
namespace MobiusQuadratureBoundScratch
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped Topology
noncomputable section

/-- The positive logarithmic kernel, including its harmless totalized value at zero. -/
def logRatioSquare (x t : ℝ) : ℝ := Real.log (x / t) ^ 2

/-- A primitive with finite zero-endpoint limit. -/
def logRatioPrimitive (x t : ℝ) : ℝ :=
  t * ((Real.log x - Real.log t) ^ 2 + 2 * (Real.log x - Real.log t) + 2)

theorem logRatioSquare_nonneg (x t : ℝ) : 0 ≤ logRatioSquare x t := sq_nonneg _

/-- The singular endpoint has an explicit integrable inverse-square-root majorant. -/
theorem logRatioSquare_le_rpow (x t : ℝ) (hx : 0 < x) (ht : t ∈ Ioc 0 x) :
    logRatioSquare x t ≤ (16 * x ^ (1 / 2 : ℝ)) * t ^ (-(1 / 2 : ℝ)) := by
  have hratio : 1 ≤ x / t := (le_div_iff₀ ht.1).mpr (by simpa using ht.2)
  have hlog := Real.log_le_rpow_div (div_nonneg hx.le ht.1.le)
    (by norm_num : (0 : ℝ) < 1 / 4)
  unfold logRatioSquare
  calc
    _ ≤ ((x / t) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) ^ 2 :=
      pow_le_pow_left₀ (Real.log_nonneg hratio) hlog 2
    _ = 16 * (x / t) ^ (1 / 2 : ℝ) := by
      rw [div_pow, ← Real.rpow_natCast, ← Real.rpow_mul (div_nonneg hx.le ht.1.le)]
      norm_num
      ring
    _ = _ := by
      rw [Real.div_rpow hx.le ht.1.le, Real.rpow_neg ht.1.le]
      ring

/-- Integrability at zero is proved before evaluating the improper-endpoint integral. -/
theorem logRatioSquare_integrableOn (x : ℝ) (hx : 0 < x) :
    IntegrableOn (logRatioSquare x) (Ioc 0 x) := by
  have hm : AEStronglyMeasurable (logRatioSquare x) (volume.restrict (Ioc 0 x)) :=
    ((Real.measurable_log.comp (measurable_const.div measurable_id)).pow_const 2).aestronglyMeasurable
  have hi : IntervalIntegrable (fun t : ℝ => t ^ (-(1 / 2 : ℝ))) volume 0 x :=
    intervalIntegral.intervalIntegrable_rpow' (by norm_num)
  have hg := ((intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).mp hi).const_mul
    (16 * x ^ (1 / 2 : ℝ))
  apply hg.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (logRatioSquare_nonneg x t)]
  exact logRatioSquare_le_rpow x t hx ht

theorem logRatioSquare_intervalIntegrable (x : ℝ) (hx : 0 < x) :
    IntervalIntegrable (logRatioSquare x) volume 0 x :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).mpr (logRatioSquare_integrableOn x hx)

theorem logRatioPrimitive_hasDerivAt (x t : ℝ) (hx : 0 < x) (ht : 0 < t) :
    HasDerivAt (logRatioPrimitive x) (logRatioSquare x t) t := by
  have hd := (Real.hasDerivAt_log ht.ne').const_sub (Real.log x)
  have h := (hasDerivAt_id t).mul (((hd.pow 2).add (hd.const_mul 2)).add_const 2)
  apply h.congr_deriv
  simp only [logRatioSquare, Real.log_div hx.ne' ht.ne', id_eq, Pi.add_apply, Pi.pow_apply]
  field_simp
  ring

private theorem tendsto_self_log_square :
    Tendsto (fun t : ℝ => t * Real.log t ^ 2) (𝓝[>] 0) (𝓝 0) := by
  have hh := tendsto_log_mul_rpow_nhdsGT_zero (by norm_num : (0 : ℝ) < 1 / 2)
  have hh2 : Tendsto (fun t : ℝ => (Real.log t * t ^ (1 / 2 : ℝ)) ^ 2)
      (𝓝[>] 0) (𝓝 0) := by simpa using hh.pow 2
  apply hh2.congr'
  filter_upwards [self_mem_nhdsWithin] with t ht
  have ht0 : 0 < t := ht
  have hsq : (t ^ (1 / 2 : ℝ)) ^ 2 = t := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul ht0.le]
    norm_num
  rw [mul_pow, hsq]
  ring

/-- The primitive has zero limit at the singular endpoint, without assigning an infinite value. -/
theorem logRatioPrimitive_tendsto_zero (x : ℝ) :
    Tendsto (logRatioPrimitive x) (𝓝[>] 0) (𝓝 0) := by
  have h0 : Tendsto (fun t : ℝ => t) (𝓝[>] 0) (𝓝 0) :=
    tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
  have h1 : Tendsto (fun t : ℝ => t * Real.log t) (𝓝[>] 0) (𝓝 0) := by
    simpa only [Real.rpow_one, mul_comm] using
      tendsto_log_mul_rpow_nhdsGT_zero (by norm_num : (0 : ℝ) < 1)
  have h := ((h0.mul_const (Real.log x ^ 2 + 2 * Real.log x + 2)).sub
    (h1.mul_const (2 * (Real.log x + 1)))).add tendsto_self_log_square
  convert h using 1
  · funext t
    unfold logRatioPrimitive
    ring
  · simp

/-- Exact evaluation includes the genuinely integrable endpoint at zero. -/
theorem integral_logRatioSquare (x : ℝ) (hx : 0 < x) :
    (∫ t in 0..x, logRatioSquare x t) = 2 * x := by
  have hb : Tendsto (logRatioPrimitive x) (𝓝[<] x) (𝓝 (2 * x)) := by
    have hc : ContinuousAt (logRatioPrimitive x) x := by
      have hn : x ≠ 0 := hx.ne'
      unfold logRatioPrimitive
      fun_prop
    have h := tendsto_nhdsWithin_of_tendsto_nhds hc.tendsto (s := Iio x)
    simpa only [logRatioPrimitive, sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0),
      mul_zero, zero_mul, zero_add, mul_comm] using h
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_tendsto hx
    (fun t ht => logRatioPrimitive_hasDerivAt x t hx ht.1)
    (logRatioSquare_intervalIntegrable x hx) (logRatioPrimitive_tendsto_zero x) hb
  simpa only [sub_zero] using h

/-- Monotonicity is asserted only on the positive interval, never at the totalized zero value. -/
theorem logRatioSquare_antitone (x : ℝ) (hx : 0 < x) :
    AntitoneOn (logRatioSquare x) (Ioc 0 x) := by
  intro a ha b hb hab
  have hr : x / b ≤ x / a := div_le_div_of_nonneg_left hx.le ha.1 hab
  have hlog : Real.log (x / b) ≤ Real.log (x / a) :=
    Real.log_le_log (div_pos hx hb.1) hr
  exact pow_le_pow_left₀ (Real.log_nonneg ((le_div_iff₀ hb.1).mpr (by simpa using hb.2))) hlog 2

/-- A finite sum of right-endpoint samples is bounded using only open unit intervals. -/
theorem sum_logRatioSquare_le_integral (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, logRatioSquare x (d : ℝ)) ≤
      ∫ t in 0..x, logRatioSquare x t := by
  have hx0 : 0 < x := by linarith
  let N := ⌊x⌋₊
  have hN : (N : ℝ) ≤ x := Nat.floor_le hx0.le
  have hi (k : ℕ) (hk : k < N) :
      IntervalIntegrable (logRatioSquare x) volume (k : ℝ) ((k + 1 : ℕ) : ℝ) := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (by norm_num)).mpr
    apply (logRatioSquare_integrableOn x hx0).mono_set
    intro t ht
    refine ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ?_⟩
    exact ht.2.trans ((by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN)
  have hblock (k : ℕ) (hk : k < N) :
      logRatioSquare x ((k + 1 : ℕ) : ℝ) ≤
        ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t := by
    have hb : ((k + 1 : ℕ) : ℝ) ≤ x :=
      (by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN
    have h := intervalIntegral.integral_mono_on_of_le_Ioo
      (f := fun _t : ℝ => logRatioSquare x ((k + 1 : ℕ) : ℝ))
      (by norm_num : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ)) intervalIntegrable_const (hi k hk)
      (fun t ht => logRatioSquare_antitone x hx0
        ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ht.2.le.trans hb⟩
        ⟨by positivity, hb⟩ ht.2.le)
    simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
      add_sub_cancel_left, smul_eq_mul, one_mul] using h
  calc
    _ = ∑ k ∈ Finset.range N, logRatioSquare x ((k + 1 : ℕ) : ℝ) := by
      rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]
      simp only [Nat.add_sub_cancel, Nat.add_comm 1, N]
    _ ≤ ∑ k ∈ Finset.range N, ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t :=
      Finset.sum_le_sum (fun k hk => hblock k (Finset.mem_range.mp hk))
    _ = ∫ t in 0..(N : ℝ), logRatioSquare x t := by
      simpa only [Nat.cast_zero] using intervalIntegral.sum_integral_adjacent_intervals hi
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (Filter.Eventually.of_forall (logRatioSquare_nonneg x)) (logRatioSquare_intervalIntegrable x hx0)

/-- The exact floor-truncated logarithmic majorant has a linear budget. -/
theorem sum_logRatioSquare_le (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2) ≤ 2 * x := by
  have h := sum_logRatioSquare_le_integral x hx
  rw [integral_logRatioSquare x (by linarith)] at h
  exact h

/-- The exact signed Möbius quadrature error, retaining both finite floor cutoffs. -/
def mobiusQuadratureError (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
    LogSquareQuadrature.logSquareQuadrature (x / (d : ℝ))

/-- Every inner quotient lies in the range where its genuine quadrature bound applies. -/
theorem quotient_ge_one (x : ℝ) (hx : 1 ≤ x) (d : ℕ) (hd : d ∈ Finset.Icc 1 ⌊x⌋₊) :
    1 ≤ x / (d : ℝ) := by
  obtain ⟨hd1, hdx⟩ := Finset.mem_Icc.mp hd
  have hdpos : (0 : ℝ) < d := by exact_mod_cast (show 0 < d by omega)
  apply (le_div_iff₀ hdpos).mpr
  simp only [one_mul]
  exact (Nat.cast_le.mpr hdx).trans (Nat.floor_le (by linarith : (0 : ℝ) ≤ x))

/-- The original signed finite Möbius residual has a proved linear budget. -/
theorem mobiusQuadratureError_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusQuadratureError x| ≤ 2 * x := by
  unfold mobiusQuadratureError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        |(ArithmeticFunction.moebius d : ℝ) *
          LogSquareQuadrature.logSquareQuadrature (x / (d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro d hd
      have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      rw [abs_mul]
      exact (mul_le_of_le_one_left (abs_nonneg _) hm).trans
        (LogSquareQuadrature.logSquareQuadrature_abs_le (x / (d : ℝ))
          (quotient_ge_one x hx d hd))
    _ ≤ _ := sum_logRatioSquare_le x hx

/-- Exact finite transport separates the controlled quadrature error without changing its signed main. -/
theorem mobius_prefix_eq_integral_add_error (x : ℝ) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) =
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∫ t in 1..x / (d : ℝ), Real.log t ^ 2) + mobiusQuadratureError x := by
  unfold mobiusQuadratureError LogSquareQuadrature.logSquareQuadrature
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d _
  ring

/-- Literal signed difference of the two unchanged finite arithmetic expressions. -/
theorem mobius_prefix_integral_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |(∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) -
      (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∫ t in 1..x / (d : ℝ), Real.log t ^ 2)| ≤ 2 * x := by
  rw [mobius_prefix_eq_integral_add_error]
  simpa only [add_sub_cancel_left] using mobiusQuadratureError_abs_le x hx

end
end MobiusQuadratureBoundScratch

set_option pp.universes true
#print MobiusQuadratureBoundScratch.logRatioSquare
#print axioms MobiusQuadratureBoundScratch.logRatioSquare
#print MobiusQuadratureBoundScratch.logRatioPrimitive
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive
#print MobiusQuadratureBoundScratch.logRatioSquare_nonneg
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_nonneg
#print MobiusQuadratureBoundScratch.logRatioSquare_le_rpow
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_le_rpow
#print MobiusQuadratureBoundScratch.logRatioSquare_integrableOn
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_integrableOn
#print MobiusQuadratureBoundScratch.logRatioSquare_intervalIntegrable
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_intervalIntegrable
#print MobiusQuadratureBoundScratch.logRatioPrimitive_hasDerivAt
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive_hasDerivAt
#print MobiusQuadratureBoundScratch.logRatioPrimitive_tendsto_zero
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive_tendsto_zero
#print MobiusQuadratureBoundScratch.integral_logRatioSquare
#print axioms MobiusQuadratureBoundScratch.integral_logRatioSquare
#print MobiusQuadratureBoundScratch.logRatioSquare_antitone
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_antitone
#print MobiusQuadratureBoundScratch.sum_logRatioSquare_le_integral
#print axioms MobiusQuadratureBoundScratch.sum_logRatioSquare_le_integral
#print MobiusQuadratureBoundScratch.sum_logRatioSquare_le
#print axioms MobiusQuadratureBoundScratch.sum_logRatioSquare_le
#print MobiusQuadratureBoundScratch.mobiusQuadratureError
#print axioms MobiusQuadratureBoundScratch.mobiusQuadratureError
#print MobiusQuadratureBoundScratch.quotient_ge_one
#print axioms MobiusQuadratureBoundScratch.quotient_ge_one
#print MobiusQuadratureBoundScratch.mobiusQuadratureError_abs_le
#print axioms MobiusQuadratureBoundScratch.mobiusQuadratureError_abs_le
#print MobiusQuadratureBoundScratch.mobius_prefix_eq_integral_add_error
#print axioms MobiusQuadratureBoundScratch.mobius_prefix_eq_integral_add_error
#print MobiusQuadratureBoundScratch.mobius_prefix_integral_abs_le
#print axioms MobiusQuadratureBoundScratch.mobius_prefix_integral_abs_le
