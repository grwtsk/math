import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
# An actual arithmetic obstruction to full-space compression bounds

The literal zeroth bump compression grows at least exponentially times a linear
factor, by the existing unconditional weighted Mangoldt theorem. This does not
estimate the signed source direction. Every prime power and closed cutoff stays
in the sum. grwtsk contributors supplied the research direction and evaluation;
OpenAI Codex supplied this calculation and formalization on 7 October 2026.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.KQHArithmeticCompression

open SourceBumpAutocorrelation SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent
open scoped BigOperators

/-- The literal `(0,0)` compression, in the native exponential convention. -/
def bumpCompression00 (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) *
      overlapProfile (Real.log n / A)

/-- Existing unconditional cost for the weighted full-Mangoldt primitive. -/
def primitiveCost : ℝ := Real.log 4 + 4 + Real.log 2

theorem overlapP0_ge {u : ℝ} (hu : 0 ≤ u) : 1792 ≤ overlapP0 u := by
  dsimp [overlapP0]
  have h2 : 0 ≤ u ^ 2 := by positivity
  have h3 : 0 ≤ u ^ 3 := by positivity
  have h4 : 0 ≤ u ^ 4 := by positivity
  have h5 : 0 ≤ u ^ 5 := by positivity
  have h6 : 0 ≤ u ^ 6 := by positivity
  have h7 : 0 ≤ u ^ 7 := by positivity
  have h8 : 0 ≤ u ^ 8 := by positivity
  linarith

theorem overlapProfile_nonneg {u : ℝ} (hu : 0 ≤ u) (hu2 : u ≤ 2) :
    0 ≤ overlapProfile u := by
  have hp : 0 ≤ overlapP0 u := by linarith [overlapP0_ge hu]
  unfold overlapProfile
  positivity

/-- A rational floor on the genuine middle overlap, with no sampled scales. -/
theorem overlapProfile_ge_middle {u : ℝ} (hu : 1 ≤ u) (hu2 : u ≤ 3 / 2) :
    1 / 437580 ≤ overlapProfile u := by
  have hp := overlapP0_ge (by linarith : 0 ≤ u)
  have hb : (1 / 2 : ℝ) ^ 9 ≤ (2 - u) ^ 9 :=
    pow_le_pow_left₀ (by norm_num) (by linarith) 9
  have hprod := mul_le_mul hb hp (by norm_num : (0 : ℝ) ≤ 1792)
    (by positivity : 0 ≤ (2 - u) ^ 9)
  unfold overlapProfile
  norm_num at hprod ⊢
  nlinarith

private theorem inventory_mono {a b : ℝ} (hab : a ≤ b) :
    primePowerInventory a ⊆ primePowerInventory b := by
  intro n hn
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hn
  exact Finset.mem_Icc.mpr ⟨hlo,
    hhi.trans (Nat.floor_mono (Real.exp_le_exp.mpr hab))⟩

private theorem coefficient_eq_weighted (n : ℕ) (hn : 2 ≤ n) :
    ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) =
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) * Real.exp (Real.log n / 2) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have he : Real.exp (-Real.log (n : ℝ) / 2) =
      Real.exp (Real.log n / 2) / (n : ℝ) := by
    calc
      _ = Real.exp (Real.log (n : ℝ) / 2 - Real.log n) := by congr 1; ring
      _ = _ := by rw [Real.exp_sub, Real.exp_log hn0]
  rw [he]
  ring

/-- An unconditional estimate on the actual positive bump direction. The negative
right side at small scales is deliberate and keeps the theorem all-real. -/
theorem bumpCompression00_lower (A : ℝ) (hA : 0 < A) :
    Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 ≤
      bumpCompression00 A := by
  let S := primePowerInventory (3 * A / 2) \ primePowerInventory A
  have hlowhigh : primePowerInventory A ⊆ primePowerInventory (3 * A / 2) :=
    inventory_mono (by linarith)
  have hhighfull : primePowerInventory (3 * A / 2) ⊆ primePowerInventory (2 * A) :=
    inventory_mono (by linarith)
  have hSfull : S ⊆ primePowerInventory (2 * A) :=
    fun n hn => hhighfull (Finset.mem_sdiff.mp hn).1
  have hSbounds (n : ℕ) (hn : n ∈ S) :
      2 ≤ n ∧ A < Real.log n ∧ Real.log n ≤ 3 * A / 2 := by
    obtain ⟨hhi, hlo⟩ := Finset.mem_sdiff.mp hn
    have h2 := (Finset.mem_Icc.mp hhi).1
    have ht := (mangoldtInventory_log_bounds (3 * A / 2) n hhi).2
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    have ha : A < Real.log n := by
      by_contra h
      have hlog : Real.log (n : ℝ) ≤ A := le_of_not_gt h
      have hexp : (n : ℝ) ≤ Real.exp A := (Real.log_le_iff_le_exp hn0).mp hlog
      exact hlo (Finset.mem_Icc.mpr ⟨h2,
        (Nat.le_floor_iff (Real.exp_pos A).le).mpr hexp⟩)
    exact ⟨h2, ha, ht⟩
  have hcoeff (n : ℕ) (hn : n ∈ S) :
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
          (Real.exp (A / 2) / 437580) ≤
        ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) *
          overlapProfile (Real.log n / A) := by
    obtain ⟨h2, hlo, hhi⟩ := hSbounds n hn
    have hn0 : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
      div_nonneg ArithmeticFunction.vonMangoldt_nonneg hn0
    have hu : 1 ≤ Real.log (n : ℝ) / A := (le_div_iff₀ hA).mpr (by linarith)
    have huv : Real.log (n : ℝ) / A ≤ 3 / 2 :=
      (div_le_iff₀ hA).mpr (by linarith)
    have hp := overlapProfile_ge_middle hu huv
    have he : Real.exp (A / 2) ≤ Real.exp (Real.log n / 2) :=
      Real.exp_le_exp.mpr (by linarith)
    have hm := mul_le_mul he hp (by norm_num : (0 : ℝ) ≤ 1 / 437580)
      (Real.exp_pos _).le
    rw [coefficient_eq_weighted n h2]
    nlinarith [mul_le_mul_of_nonneg_left hm hw]
  have hsum := Finset.sum_le_sum hcoeff
  have hsubset : (∑ n ∈ S, ArithmeticFunction.vonMangoldt n *
      Real.exp (-Real.log n / 2) * overlapProfile (Real.log n / A)) ≤
      bumpCompression00 A := by
    unfold bumpCompression00
    apply Finset.sum_le_sum_of_subset_of_nonneg hSfull
    intro n hn _
    have hb := mangoldtInventory_log_bounds (2 * A) n hn
    have hu : 0 ≤ Real.log (n : ℝ) / A := div_nonneg hb.1 hA.le
    have huv : Real.log (n : ℝ) / A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
    exact mul_nonneg (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
      (Real.exp_pos _).le) (overlapProfile_nonneg hu huv)
  have hs : (∑ n ∈ S, ArithmeticFunction.vonMangoldt n / (n : ℝ)) =
      mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A := by
    rw [mangoldtLogPrefix_eq_sum, mangoldtLogPrefix_eq_sum]
    exact Finset.sum_sdiff_eq_sub hlowhigh
  have hupper := (abs_le.mp (mangoldtLogError_abs_le A hA.le)).2
  have hlower := (abs_le.mp (mangoldtLogError_abs_le (3 * A / 2) (by positivity))).1
  change mangoldtLogPrefix A - A ≤ primitiveCost at hupper
  change -primitiveCost ≤ mangoldtLogPrefix (3 * A / 2) - 3 * A / 2 at hlower
  have hprefix : A / 2 - 2 * primitiveCost ≤
      mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A := by linarith
  have hmul := mul_le_mul_of_nonneg_right hprefix
    (by positivity : 0 ≤ Real.exp (A / 2) / 437580)
  rw [← Finset.sum_mul, hs] at hsum
  calc
    _ = (A / 2 - 2 * primitiveCost) * (Real.exp (A / 2) / 437580) := by ring
    _ ≤ (mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A) *
        (Real.exp (A / 2) / 437580) := hmul
    _ ≤ _ := hsum.trans hsubset

theorem primitiveCost_nonneg : 0 ≤ primitiveCost := by
  unfold primitiveCost
  linarith [Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4),
    Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)]

/-- Actual finite prime sums have no uniform full-space zeroth-mode cap. -/
theorem bumpCompression00_unbounded (B : ℝ) :
    ∃ A : ℝ, 0 < A ∧ B < bumpCompression00 A := by
  let A := 4 * primitiveCost + 875160 * (|B| + 1)
  have hA : 0 < A := by dsimp [A]; nlinarith [primitiveCost_nonneg, abs_nonneg B]
  have hp : 0 ≤ A / 2 - 2 * primitiveCost := by
    dsimp [A]; nlinarith [abs_nonneg B]
  have he : 1 ≤ Real.exp (A / 2) := Real.one_le_exp (by positivity)
  have hm := mul_le_mul_of_nonneg_right he hp
  have hl := bumpCompression00_lower A hA
  refine ⟨A, hA, ?_⟩
  have hB : B ≤ |B| := le_abs_self B
  dsimp [A] at hl hm
  nlinarith

/-- A proposed rank-one certificate must pay its positive zeroth-mode diagonal. -/
theorem rankPenalty_lower (A B k : ℝ) (hA : 0 < A)
    (hdiag : 0 ≤ B * (65536 / 109395 : ℝ) - bumpCompression00 A + k / A ^ 4) :
    A ^ 4 * (Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 -
      B * (65536 / 109395 : ℝ)) ≤ k := by
  have hl := bumpCompression00_lower A hA
  have hp : 0 < A ^ 4 := by positivity
  have hquot : Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 -
      B * (65536 / 109395 : ℝ) ≤ k / A ^ 4 := by linarith
  simpa only [mul_comm] using (le_div_iff₀ hp).mp hquot

end FormalResearch.RiemannHypothesis.KQHArithmeticCompression
