/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.FiniteIntervalSeparation
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false

/-!
# Actual zeta heights with a local-cardinality clearance

A complete band N < |Im rho| <= N+3, not an observed zero file, supplies the
finite records. K is its DISTINCT POINT cardinality. Multiplicities remain in
bandMass and every weighted sum. The gap is positive without a quantitative
zero-count estimate; no bound on K as N grows is supplied. These are new
selected heights, not claims about AdmissibleRectangles.contourHeight.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.SeparatedContourHeights

open Set Filter
open scoped Topology BigOperators
open CanonicalZeroDivisor
open GRWTSK.Analysis.Real.FiniteIntervalSeparation

noncomputable section

/-- The complete open-lower, closed-upper local band of actual nontrivial points. -/
def heightBand (N : ℕ) : Finset ZeroPoint := by
  classical
  exact heightHead ((N : ℝ) + 3) \ heightHead (N : ℝ)

@[simp] theorem mem_heightBand (N : ℕ) (z : ZeroPoint) :
    z ∈ heightBand N ↔ (N : ℝ) < height z ∧ height z ≤ (N : ℝ) + 3 := by
  classical
  simp only [heightBand, Finset.mem_sdiff, mem_heightHead, not_le]
  exact and_comm

/-- Source-derived multiplicity mass, distinct from the number of locations. -/
def bandMass (N : ℕ) : ℕ := ∑ z ∈ heightBand N, multiplicity z

theorem band_card_le_mass (N : ℕ) : (heightBand N).card ≤ bandMass N := by
  calc
    _ = ∑ _z ∈ heightBand N, (1 : ℕ) := by simp
    _ ≤ _ := Finset.sum_le_sum (fun z _ => multiplicity_pos z)

theorem bandMass_le_heightCount (N : ℕ) : bandMass N ≤ heightCount ((N : ℝ) + 3) := by
  classical
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (fun z hz => (mem_heightHead _ _).mpr ((mem_heightBand N z).mp hz).2)
    (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Quantitative clearance depends only on the local complete point inventory. -/
def heightClearance (N : ℕ) : ℝ := clearance (heightBand N).card

theorem heightClearance_pos (N : ℕ) : 0 < heightClearance N :=
  clearance_pos _

theorem heightClearance_le_quarter (N : ℕ) : heightClearance N ≤ 1 / 4 :=
  clearance_le_quarter _

/-- Farther zeros have distance greater than one; only the complete local band needs packing. -/
theorem exists_separated_height (N : ℕ) :
    ∃ H : ℝ, (N : ℝ) + 1 + 2 * heightClearance N ≤ H ∧
      H ≤ (N : ℝ) + 2 - 2 * heightClearance N ∧
      ∀ z : ZeroPoint, heightClearance N ≤ |H - height z| := by
  obtain ⟨H, hL, hR, hband⟩ := exists_interval_clearance (heightBand N) height ((N : ℝ) + 1)
  change (N : ℝ) + 1 + 2 * heightClearance N ≤ H at hL
  have hR' : H ≤ (N : ℝ) + 2 - 2 * heightClearance N := by
    simpa only [heightClearance, add_assoc, one_add_one_eq_two] using hR
  refine ⟨H, hL, hR', ?_⟩
  intro z
  by_cases hz : z ∈ heightBand N
  · exact hband z hz
  have hδ := heightClearance_pos N
  have hδu := heightClearance_le_quarter N
  by_cases hlo : height z ≤ (N : ℝ)
  · rw [abs_of_nonneg (by linarith : 0 ≤ H - height z)]
    linarith
  · have hhi : (N : ℝ) + 3 < height z := by
      by_contra h
      exact hz ((mem_heightBand N z).mpr ⟨lt_of_not_ge hlo, le_of_not_gt h⟩)
    rw [abs_of_nonpos (by linarith : H - height z ≤ 0)]
    linarith

/-- Noncomputable mathematical selection; this does not enumerate numerical zeros. -/
def separatedHeight (N : ℕ) : ℝ := (exists_separated_height N).choose

theorem separatedHeight_endpoint_clearance (N : ℕ) :
    (N : ℝ) + 1 + 2 * heightClearance N ≤ separatedHeight N ∧
      separatedHeight N ≤ (N : ℝ) + 2 - 2 * heightClearance N :=
  ⟨(exists_separated_height N).choose_spec.1,
    (exists_separated_height N).choose_spec.2.1⟩

theorem separatedHeight_clearance (N : ℕ) (z : ZeroPoint) :
    heightClearance N ≤ |separatedHeight N - height z| :=
  (exists_separated_height N).choose_spec.2.2 z

theorem separatedHeight_bounds (N : ℕ) :
    (N : ℝ) + 1 < separatedHeight N ∧ separatedHeight N < (N : ℝ) + 2 := by
  have h := separatedHeight_endpoint_clearance N
  have hd := heightClearance_pos N
  constructor <;> linarith

theorem separatedHeight_pos (N : ℕ) : 0 < separatedHeight N := by
  have hn := Nat.cast_nonneg (α := ℝ) N
  linarith [(separatedHeight_bounds N).1]

theorem separatedHeight_strictMono : StrictMono separatedHeight := by
  intro M N hMN
  have hc : (M : ℝ) + 1 ≤ N := by exact_mod_cast (Nat.succ_le_iff.mpr hMN)
  linarith [(separatedHeight_bounds M).2, (separatedHeight_bounds N).1]

theorem separatedHeight_tendsto : Tendsto separatedHeight atTop atTop := by
  apply tendsto_atTop_mono (f := fun N : ℕ => (N : ℝ))
    (fun N => le_of_lt (by linarith [(separatedHeight_bounds N).1]))
  exact tendsto_natCast_atTop_atTop

theorem separatedHeight_avoids (N : ℕ) (z : ZeroPoint) : height z ≠ separatedHeight N := by
  intro he
  have hc := separatedHeight_clearance N z
  rw [he, sub_self, abs_zero] at hc
  exact (not_le_of_gt (heightClearance_pos N)) hc

/-- The exact closed head can be read as an open interior only after the separation proof. -/
theorem mem_selected_head_iff_lt (N : ℕ) (z : ZeroPoint) :
    z ∈ heightHead (separatedHeight N) ↔ height z < separatedHeight N := by
  rw [mem_heightHead]
  constructor
  · intro hz
    exact lt_of_le_of_ne hz (separatedHeight_avoids N z)
  · exact le_of_lt

/-- The bound is a full complex distance on BOTH horizontal lines, at any real coordinate. -/
theorem horizontal_distance (N : ℕ) (σ y : ℝ) (hy : |y| = separatedHeight N) (z : ZeroPoint) :
    heightClearance N ≤ ‖((σ : ℂ) + (y : ℂ) * Complex.I) - z.1‖ := by
  calc
    heightClearance N ≤ |separatedHeight N - height z| := separatedHeight_clearance N z
    _ = abs (|y| - |z.1.im|) := by rw [hy]; rfl
    _ ≤ |y - z.1.im| := abs_abs_sub_abs_le_abs_sub y z.1.im
    _ = |(((σ : ℂ) + (y : ℂ) * Complex.I) - z.1).im| := by simp
    _ ≤ _ := Complex.abs_im_le_norm _

/-- A certified half-gap rounding retains a positive gap at every actual zero. -/
theorem rounded_height_clearance (N : ℕ) (H : ℝ)
    (herr : |H - separatedHeight N| ≤ heightClearance N / 2) (z : ZeroPoint) :
    heightClearance N / 2 ≤ |H - height z| := by
  have h := clearance_after_perturbation (separatedHeight N) H (height z)
    (heightClearance N) (heightClearance N / 2) (separatedHeight_clearance N z) herr
  linarith

/-- The endpoint buffers also survive the certified half-gap perturbation. -/
theorem rounded_height_bounds (N : ℕ) (H : ℝ)
    (herr : |H - separatedHeight N| ≤ heightClearance N / 2) :
    (N : ℝ) + 1 < H ∧ H < (N : ℝ) + 2 := by
  have h := separatedHeight_endpoint_clearance N
  have hd := heightClearance_pos N
  rcases abs_le.mp herr with ⟨hlo, hhi⟩
  constructor <;> linarith

/-- Rounding cannot change even an exact closed membership or an analytic multiplicity sum. -/
theorem rounded_heightHead_eq (N : ℕ) (H : ℝ)
    (herr : |H - separatedHeight N| ≤ heightClearance N / 2) :
    heightHead H = heightHead (separatedHeight N) := by
  classical
  ext z
  simp only [mem_heightHead]
  exact cutoff_stable (separatedHeight N) H (height z) (heightClearance N)
    (heightClearance N / 2) (separatedHeight_clearance N z) herr
    (by linarith [heightClearance_pos N])

/-- A count-growth theorem would give a rate; it is not inferred from finiteness. -/
theorem heightClearance_lower_of_card_bound (N : ℕ) (B : ℝ)
    (hB : ((heightBand N).card : ℝ) ≤ B) :
    1 / (4 * (B + 1)) ≤ heightClearance N := by
  have hK := Nat.cast_nonneg (α := ℝ) (heightBand N).card
  unfold heightClearance clearance
  apply (div_le_div_iff₀ (by nlinarith) (by positivity)).mpr
  nlinarith

/-- This bounds a FINITE local principal sum, not the full zeta logarithmic derivative. -/
theorem local_principal_sum_bound (N : ℕ) (σ y : ℝ) (hy : |y| = separatedHeight N) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤
        (bandMass N : ℝ) / heightClearance N := by
  classical
  calc
    _ ≤ ∑ z ∈ heightBand N, ‖(multiplicity z : ℂ) /
        (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ := norm_sum_le _ _
    _ ≤ ∑ z ∈ heightBand N, (multiplicity z : ℝ) / heightClearance N := by
      apply Finset.sum_le_sum
      intro z hz
      rw [norm_div, Complex.norm_natCast]
      exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) (heightClearance_pos N)
        (horizontal_distance N σ y hy z)
    _ = _ := by simp only [bandMass, Nat.cast_sum, Finset.sum_div]

end
end GRWTSK.RiemannHypothesis.SeparatedContourHeights
