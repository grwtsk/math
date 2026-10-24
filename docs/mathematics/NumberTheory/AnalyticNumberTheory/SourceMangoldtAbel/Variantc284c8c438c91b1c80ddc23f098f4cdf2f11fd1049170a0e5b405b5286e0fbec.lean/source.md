# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtAbel.Variantc284c8c438c91b1c80ddc23f098f4cdf2f11fd1049170a0e5b405b5286e0fbec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7ced8635e8ea6247ee7c358f39d56c7e762b14e` · SHA-256 `9e54644e290f3658c6021658d47c3401503cf7c6bf2134738f06712a25a800b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.MangoldtLogPrefix.Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.MangoldtLogPrefix.Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner-riesz-paper-and-linked442443-20261007T072344Z/SourceMangoldtAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-!
# The literal full-Mangoldt signed Abel interaction

All prime powers retain their actual closed inventory and coefficients. The
signed work is defined from the existing weighted Mangoldt prefix, not from the
residual or a desired bound. No eventual lower witness is supplied.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.MangoldtLogPrefix.Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMangoldtAbel

open MeasureTheory Set
open scoped BigOperators Interval
open WeightedPrimeMertens SourceFirstPrimeAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMobiusSplit EstimatePrimeSmoothDefect EstimateMertensResidual
open PrimePowerDescent

noncomputable section

/-- The actual weighted Mangoldt prefix on its original closed natural cutoff. -/
def mangoldtLogPrefix (t : ℝ) : ℝ := weightedMangoldt ⌊Real.exp t⌋₊

/-- The actual finite logarithmic test sum; no prime-only mask is used. -/
def mangoldtLogSum (b : ℝ) (F : ℝ → ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n / (n : ℝ) * F (Real.log n)

/-- A difference of closed prefixes retains the unequal endpoint convention. -/
def mangoldtLogWindow (a b : ℝ) (F : ℝ → ℝ) : ℝ :=
  mangoldtLogSum b F - mangoldtLogSum a F

/-- The independent full weighted Mangoldt discrepancy in logarithmic coordinates. -/
def mangoldtLogError (t : ℝ) : ℝ := mangoldtLogPrefix t - t

/-- The actual signed full-Mangoldt work against the original critical source test. -/
def criticalMangoldtWork (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, mangoldtLogError t * deriv (criticalPrimeTest A) t

/-- The open eventual lower target for the actual full-Mangoldt work. -/
def MangoldtWorkTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -C ≤ criticalMangoldtWork A

theorem mangoldtLogPrefix_eq_sum (b : ℝ) :
    mangoldtLogPrefix b = ∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  unfold mangoldtLogPrefix weightedMangoldt
  symm
  apply Finset.sum_subset
  · intro n hn
    simp only [primePowerInventory, Finset.mem_Icc] at hn
    exact Finset.mem_Ioc.mpr ⟨by omega, hn.2⟩
  · intro n hn hnnot
    have hn' := Finset.mem_Ioc.mp hn
    have hn1 : n = 1 := by
      simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
      omega
    subst n
    simp

theorem primePowerInventory_filter_log (b t : ℝ) (ht : t ≤ b) :
    (primePowerInventory b).filter (fun n : ℕ => Real.log n ≤ t) =
      primePowerInventory t := by
  ext n
  simp only [primePowerInventory, Finset.mem_filter, Finset.mem_Icc]
  by_cases hn : 2 ≤ n
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    rw [Real.log_le_iff_le_exp hn0,
      Nat.le_floor_iff (Real.exp_pos b).le, Nat.le_floor_iff (Real.exp_pos t).le]
    constructor
    · exact fun h => ⟨h.1.1, h.2⟩
    · exact fun h => ⟨⟨h.1, h.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩
  · simp [hn]

theorem mangoldtLogPrefix_eq_steps (b t : ℝ) (ht : t ≤ b) :
    mangoldtLogPrefix t = ∑ n ∈ primePowerInventory b,
      if Real.log n ≤ t then ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0 := by
  rw [← Finset.sum_filter, primePowerInventory_filter_log b t ht,
    mangoldtLogPrefix_eq_sum]

theorem mangoldtInventory_log_bounds (b : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory b) : 0 ≤ Real.log (n : ℝ) ∧ Real.log (n : ℝ) ≤ b := by
  have hn' := Finset.mem_Icc.mp hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  refine ⟨Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ n)), ?_⟩
  exact (Real.log_le_iff_le_exp hn0).mpr
    ((Nat.le_floor_iff (Real.exp_pos b).le).mp hn'.2)

theorem mangoldtLogPrefix_zero : mangoldtLogPrefix 0 = 0 := by
  rw [mangoldtLogPrefix_eq_sum]
  simp [primePowerInventory]

theorem mangoldtLogPrefix_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => mangoldtLogPrefix t * deriv F t) volume a b := by
  have hi : IntervalIntegrable (fun t => ∑ p ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0))
      volume a b := by
    have hi' : IntervalIntegrable (∑ p ∈ primePowerInventory b,
        fun t : ℝ => ArithmeticFunction.vonMangoldt p / p *
          (if Real.log p ≤ t then deriv F t else 0)) volume a b :=
      IntervalIntegrable.sum (primePowerInventory b) (fun p _ =>
      (intervalIntegrable_closed_step a b (Real.log p) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul
          (ArithmeticFunction.vonMangoldt p / p))
    have heq : (∑ p ∈ primePowerInventory b,
        fun t : ℝ => ArithmeticFunction.vonMangoldt p / p *
          (if Real.log p ≤ t then deriv F t else 0)) =
        (fun t : ℝ => ∑ p ∈ primePowerInventory b,
          ArithmeticFunction.vonMangoldt p / p * (if Real.log p ≤ t then deriv F t else 0)) := by
      ext t
      simp
    rw [heq] at hi'
    exact hi'
  apply hi.congr
  intro t ht
  dsimp only
  rw [mangoldtLogPrefix_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  split_ifs <;> simp

/-- Exact finite Abel identity anchored below the first Mangoldt atom. -/
theorem mangoldtLogSum_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    mangoldtLogSum b F = F b * mangoldtLogPrefix b -
      ∫ t in 0..b, mangoldtLogPrefix t * deriv F t := by
  have hi := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun p => Real.log p) (fun p => ArithmeticFunction.vonMangoldt p / (p : ℝ))
    (fun p hp => mangoldtInventory_log_bounds b p hp) F hF
  have hint : (∫ t in 0..b, ∑ p ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0)) =
      ∫ t in 0..b, mangoldtLogPrefix t * deriv F t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [mangoldtLogPrefix_eq_steps b t ((uIcc_of_le hb ▸ ht).2), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hint] at hi
  simp_rw [mul_sub] at hi
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, ← mangoldtLogPrefix_eq_sum] at hi
  unfold mangoldtLogSum
  linarith

/-- Both endpoints in the logarithmic window are explicit; the lower Mangoldt atom is excluded. -/
theorem mangoldtLogWindow_abel (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    mangoldtLogWindow a b F = F b * mangoldtLogPrefix b - F a * mangoldtLogPrefix a -
      ∫ t in a..b, mangoldtLogPrefix t * deriv F t := by
  rw [mangoldtLogWindow, mangoldtLogSum_abel b (ha.trans hab) F hF, mangoldtLogSum_abel a ha F hF]
  have hint := intervalIntegral.integral_add_adjacent_intervals
    (mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 a ha F hF)
    (mangoldtLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
  linarith

/-- The lower threshold atom is excluded and the upper threshold atom is included. -/
theorem mangoldtLogWindow_eq_filter (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) :
    mangoldtLogWindow a b F = ∑ p ∈ (primePowerInventory b).filter (fun p : ℕ => a < Real.log p),
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * F (Real.log p) := by
  classical
  have hs := Finset.sum_filter_add_sum_filter_not (primePowerInventory b)
    (fun p : ℕ => Real.log p ≤ a)
    (fun p : ℕ => ArithmeticFunction.vonMangoldt p / (p : ℝ) * F (Real.log p))
  rw [primePowerInventory_filter_log b a hab] at hs
  simp only [not_le] at hs
  unfold mangoldtLogWindow mangoldtLogSum
  linarith

/-- Positive logarithmic windows have the literal half-open natural inventory. -/
theorem mangoldtLogWindow_eq_interval_sum (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) :
    mangoldtLogWindow a b F =
      ∑ n ∈ Finset.Ioc ⌊Real.exp a⌋₊ ⌊Real.exp b⌋₊,
        ArithmeticFunction.vonMangoldt n / (n : ℝ) * F (Real.log n) := by
  rw [mangoldtLogWindow_eq_filter a b hab F]
  congr 1
  ext n
  simp only [primePowerInventory, Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]
  by_cases hn : 2 ≤ n
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    rw [Real.lt_log_iff_exp_lt hn0, ← Nat.floor_lt (Real.exp_pos a).le]
    omega
  · have hfloor : 1 ≤ ⌊Real.exp a⌋₊ := by
      apply (Nat.le_floor_iff (Real.exp_pos a).le).mpr
      simpa using (Real.one_le_exp_iff.mpr ha)
    omega

theorem mangoldtLogError_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => mangoldtLogError t * deriv F t) volume a b := by
  have hi := (mangoldtLogPrefix_mul_deriv_intervalIntegrable a b hab F hF).sub
    ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  simpa only [mangoldtLogError, sub_mul, Pi.sub_apply, Pi.mul_apply, id_eq] using hi

/-- Exact replacement by Lebesgue integration, retaining the signed remainder. -/
theorem mangoldtLogWindow_sub_integral (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    mangoldtLogWindow a b F - (∫ t in a..b, F t) =
      F b * mangoldtLogError b - F a * mangoldtLogError a -
        ∫ t in a..b, mangoldtLogError t * deriv F t := by
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := F) (v' := deriv F)
    (fun t _ => hasDerivAt_id t)
    (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
    (continuous_const.intervalIntegrable a b)
    (hF.continuous_deriv_one.intervalIntegrable a b)
  simp only [one_mul] at hparts
  have hint : (∫ t in a..b, mangoldtLogError t * deriv F t) =
      (∫ t in a..b, mangoldtLogPrefix t * deriv F t) - (∫ t in a..b, t * deriv F t) := by
    simp only [mangoldtLogError, sub_mul]
    exact intervalIntegral.integral_sub
      (mangoldtLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
      ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  rw [mangoldtLogWindow_abel a b ha hab F hF, hint]
  dsimp only [mangoldtLogError]
  nlinarith

/-- Positive natural input is explicit in the exact source-weight transport. -/
theorem natural_source_coefficient_eq_critical_test (A : ℝ) {n : ℕ} (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n =
      ArithmeticFunction.vonMangoldt n / (n : ℝ) * criticalPrimeTest A (Real.log n) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  have he : Real.exp (-Real.log (n : ℝ) / 2) =
      Real.exp (Real.log (n : ℝ) / 2) / (n : ℝ) := by
    calc
      Real.exp (-Real.log (n : ℝ) / 2) =
          Real.exp (Real.log (n : ℝ) / 2 - Real.log n) := by congr 1; ring
      _ = Real.exp (Real.log (n : ℝ) / 2) / Real.exp (Real.log n) :=
        Real.exp_sub _ _
      _ = Real.exp (Real.log (n : ℝ) / 2) / (n : ℝ) := by rw [Real.exp_log hn0]
  unfold closedPrimeWeight exponentialTest criticalPrimeTest
  rw [he]
  ring

/-- The raw weight transport cannot drop positivity at the assigned logarithmic zero. -/
theorem zero_index_weight_transport_guard (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeWeight A 0 ≠ criticalPrimeTest A (Real.log (0 : ℝ)) / (0 : ℝ) := by
  have hw : closedPrimeWeight A 0 = 1 := by
    simp only [closedPrimeWeight, exponentialTest, Nat.cast_zero, Real.log_zero,
      neg_zero, zero_div, Real.exp_zero, one_mul]
    exact EstimateCorrelation.actual_correlation_at_zero A hA
  rw [hw, div_zero]
  norm_num

/-- The original closed prime-power moment is exactly the full-Mangoldt test sum. -/
theorem closedPrimeMoment_eq_mangoldtLogSum (A : ℝ) :
    closedPrimeMoment A = mangoldtLogSum (2 * A) (criticalPrimeTest A) := by
  unfold closedPrimeMoment mangoldtLogSum
  apply Finset.sum_congr rfl
  intro n hn
  exact natural_source_coefficient_eq_critical_test A
    (by have h := (Finset.mem_Icc.mp hn).1; omega)

/-- The lower prefix has no atom; its assigned zero/one endpoints are explicitly removed. -/
theorem mangoldtLogWindow_zero (b : ℝ) (F : ℝ → ℝ) :
    mangoldtLogWindow 0 b F = mangoldtLogSum b F := by
  simp [mangoldtLogWindow, mangoldtLogSum, primePowerInventory]

/-- Exact signed full-prefix Abel reconstruction uses both literal source endpoints. -/
theorem closedPrimeMoment_eq_continuous_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeMoment A = criticalContinuousMoment A - criticalMangoldtWork A := by
  have h := mangoldtLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [mangoldtLogWindow_zero, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [mangoldtLogError, mangoldtLogPrefix_zero, sub_self, zero_mul,
    mul_zero, zero_sub] at h
  rw [← closedPrimeMoment_eq_mangoldtLogSum] at h
  change closedPrimeMoment A - criticalContinuousMoment A = -criticalMangoldtWork A at h
  linarith

/-- The unchanged literal residual retains the full signed interaction. -/
theorem mertensResidual_eq_continuous_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - criticalMangoldtWork A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA]

/-- Exact source prime-power compensation; no absolute estimate enters this equality. -/
theorem primeWork_eq_Mangoldt_work_add_square_higher (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedWork A = criticalMangoldtWork A +
      SourcePrimeSquareMainTerm.primeSquareMoment A +
      SourcePrimePowerPartition.higherPrimePowerMoment A := by
  have h := SourcePrimePowerPartition.closedPrimeMoment_eq_first_square_higher A
  rw [closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  linarith

/-- Eventual full-Mangoldt lower control is equivalent to the unchanged residual upper target.
This theorem supplies neither eventual witness. -/
theorem mangoldt_work_tail_iff_residual_tail :
    MangoldtWorkTailLowerBound ↔ MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
    linarith [h A hRA]
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
    have hr := h A hRA
    rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA] at hr
    linarith

/-- The full work exists as the actual finite-step derivative pairing. -/
theorem criticalMangoldtWork_intervalIntegrable (A : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun t => mangoldtLogError t * deriv (criticalPrimeTest A) t)
      volume 0 (2 * A) :=
  mangoldtLogError_mul_deriv_intervalIntegrable 0 (2 * A) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)

/-- This is the same open signed-pairing frontier, with no new eventual witness. -/
theorem signed_pairing_tail_iff_Mangoldt_work_tail :
    EstimateTailReduction.SignedPairingTailLowerBound ↔ MangoldtWorkTailLowerBound :=
  signed_pairing_tail_iff_mertens_residual_tail.trans mangoldt_work_tail_iff_residual_tail.symm

/-- Both literal prime and full-Mangoldt work retain the same unresolved target. -/
theorem criticalAbel_tail_iff_Mangoldt_work_tail :
    CriticalAbelTailLowerBound ↔ MangoldtWorkTailLowerBound :=
  mertens_residual_tail_iff_criticalAbel_tail.symm.trans
    mangoldt_work_tail_iff_residual_tail.symm

/-- Actual square and higher-power correction remains quantitatively bounded. -/
theorem primeWork_minus_main_sub_Mangoldt_work_abs_le (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ t : ℝ, 0 ≤ t → |WeightedPrimeAbel.primeLogError t| ≤ C)
    (A : ℝ) (hA : 1 ≤ A) :
    |(criticalSignedWork A - SourceDiagonalMainTerm.diagonalMainCoefficient A * A) -
      criticalMangoldtWork A| ≤ 11 * C + SourcePrimePowerPartition.higherPrimePowerBudget := by
  have h := SourcePrimePowerPartition.residual_sub_firstPrime_main_abs_le C hC0 hC A hA
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  convert h using 1
  congr 1
  ring

/-- An unconditional witness bounds the replacement error between the two signed works. -/
theorem primeWork_Mangoldt_work_uniform_replacement_error :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |(criticalSignedWork A - SourceDiagonalMainTerm.diagonalMainCoefficient A * A) -
        criticalMangoldtWork A| ≤ E := by
  obtain ⟨E, hE, herror⟩ :=
    SourcePrimePowerPartition.residual_firstPrime_uniform_replacement_error
  refine ⟨E, hE, ?_⟩
  intro A hA
  have h := herror A hA
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  convert h using 1
  congr 1
  ring

/-- The elementary prefix budget does not estimate its signed critical work. -/
theorem mangoldtLogError_abs_le (t : ℝ) (ht : 0 ≤ t) :
    |mangoldtLogError t| ≤ Real.log 4 + 4 + Real.log 2 := by
  have hx : 1 ≤ Real.exp t := Real.one_le_exp_iff.mpr ht
  have hN : 1 ≤ ⌊Real.exp t⌋₊ := (Nat.one_le_floor_iff (Real.exp t)).mpr hx
  have hm := weightedMangoldt_mertens ⌊Real.exp t⌋₊ hN
  have hf := log_floor_error (Real.exp t) hx
  rw [Real.log_exp] at hf
  unfold mangoldtLogError mangoldtLogPrefix
  calc
    _ = |(weightedMangoldt ⌊Real.exp t⌋₊ - Real.log (⌊Real.exp t⌋₊ : ℝ)) +
          (Real.log (⌊Real.exp t⌋₊ : ℝ) - t)| := by congr 1; ring
    _ ≤ |weightedMangoldt ⌊Real.exp t⌋₊ - Real.log (⌊Real.exp t⌋₊ : ℝ)| +
          |Real.log (⌊Real.exp t⌋₊ : ℝ) - t| := abs_add_le _ _
    _ ≤ _ := add_le_add hm hf

/-- Below the first possible Mangoldt atom the actual error is -t, not zero. -/
theorem mangoldtLogError_below_first_atom {t : ℝ} (ht : t < Real.log 2) :
    mangoldtLogError t = -t := by
  have hi : primePowerInventory t = ∅ := by
    apply Finset.eq_empty_of_forall_notMem
    intro n hn
    have hn' := Finset.mem_Icc.mp hn
    have hb := (mangoldtInventory_log_bounds t n hn).2
    have hlog : Real.log 2 ≤ Real.log (n : ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hn'.1)
    linarith
  rw [mangoldtLogError, mangoldtLogPrefix_eq_sum, hi, Finset.sum_empty, zero_sub]

end
end FormalResearch.RiemannHypothesis.SourceMangoldtAbel
```
