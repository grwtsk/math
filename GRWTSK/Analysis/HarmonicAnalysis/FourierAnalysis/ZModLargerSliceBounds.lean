/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceParameters
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSumCompletion
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy

/-!
# Error comparisons for larger fixed-size slices

These are arithmetic comparisons and consequences of the proved one-element
completion bound. The residual sampling law and the source-range hypotheses
are supplied separately by their actual finite counting and parameter proofs.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceBounds

open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceParameters

theorem source_constant_positive : 0 < sourceConstant := by
  norm_num [sourceConstant]

theorem source_constant_ge_one : 1 ≤ sourceConstant := by
  norm_num [sourceConstant]

theorem larger_constant_positive {ε : ℝ} (hε : 0 < ε) :
    0 < largerSliceConstant ε := by
  unfold largerSliceConstant
  exact div_pos
    (mul_pos (by norm_num) source_constant_positive)
    (by positivity)

theorem larger_constant_mul_sq {ε : ℝ} (hε : 0 < ε) :
    largerSliceConstant ε * ε ^ 2 = 128000 * sourceConstant := by
  unfold largerSliceConstant
  exact div_mul_cancel₀ _ (pow_ne_zero _ hε.ne')

theorem larger_constant_half_mul {ε : ℝ} (hε : 0 < ε) :
    largerSliceConstant ε * ε / 2 = sliceThreshold ε := by
  unfold sliceThreshold
  apply (eq_div_iff hε.ne').mpr
  calc
    (largerSliceConstant ε * ε / 2) * ε =
        (largerSliceConstant ε * ε ^ 2) / 2 := by ring
    _ = (128000 * sourceConstant) / 2 := by
      rw [larger_constant_mul_sq hε]
    _ = 64000 * sourceConstant := by ring

theorem source_constant_le_coefficient {ε : ℝ}
    (hε : 0 < ε) (hε1 : ε ≤ 1) :
    sourceConstant ≤ largerSliceConstant ε * ε := by
  apply (mul_le_mul_iff_of_pos_right hε).mp
  calc
    sourceConstant * ε ≤ sourceConstant := by
      have h := mul_le_mul_of_nonneg_left hε1
        source_constant_positive.le
      simpa only [mul_one] using h
    _ ≤ 128000 * sourceConstant := by
      nlinarith [source_constant_positive]
    _ = (largerSliceConstant ε * ε) * ε := by
      calc
        _ = largerSliceConstant ε * ε ^ 2 :=
          (larger_constant_mul_sq hε).symm
        _ = _ := by ring

theorem sqrt_log_ge_half (n : ℕ) (hn : 2 ≤ n) :
    (1 / 2 : ℝ) ≤ Real.sqrt (Real.log n) := by
  have hlog := GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 ≤ Real.log n := by linarith
  have hsquare := Real.sq_sqrt hlog0
  have hnonneg := Real.sqrt_nonneg (Real.log n)
  nlinarith

/-- Lemma 4.1 and the epsilon margin give a global point-mass bound.
No primality is needed for this step. -/
theorem completion_margin_bound {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p)
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε)
    (hmargin : (m : ℝ) ≤ (1 - ε) * S.card) :
    (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / (ε * S.card) := by
  have hnR : (0 : ℝ) < S.card := by
    exact_mod_cast (show 0 < S.card by omega)
  have hmnR : (m : ℝ) ≤ S.card := by
    have hnonneg : 0 ≤ ε * (S.card : ℝ) :=
      mul_nonneg hε.le hnR.le
    nlinarith
  have hmn : m ≤ S.card := by exact_mod_cast hmnR
  have hq :=
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability_le_one_div_remaining
      S m z hm hmn
  have hp :
      (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / ((S.card - m + 1 : ℕ) : ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_natCast] using
      (Rat.cast_mono (K := ℝ) hq)
  have hden :
      ε * (S.card : ℝ) ≤ ((S.card - m + 1 : ℕ) : ℝ) := by
    rw [Nat.cast_add, Nat.cast_sub hmn, Nat.cast_one]
    nlinarith
  exact hp.trans
    (one_div_le_one_div_of_le (mul_pos hε hnR) hden)

/-- Clearing the two positive denominators reduces the comparison to one
square-root inequality. -/
theorem margin_reciprocal_le_error
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε)
    (hroot :
      Real.sqrt m ≤
        largerSliceConstant ε * ε * Real.sqrt (Real.log n)) :
    1 / (ε * n) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hnR : (0 : ℝ) < n := by
    exact_mod_cast (show 0 < n by omega)
  have hmR : (0 : ℝ) < m := by
    exact_mod_cast (show 0 < m by omega)
  apply (div_le_div_iff₀
    (mul_pos hε hnR)
    (mul_pos hnR (Real.sqrt_pos.mpr hmR))).mpr
  convert mul_le_mul_of_nonneg_left hroot hnR.le using 1 <;> ring

/-- The bounded-cardinality branch. The threshold is exactly one half of
`largerSliceConstant ε * ε`. -/
theorem margin_reciprocal_le_error_of_small_card
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hmn : m ≤ n) {ε : ℝ} (hε : 0 < ε)
    (hcard : (n : ℝ) ≤ sliceThreshold ε ^ 2) :
    1 / (ε * n) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hthreshold : 0 < sliceThreshold ε := by
    unfold sliceThreshold
    exact div_pos
      (mul_pos (by norm_num) source_constant_positive) hε
  have hmnR : (m : ℝ) ≤ n := by exact_mod_cast hmn
  have hrootM : Real.sqrt m ≤ sliceThreshold ε := by
    apply (sq_le_sq₀
      (Real.sqrt_nonneg (m : ℝ)) hthreshold.le).mp
    rw [Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m)]
    exact hmnR.trans hcard
  have hrootL := sqrt_log_ge_half n hn
  have hcoef0 : 0 ≤ largerSliceConstant ε * ε :=
    mul_nonneg (larger_constant_positive hε).le hε.le
  have hscale :
      sliceThreshold ε ≤
        largerSliceConstant ε * ε * Real.sqrt (Real.log n) := by
    calc
      _ = largerSliceConstant ε * ε / 2 :=
        (larger_constant_half_mul hε).symm
      _ ≤ _ := by
        simpa only [div_eq_mul_inv, one_mul] using
          mul_le_mul_of_nonneg_left hrootL hcoef0
  exact margin_reciprocal_le_error n m hn hm hε
    (hrootM.trans hscale)

/-- The small-sample branch needs no large-cardinality hypothesis.
Using `C ≥ 1` avoids introducing `sqrt C`. -/
theorem margin_reciprocal_le_error_of_small_sample
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε) (hε1 : ε ≤ 1)
    (hsample : (m : ℝ) ≤ sourceConstant * Real.log n) :
    1 / (ε * n) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hlog := GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 ≤ Real.log n := by linarith
  have hC2 : sourceConstant ≤ sourceConstant ^ 2 := by
    nlinarith [source_constant_ge_one]
  have hCL :
      sourceConstant * Real.log n ≤
        sourceConstant ^ 2 * Real.log n :=
    mul_le_mul_of_nonneg_right hC2 hlog0
  have hroot :
      Real.sqrt m ≤ sourceConstant * Real.sqrt (Real.log n) := by
    apply (sq_le_sq₀
      (Real.sqrt_nonneg (m : ℝ))
      (mul_nonneg source_constant_positive.le
        (Real.sqrt_nonneg (Real.log n)))).mp
    rw [mul_pow,
      Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m),
      Real.sq_sqrt hlog0]
    exact hsample.trans hCL
  have hroot' :
      Real.sqrt m ≤
        largerSliceConstant ε * ε * Real.sqrt (Real.log n) :=
    hroot.trans (mul_le_mul_of_nonneg_right
      (source_constant_le_coefficient hε hε1)
      (Real.sqrt_nonneg (Real.log n)))
  exact margin_reciprocal_le_error n m hn hm hε hroot'

/-- The retained-slice lower bound controls the square-root loss without
introducing `sqrt ε` into the final constant. -/
theorem scaled_sqrt_sample_le
    (n m k : ℕ) (hn : 2 ≤ n)
    {ε : ℝ} (hε : 0 < ε) (hε1 : ε ≤ 1)
    (hk :
      ε * (m : ℝ) / (2000 * Real.log n) ≤ k) :
    ε * Real.sqrt m ≤
      128000 * Real.sqrt k * Real.sqrt (Real.log n) := by
  have hlog := GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 < Real.log n := by linarith
  have hεsq : ε ^ 2 ≤ ε := by nlinarith
  have hfirst :
      ε ^ 2 * (m : ℝ) ≤ ε * (m : ℝ) :=
    mul_le_mul_of_nonneg_right hεsq (by positivity)
  have hsecond :
      ε * (m : ℝ) ≤ 2000 * Real.log n * k := by
    have h := (div_le_iff₀
      (mul_pos (by norm_num : (0 : ℝ) < 2000) hlog0)).mp hk
    nlinarith
  have hthird :
      2000 * Real.log n * (k : ℝ) ≤
        (128000 : ℝ) ^ 2 * Real.log n * k := by
    have h := mul_le_mul_of_nonneg_right
      (by norm_num : (2000 : ℝ) ≤ 128000 ^ 2)
      (mul_nonneg hlog0.le (by positivity : (0 : ℝ) ≤ k))
    simpa only [mul_assoc] using h
  have hbound := hfirst.trans (hsecond.trans hthird)
  apply (sq_le_sq₀
    (mul_nonneg hε.le (Real.sqrt_nonneg (m : ℝ)))
    (by positivity :
      (0 : ℝ) ≤ 128000 * Real.sqrt k *
        Real.sqrt (Real.log n))).mp
  simp only [mul_pow,
    Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m),
    Real.sq_sqrt (by positivity : (0 : ℝ) ≤ k),
    Real.sq_sqrt hlog0.le]
  nlinarith [hbound]

/-- The source-range error for every actual residual slice is bounded by
the larger-slice error. Its premises are only the proved parameter bounds. -/
theorem slice_error_le
    (n m r k : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε) (hε1 : ε ≤ 1)
    (hr : ε * (n : ℝ) ≤ r)
    (hk :
      ε * (m : ℝ) / (2000 * Real.log n) ≤ k) :
    sourceConstant / ((r : ℝ) * Real.sqrt k) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hnR : (0 : ℝ) < n := by
    exact_mod_cast (show 0 < n by omega)
  have hmR : (0 : ℝ) < m := by
    exact_mod_cast (show 0 < m by omega)
  have hlog := GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 < Real.log n := by linarith
  have hkR : (0 : ℝ) < k :=
    (div_pos (mul_pos hε hmR)
      (mul_pos (by norm_num : (0 : ℝ) < 2000) hlog0)).trans_le hk
  have hrR : (0 : ℝ) < r := (mul_pos hε hnR).trans_le hr
  have hroot := scaled_sqrt_sample_le n m k hn hε hε1 hk
  have hC0 : 0 ≤ sourceConstant := source_constant_positive.le
  have hrootScaled := mul_le_mul_of_nonneg_left hroot
    (by positivity :
      0 ≤ sourceConstant * (n : ℝ) * ε)
  have hresidualScaled := mul_le_mul_of_nonneg_left hr
    (by positivity :
      0 ≤ 128000 * sourceConstant *
        Real.sqrt (Real.log n) * Real.sqrt k)
  have hscaled :
      ε ^ 2 * (sourceConstant * (n : ℝ) * Real.sqrt m) ≤
        ε ^ 2 *
          ((largerSliceConstant ε * Real.sqrt (Real.log n)) *
            ((r : ℝ) * Real.sqrt k)) := by
    calc
      _ = sourceConstant * (n : ℝ) * ε *
          (ε * Real.sqrt m) := by ring
      _ ≤ sourceConstant * (n : ℝ) * ε *
          (128000 * Real.sqrt k * Real.sqrt (Real.log n)) :=
        hrootScaled
      _ = (128000 * sourceConstant *
          Real.sqrt (Real.log n) * Real.sqrt k) *
          (ε * (n : ℝ)) := by ring
      _ ≤ (128000 * sourceConstant *
          Real.sqrt (Real.log n) * Real.sqrt k) * (r : ℝ) :=
        hresidualScaled
      _ = (largerSliceConstant ε * ε ^ 2) *
          Real.sqrt (Real.log n) * Real.sqrt k * (r : ℝ) := by
        rw [larger_constant_mul_sq hε]
      _ = _ := by ring
  have hcross :
      sourceConstant * (n : ℝ) * Real.sqrt m ≤
        (largerSliceConstant ε * Real.sqrt (Real.log n)) *
          ((r : ℝ) * Real.sqrt k) :=
    (mul_le_mul_iff_of_pos_left
      (by positivity : (0 : ℝ) < ε ^ 2)).mp hscaled
  apply (div_le_div_iff₀
    (mul_pos hrR (Real.sqrt_pos.mpr hkR))
    (mul_pos hnR (Real.sqrt_pos.mpr hmR))).mpr
  simpa only [mul_assoc] using hcross

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceBounds
