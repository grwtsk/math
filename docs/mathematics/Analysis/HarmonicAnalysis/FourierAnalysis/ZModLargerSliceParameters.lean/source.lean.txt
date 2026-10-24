/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModPartitionEnergy
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
# Parameters for larger fixed-size subset slices

Scalar and integer parameter estimates used in Pham--Sauermann,
arXiv:2602.15797v1, Corollary 1.4.
-/

namespace GRWTSK.ZModLargerSliceParameters

def sourceConstant : ℝ := 2 ^ 24

noncomputable def sliceThreshold (ε : ℝ) : ℝ :=
  64000 * sourceConstant / ε

noncomputable def largerSliceConstant (ε : ℝ) : ℝ :=
  128000 * sourceConstant / ε ^ 2

noncomputable def auxiliarySliceSize (ε : ℝ) (n : ℕ) : ℕ :=
  ⌊ε * n / (1000 * Real.log n)⌋₊

noncomputable def retainedSliceSize (ε : ℝ) (n m : ℕ) : ℕ :=
  min m (auxiliarySliceSize ε n)

theorem sourceConstant_pos : 0 < sourceConstant := by
  norm_num [sourceConstant]

theorem sourceConstant_ge_one : (1 : ℝ) ≤ sourceConstant := by
  norm_num [sourceConstant]

theorem log_sq_le_sixteen_sqrt (x : ℝ) (hx : 1 ≤ x) :
    (Real.log x) ^ 2 ≤ 16 * Real.sqrt x := by
  have hx0 : 0 ≤ x := by linarith
  have hlog0 : 0 ≤ Real.log x := Real.log_nonneg hx
  have hs₁ := Real.log_sqrt hx0
  have hs₂ := Real.log_sqrt (Real.sqrt_nonneg x)
  have hu := Real.log_le_self (Real.sqrt_nonneg (Real.sqrt x))
  rw [hs₂, hs₁] at hu
  have hlog : Real.log x ≤ 4 * Real.sqrt (Real.sqrt x) := by
    linarith
  have hsq := pow_le_pow_left₀ hlog0 hlog 2
  nlinarith [Real.sq_sqrt (Real.sqrt_nonneg x)]

theorem sourceConstant_mul_log_ge_two (n : ℕ) (hn : 2 ≤ n) :
    (2 : ℝ) ≤ sourceConstant * Real.log n := by
  have hlog := GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hC : (4 : ℝ) ≤ sourceConstant := by
    norm_num [sourceConstant]
  have hmul := mul_le_mul_of_nonneg_left hlog sourceConstant_pos.le
  nlinarith

private theorem sample_le_card_of_density (ε : ℝ) (hε : 0 ≤ ε)
    (n m : ℕ) (hdensity : (m : ℝ) ≤ (1 - ε) * n) :
    m ≤ n := by
  have hmul : 0 ≤ ε * (n : ℝ) :=
    mul_nonneg hε (Nat.cast_nonneg n)
  have hmn : (m : ℝ) ≤ n := by
    nlinarith
  exact_mod_cast hmn

theorem large_card_log_square (ε : ℝ) (hε : 0 < ε)
    (n : ℕ) (hn : 2 ≤ n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ)) :
    (4000 * sourceConstant / ε) * (Real.log n) ^ 2 ≤ n := by
  have hn1 : (1 : ℝ) ≤ n := by
    exact_mod_cast (show 1 ≤ n by omega)
  have hlog := log_sq_le_sixteen_sqrt (n : ℝ) hn1
  have hC := sourceConstant_pos
  have hA : 0 < 4000 * sourceConstant / ε := by
    positivity
  have hK : 0 < sliceThreshold ε := by
    unfold sliceThreshold
    positivity
  have hroot : sliceThreshold ε ≤ Real.sqrt n :=
    (Real.le_sqrt hK.le (Nat.cast_nonneg n)).mpr hlarge
  calc
    _ ≤ (4000 * sourceConstant / ε) * (16 * Real.sqrt n) :=
      mul_le_mul_of_nonneg_left hlog hA.le
    _ = sliceThreshold ε * Real.sqrt n := by
      unfold sliceThreshold
      ring
    _ ≤ Real.sqrt n * Real.sqrt n :=
      mul_le_mul_of_nonneg_right hroot (Real.sqrt_nonneg _)
    _ = n := Real.mul_self_sqrt (Nat.cast_nonneg n)

theorem auxiliarySliceSize_bounds (ε : ℝ) (hε : 0 < ε)
    (n : ℕ) (hn : 2 ≤ n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ)) :
    2 ≤ auxiliarySliceSize ε n ∧
    ε * n / (2000 * Real.log n) ≤ auxiliarySliceSize ε n ∧
    2 * sourceConstant * Real.log n ≤ auxiliarySliceSize ε n ∧
    (auxiliarySliceSize ε n : ℝ) ≤
      ε * n / (1000 * Real.log n) := by
  let x : ℝ := ε * n / (1000 * Real.log n)
  have hloghalf :=
    GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlogpos : 0 < Real.log (n : ℝ) := by
    linarith
  have hcut := large_card_log_square ε hε n hn hlarge
  have hscaled := mul_le_mul_of_nonneg_left hcut hε.le
  have hcancel :
      ε * ((4000 * sourceConstant / ε) * (Real.log n) ^ 2) =
        4000 * sourceConstant * (Real.log n) ^ 2 := by
    field_simp [ne_of_gt hε]
  rw [hcancel] at hscaled
  have hraw :
      4 * sourceConstant * Real.log n ≤ x := by
    change 4 * sourceConstant * Real.log n ≤
      ε * n / (1000 * Real.log n)
    apply (le_div_iff₀
      (by positivity : 0 < 1000 * Real.log (n : ℝ))).mpr
    calc
      (4 * sourceConstant * Real.log n) *
          (1000 * Real.log n) =
          4000 * sourceConstant * (Real.log n) ^ 2 := by ring
      _ ≤ ε * n := hscaled
  have hCL := sourceConstant_mul_log_ge_two n hn
  have hx2 : (2 : ℝ) ≤ x := by
    nlinarith
  have hround :
      x < (auxiliarySliceSize ε n : ℝ) + 1 := by
    change x < (⌊x⌋₊ : ℝ) + 1
    exact Nat.lt_floor_add_one x
  have hhalf :
      x / 2 ≤ (auxiliarySliceSize ε n : ℝ) := by
    linarith
  have hfloorC :
      2 * sourceConstant * Real.log n ≤ auxiliarySliceSize ε n := by
    nlinarith
  have hfloor2 : 2 ≤ auxiliarySliceSize ε n := by
    have hfloor2R :
        (2 : ℝ) ≤ (auxiliarySliceSize ε n : ℝ) := by
      nlinarith
    exact_mod_cast hfloor2R
  have hfloorUpper :
      (auxiliarySliceSize ε n : ℝ) ≤ x := by
    change (⌊x⌋₊ : ℝ) ≤ x
    exact Nat.floor_le (by linarith)
  refine ⟨hfloor2, ?_, hfloorC, hfloorUpper⟩
  calc
    ε * n / (2000 * Real.log n) = x / 2 := by
      dsimp [x]
      field_simp [ne_of_gt hlogpos]
      ring
    _ ≤ auxiliarySliceSize ε n := hhalf

theorem retainedSliceSize_bounds
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hdensity : (m : ℝ) ≤ (1 - ε) * n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ))
    (hsample : sourceConstant * Real.log n < m) :
    let k := retainedSliceSize ε n m
    2 ≤ k ∧
    k ≤ m ∧
    sourceConstant * Real.log n ≤ k ∧
    (k : ℝ) ≤ ε * n / (1000 * Real.log n) ∧
    ε * m / (2000 * Real.log n) ≤ k := by
  let k := retainedSliceSize ε n m
  change 2 ≤ k ∧ k ≤ m ∧
    sourceConstant * Real.log n ≤ k ∧
    (k : ℝ) ≤ ε * n / (1000 * Real.log n) ∧
    ε * m / (2000 * Real.log n) ≤ k
  obtain ⟨_hf2, hfLower, hfC, hfUpper⟩ :=
    auxiliarySliceSize_bounds ε hε n hn hlarge
  have hmn : m ≤ n :=
    sample_le_card_of_density ε hε.le n m hdensity
  have hmnR : (m : ℝ) ≤ n := by
    exact_mod_cast hmn
  have hmR : (0 : ℝ) ≤ m := by
    exact_mod_cast (Nat.zero_le 1).trans hm
  have hloghalf :=
    GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlogpos : 0 < Real.log (n : ℝ) := by
    linarith
  have hden : 0 < 2000 * Real.log (n : ℝ) := by
    positivity
  have hkm : k ≤ m := by
    exact Nat.min_le_left m (auxiliarySliceSize ε n)
  have hkf : k ≤ auxiliarySliceSize ε n := by
    exact Nat.min_le_right m (auxiliarySliceSize ε n)
  have hkfR : (k : ℝ) ≤ auxiliarySliceSize ε n := by
    exact_mod_cast hkf
  have hCL0 : 0 ≤ sourceConstant * Real.log n :=
    mul_nonneg sourceConstant_pos.le hlogpos.le
  have hfC' :
      sourceConstant * Real.log n ≤ auxiliarySliceSize ε n := by
    nlinarith
  have hkC : sourceConstant * Real.log n ≤ k := by
    dsimp only [k, retainedSliceSize]
    rw [Nat.cast_min]
    exact le_min hsample.le hfC'
  have hk2 : 2 ≤ k := by
    have hk2R : (2 : ℝ) ≤ k :=
      (sourceConstant_mul_log_ge_two n hn).trans hkC
    exact_mod_cast hk2R
  have hkUpper :
      (k : ℝ) ≤ ε * n / (1000 * Real.log n) :=
    hkfR.trans hfUpper
  have hscale : ε ≤ 2000 * Real.log (n : ℝ) := by
    linarith
  have hsmallLeft :
      ε * m / (2000 * Real.log n) ≤ (m : ℝ) := by
    apply (div_le_iff₀ hden).mpr
    calc
      ε * (m : ℝ) ≤ (2000 * Real.log n) * m :=
        mul_le_mul_of_nonneg_right hscale hmR
      _ = (m : ℝ) * (2000 * Real.log n) := by ring
  have hsmallRight :
      ε * m / (2000 * Real.log n) ≤
        (auxiliarySliceSize ε n : ℝ) := by
    calc
      _ ≤ ε * n / (2000 * Real.log n) :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hmnR hε.le) hden.le
      _ ≤ _ := hfLower
  have hkLower :
      ε * m / (2000 * Real.log n) ≤ (k : ℝ) := by
    dsimp only [k, retainedSliceSize]
    rw [Nat.cast_min]
    exact le_min hsmallLeft hsmallRight
  exact ⟨hk2, hkm, hkC, hkUpper, hkLower⟩

theorem residualSliceSize_source_range
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hdensity : (m : ℝ) ≤ (1 - ε) * n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ))
    (hsample : sourceConstant * Real.log n < m) :
    let k := retainedSliceSize ε n m
    let r := n - m + k
    n - (m - k) = r ∧
    k ≤ r ∧
    r ≤ n ∧
    ε * n ≤ (r : ℝ) ∧
    2 ≤ r ∧
    sourceConstant * Real.log r ≤ k ∧
    (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r := by
  let k := retainedSliceSize ε n m
  let r := n - m + k
  change n - (m - k) = r ∧ k ≤ r ∧ r ≤ n ∧
    ε * n ≤ (r : ℝ) ∧ 2 ≤ r ∧
    sourceConstant * Real.log r ≤ k ∧
    (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r
  obtain ⟨hk2, hkm, hkC, hkUpper, _hkLower⟩ :=
    retainedSliceSize_bounds ε hε hε1 n m hn hm
      hdensity hlarge hsample
  change 2 ≤ k at hk2
  change k ≤ m at hkm
  change sourceConstant * Real.log n ≤ (k : ℝ) at hkC
  change (k : ℝ) ≤ ε * n / (1000 * Real.log n) at hkUpper
  have hmn : m ≤ n :=
    sample_le_card_of_density ε hε.le n m hdensity
  have hdecomp : n - (m - k) = r := by
    dsimp only [r]
    omega
  have hkr : k ≤ r := by
    dsimp only [r]
    omega
  have hrn : r ≤ n := by
    dsimp only [r]
    omega
  have hrcast :
      (r : ℝ) = (n : ℝ) - m + k := by
    dsimp only [r]
    rw [Nat.cast_add, Nat.cast_sub hmn]
  have hrLower : ε * n ≤ (r : ℝ) := by
    rw [hrcast]
    have hk0 : (0 : ℝ) ≤ k := by positivity
    nlinarith
  have hr2 : 2 ≤ r := hk2.trans hkr
  have hrPos : (0 : ℝ) < r := by
    exact_mod_cast (show 0 < r by omega)
  have hrnR : (r : ℝ) ≤ n := by
    exact_mod_cast hrn
  have hlognPos : 0 < Real.log (n : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hlogrPos : 0 < Real.log (r : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < r by omega))
  have hlogrn : Real.log (r : ℝ) ≤ Real.log n :=
    Real.log_le_log hrPos hrnR
  have hsourceLower :
      sourceConstant * Real.log r ≤ (k : ℝ) :=
    (mul_le_mul_of_nonneg_left hlogrn sourceConstant_pos.le).trans hkC
  have hsourceUpper' :
      (k : ℝ) ≤ (r : ℝ) / (1000 * Real.log r) := by
    calc
      _ ≤ ε * n / (1000 * Real.log n) := hkUpper
      _ ≤ (r : ℝ) / (1000 * Real.log n) :=
        div_le_div_of_nonneg_right hrLower (by positivity)
      _ ≤ (r : ℝ) / (1000 * Real.log r) :=
        div_le_div_of_nonneg_left hrPos.le
          (by positivity : 0 < 1000 * Real.log (r : ℝ))
          (mul_le_mul_of_nonneg_left hlogrn (by norm_num))
  have hsourceUpper :
      (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r := by
    calc
      _ ≤ (r : ℝ) / (1000 * Real.log r) := hsourceUpper'
      _ = (1 / 1000 : ℝ) * r / Real.log r := by
        field_simp [ne_of_gt hlogrPos]
  exact ⟨hdecomp, hkr, hrn, hrLower, hr2, hsourceLower, hsourceUpper⟩

end GRWTSK.ZModLargerSliceParameters
