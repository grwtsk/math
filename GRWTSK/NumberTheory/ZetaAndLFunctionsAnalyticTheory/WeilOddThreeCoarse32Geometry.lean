/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors. AI-assisted source drafting.
SOURCE_PROOF_CANDIDATE / ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerCellDeficit
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTriangle

/-!
# A coarser certified envelope for the original conductor-three sine deficit

Each 1/32-frequency cell is exactly four consecutive cells of the existing
1/128 checker, so the price is the maximum of FOUR already source-certified
fine prices. Nothing is recomputed or silently replaced in the gamma/prime
source. The sinc table is sampled at four times the coarse index, i.e. at the
same exact real frequency in the original 1/128 table. The new variation
term pays for the entire coarse pair cell, including both orientations.

The consumer is the 32-grid exact-integer certificate and the unchanged
`q3_primitiveStageLower_of_rectangle_le_one` in the following module.
This module establishes NO RH or full conductor-three all-scale claim.
-/

set_option autoImplicit false
open Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerCoarse32

open CheckerRounding (scale checkerMidpointLower)
open CheckerTriangle (price rawDeficit)

/-- 8192 coarse cells, each with four original 1/128 cells. -/
def fineIndex (i : Fin 8192) (r : Fin 4) : Fin 32768 :=
  ⟨4 * i.val + r.val, by
    have hi := i.isLt
    have hr := r.isLt
    omega⟩

/-- The literal, source-certified 1/128 upper price. -/
def finePrice (i : Fin 8192) (r : Fin 4) : ℕ :=
  CheckerTriangle.price (CheckerTriangle.rawDeficit checkerMidpointLower) (fineIndex i r)

/-- Maximum of the four original prices: a sound 1/32 cell envelope. -/
def coarsePrice (i : Fin 8192) : ℕ :=
  max (max (finePrice i 0) (finePrice i 1))
      (max (finePrice i 2) (finePrice i 3))

/-- No original 1/128 frequency cell is discarded. -/
theorem finePrice_le_coarsePrice (i : Fin 8192) (r : Fin 4) :
    finePrice i r ≤ coarsePrice i := by
  fin_cases r <;> simp only [coarsePrice] <;> omega

/-- The coarse grid uses the same half-open conventions as the source. -/
def cell (i : Fin 8192) : Set ℝ :=
  Ioc ((i.val : ℝ) * (1 / 32)) (((i.val : ℝ) + 1) * (1 / 32))

/-- Every point of a coarse cell belongs to one of its four original cells. -/
theorem exists_fine_cell (i : Fin 8192) (x : ℝ) (hx : x ∈ cell i) :
    ∃ r : Fin 4, x ∈ CheckerTriangle.cell (fineIndex i r) := by
  have hlo : (4 * (i.val : ℝ)) / 128 < x := by
    have h := hx.1
    dsimp [cell] at h
    linarith
  have hhi : x ≤ (4 * (i.val : ℝ) + 4) / 128 := by
    have h := hx.2
    dsimp [cell] at h
    linarith
  have hmem (r : Fin 4)
      (hl : (4 * (i.val : ℝ) + (r.val : ℝ)) / 128 < x)
      (hu : x ≤ (4 * (i.val : ℝ) + (r.val : ℝ) + 1) / 128) :
      x ∈ CheckerTriangle.cell (fineIndex i r) := by
    change ((fineIndex i r).val : ℝ) * (1 / 128) < x ∧
      x ≤ (((fineIndex i r).val : ℝ) + 1) * (1 / 128)
    constructor
    · convert hl using 1 <;> simp only [fineIndex, Fin.val_mk] <;> push_cast <;> ring
    · convert hu using 1 <;> simp only [fineIndex, Fin.val_mk] <;> push_cast <;> ring
  by_cases h1 : x ≤ (4 * (i.val : ℝ) + 1) / 128
  · refine ⟨0, hmem 0 ?_ ?_⟩ <;> norm_num at * <;> linarith
  by_cases h2 : x ≤ (4 * (i.val : ℝ) + 2) / 128
  · refine ⟨1, hmem 1 ?_ ?_⟩ <;> norm_num at * <;> linarith
  by_cases h3 : x ≤ (4 * (i.val : ℝ) + 3) / 128
  · refine ⟨2, hmem 2 ?_ ?_⟩ <;> norm_num at * <;> linarith
  · refine ⟨3, hmem 3 ?_ ?_⟩ <;> norm_num at * <;> linarith

/-- Original gamma and all signed prime-power terms are retained verbatim. -/
theorem q3SineDeficit_le_coarsePrice
    (χ : DirichletCharacter ℂ 3) (hodd : OddRootProjection.gammaParity χ = 1)
    (i : Fin 8192) (x : ℝ) (hx : x ∈ cell i) :
    q3SineDeficit χ x ≤ (coarsePrice i : ℝ) / (scale : ℝ) := by
  obtain ⟨r, hr⟩ := exists_fine_cell i x hx
  have hs : 0 ≤ (scale : ℝ) := by norm_num [scale]
  have hf := CheckerTriangle.q3SineDeficit_le_checkerCellPrice χ hodd (fineIndex i r) x hr
  change q3SineDeficit χ x ≤ (finePrice i r : ℝ) / (scale : ℝ) at hf
  exact hf.trans (div_le_div_of_nonneg_right
    (by exact_mod_cast finePrice_le_coarsePrice i r) hs)

/-- Reuse, rather than replace, the rigorously bounded original sinc table. -/
def sincSample (n : ℕ) : ℤ := CheckerTriangle.sincEntry (4 * n)

/-- Two source-lookup errors plus the full 1/32 pair-cell variation. -/
def variation : ℕ := 2 * (500 * 128 + 1) + scale.toNat / 32

def pairMajor (i j : ℕ) : ℕ :=
  (sincSample (Nat.dist i j) - sincSample (i + j + 1)).natAbs + variation

theorem pairMajor_comm (i j : ℕ) : pairMajor i j = pairMajor j i := by
  unfold pairMajor
  rw [Nat.dist_comm, Nat.add_comm i j]

private theorem scale_pos : (0 : ℝ) < (scale : ℝ) := by norm_num [scale]

/-- The source sinc lookup at index 4n samples n/32 without new rounding. -/
private theorem abs_sincSample_sub_scaled_sinc_lt (n : ℕ) (hn : 4 * n ≤ 65535) :
    |(sincSample n : ℝ) - (scale : ℝ) * Real.sinc ((n : ℝ) / 32)| <
      212 * 128 + 1 := by
  have h := CheckerRounding.abs_sincEntry_sub_scaled_sinc_lt
    CheckerTriangle.sincEntry (4 * n) hn rfl
  have heq : (((4 * n : ℕ) : ℝ) / 128) = (n : ℝ) / 32 := by
    push_cast
    ring
  change |(sincSample n : ℝ) - (scale : ℝ) * Real.sinc (((4 * n : ℕ) : ℝ) / 128)| <
    212 * 128 + 1 at h
  rwa [heq] at h

private theorem center_distance (i : Fin 8192) {x : ℝ} (hx : x ∈ cell i) :
    |x - (2 * (i.val : ℝ) + 1) / 64| ≤ 1 / 64 := by
  change |x - (2 * (i.val : ℝ) + 1) / 64| ≤ 1 / 64
  apply abs_le.mpr
  dsimp [cell] at hx
  constructor <;> linarith [hx.1, hx.2]

/-- A whole coarse pair-cell is controlled by the actual original sinc values. -/
theorem abs_sincDifference_le_pairMajor (i j : Fin 8192)
    (hji : j ≤ i) (x y : ℝ) (hx : x ∈ cell i) (hy : y ∈ cell j) :
    |Real.sinc (x - y) - Real.sinc (x + y)| ≤
      (pairMajor i.val j.val : ℝ) / (scale : ℝ) := by
  let d := Nat.dist i.val j.val
  let s := i.val + j.val + 1
  let u := (2 * (i.val : ℝ) + 1) / 64
  let v := (2 * (j.val : ℝ) + 1) / 64
  let F := Real.sinc (x - y) - Real.sinc (x + y)
  let M := Real.sinc (u - v) - Real.sinc (u + v)
  let t := (sincSample d : ℝ) - (sincSample s : ℝ)
  have hle : j.val ≤ i.val := hji
  have hdist : d = i.val - j.val := Nat.dist_eq_sub_of_le_right hle
  have hd : d ≤ s := by dsimp [d, s]; rw [hdist]; omega
  have hs : 4 * s ≤ 65535 := by
    dsimp [s]
    have hi := i.isLt
    have hj := j.isLt
    omega
  have hdu : u - v = (d : ℝ) / 32 := by
    rw [hdist, Nat.cast_sub hle]
    dsimp [u, v]
    ring
  have hsu : u + v = (s : ℝ) / 32 := by
    dsimp [u, v, s]
    push_cast
    ring
  have hdError := abs_sincSample_sub_scaled_sinc_lt d (by omega)
  have hsError := abs_sincSample_sub_scaled_sinc_lt s hs
  have hmid : |(scale : ℝ) * M - t| ≤ 2 * (212 * 128 + 1) := by
    dsimp [M, t]
    rw [hdu, hsu]
    let a := (sincSample d : ℝ) - (scale : ℝ) * Real.sinc ((d : ℝ) / 32)
    let b := (sincSample s : ℝ) - (scale : ℝ) * Real.sinc ((s : ℝ) / 32)
    rw [show (scale : ℝ) * (Real.sinc ((d : ℝ) / 32) - Real.sinc ((s : ℝ) / 32)) -
       ((sincSample d : ℝ) - (sincSample s : ℝ)) = b - a by dsimp [a, b]; ring]
    rw [two_mul]
    exact (abs_sub b a).trans (add_le_add hsError.le hdError.le)
  have hgeom : |(scale : ℝ) * F - (scale : ℝ) * M| ≤ (scale : ℝ) * (1 / 64) := by
    rw [← mul_sub, abs_mul, abs_of_pos scale_pos]
    exact mul_le_mul_of_nonneg_left
      ((OddSineKernelOverlap.abs_sinc_difference_perturbation_le x y u v).trans
        (max_le (center_distance i hx) (center_distance j hy))) scale_pos.le
  have ht : |t| = ((sincSample d - sincSample s).natAbs : ℝ) := by
    dsimp [t]
    rw [← Int.cast_sub, ← Int.cast_abs, Int.abs_eq_natAbs, Int.cast_natCast]
  change |F| ≤ (((sincSample d - sincSample s).natAbs + variation : ℕ) : ℝ) / (scale : ℝ)
  apply (le_div_iff₀ scale_pos).2
  have htri₁ := abs_sub_le ((scale : ℝ) * F) ((scale : ℝ) * M) 0
  have htri₂ := abs_sub_le ((scale : ℝ) * M) t 0
  simp only [sub_zero] at htri₁ htri₂
  calc
    |F| * (scale : ℝ) = |(scale : ℝ) * F| := by
      rw [abs_mul, abs_of_pos scale_pos, mul_comm]
    _ ≤ (scale : ℝ) * (1 / 64) + 2 * (212 * 128 + 1) + |t| := by
      linarith only [htri₁, htri₂, hgeom, hmid]
    _ ≤ _ := by
      rw [ht, Nat.cast_add]
      have hbudget : (scale : ℝ) * (1 / 64) + 2 * (212 * 128 + 1) ≤ (variation : ℝ) := by
        norm_num [variation, scale]
      linarith only [hbudget]

/-- Only the original signed source is used in the numerator. -/
def rawPrice (i : Fin 8192) : ℤ := (coarsePrice i : ℤ)

def numerator : ℕ :=
  CheckerTriangle.triangularSum rawPrice (fun i j => pairMajor i.val j.val)

def denominator : ℕ := scale.toNat ^ 2 * 32 ^ 2 * 3141592653589 ^ 2

private theorem price_rawPrice (i : Fin 8192) :
    CheckerTriangle.price rawPrice i = coarsePrice i := by
  simp [CheckerTriangle.price, rawPrice]

private theorem abs_sinc_difference_comm (x y : ℝ) :
    |Real.sinc (x - y) - Real.sinc (x + y)| =
      |Real.sinc (y - x) - Real.sinc (y + x)| := by
  rw [show x - y = -(y - x) by ring, Real.sinc_neg, add_comm x y]

/-- The complete original continuum rectangle is bounded by one exact natural
number. The signed arithmetic source is not replaced by a positive surrogate. -/
theorem rectangle_le_coarse32_fraction (χ : DirichletCharacter ℂ 3)
    (hodd : OddRootProjection.gammaParity χ = 1) :
    sineDeficitRectangle 256 (q3SineDeficit χ) ≤
      (numerator : ℝ) / (denominator : ℝ) := by
  let D : Fin 8192 → ℝ := fun i => (CheckerTriangle.price rawPrice i : ℝ) / (scale : ℝ)
  let A : Fin 8192 × Fin 8192 → ℝ := fun ij =>
    (pairMajor ij.1.val ij.2.val : ℝ) / (scale : ℝ)
  have hR : ((8192 : ℕ) : ℝ) * (1 / 32) = 256 := by norm_num
  have hgrid : sineDeficitRectangle 256 (q3SineDeficit χ) ≤
      ∑ ij : Fin 8192 × Fin 8192, (1 / 32 : ℝ) ^ 2 *
        (D ij.1 * D ij.2 * A ij ^ 2 / Real.pi ^ 2) := by
    rw [← hR]
    apply sineDeficitRectangle_le_grid_envelope 8192 (1 / 32) (by norm_num)
      (q3SineDeficit χ) D A
      (measurable_q3SineDeficit χ) (integrableOn_q3SineDeficit χ _)
      (fun _ _ => le_max_left _ _) (fun _ => div_nonneg (Nat.cast_nonneg _) scale_pos.le)
      (fun _ => div_nonneg (Nat.cast_nonneg _) scale_pos.le)
    · intro i x hx
      change x ∈ cell i at hx
      simpa only [D, price_rawPrice] using q3SineDeficit_le_coarsePrice χ hodd i x hx
    · intro ij x y hx hy
      change x ∈ cell ij.1 at hx
      change y ∈ cell ij.2 at hy
      change |Real.sinc (x - y) - Real.sinc (x + y)| ≤ A ij
      rcases le_total ij.2 ij.1 with hji | hij
      · exact abs_sincDifference_le_pairMajor ij.1 ij.2 hji x y hx hy
      · rw [abs_sinc_difference_comm x y, pairMajor_comm ij.1.val ij.2.val]
        exact abs_sincDifference_le_pairMajor ij.2 ij.1 hij y x hy hx
  have hsplit := CheckerTriangle.dense_eq_triangular rawPrice
    (fun i j => pairMajor i.val j.val) (fun i _ j _ => pairMajor_comm i.val j.val)
  have hreal : (∑ ij : Fin 8192 × Fin 8192, (1 / 32 : ℝ) ^ 2 *
        (D ij.1 * D ij.2 * A ij ^ 2 / Real.pi ^ 2)) =
      (numerator : ℝ) / ((scale : ℝ) ^ 4 * 32 ^ 2 * Real.pi ^ 2) := by
    rw [show numerator = CheckerTriangle.triangularSum rawPrice
      (fun i j => pairMajor i.val j.val) from rfl, ← hsplit,
      Nat.cast_sum, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro ij _
    simp only [D, A, Nat.cast_mul, Nat.cast_pow]
    ring
  have hden : (denominator : ℝ) =
      (scale : ℝ) ^ 4 * 32 ^ 2 * ((3141592653589 : ℝ) / (scale : ℝ)) ^ 2 := by
    norm_num [denominator, scale]
  have hdenpos : (0 : ℝ) < (denominator : ℝ) := by norm_num [denominator, scale]
  have hdenle : (denominator : ℝ) ≤ (scale : ℝ) ^ 4 * 32 ^ 2 * Real.pi ^ 2 := by
    rw [hden]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (by norm_num [scale]) CheckerTriangle.pi_lower.le 2)
      (by positivity)
  calc
    sineDeficitRectangle 256 (q3SineDeficit χ) ≤ _ := hgrid
    _ = _ := hreal
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) hdenpos hdenle

end CheckerCoarse32
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
