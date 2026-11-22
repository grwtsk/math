/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletCountSlack

/-!
# Count slack in primitive Dirichlet height bands

The difference between two strict height windows includes the lower endpoint
and excludes the upper endpoint. The count slack applies to each such band.
-/

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.Conditional
open scoped BigOperators

variable {q : ℕ} [NeZero q]

theorem heightCountRestricted_mono (source : PrimitiveDirichletSource q) (P : ℝ → Prop)
    {lo hi : ℝ} (hle : lo ≤ hi) :
    source.heightCountRestricted lo P ≤ source.heightCountRestricted hi P := by
  classical
  unfold heightCountRestricted
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro rho hm
    obtain ⟨hwin, hp⟩ := Finset.mem_filter.mp hm
    exact Finset.mem_filter.mpr ⟨(mem_heightWindow _ _ _ _).mpr
      (((mem_heightWindow _ _ _ _).mp hwin).trans_le hle), hp⟩
  · exact fun _ _ _ => Nat.zero_le _

theorem rightCount_band_difference_zero_iff (source : PrimitiveDirichletSource q)
    {lo hi : ℝ} (hle : lo ≤ hi) :
    source.heightCountRestricted hi (1 / 2 < ·) -
        source.heightCountRestricted lo (1 / 2 < ·) = 0 ↔
      ∀ rho : CriticalStripZero source.character, lo ≤ |rho.1.im| →
        |rho.1.im| < hi → rho.1.re ≤ 1 / 2 := by
  classical
  let rightWindow (H : ℝ) :=
    (heightWindow source.character source.isPrimitive H).filter (fun rho => 1 / 2 < rho.1.re)
  have mem_right (H : ℝ) (rho : CriticalStripZero source.character) :
      rho ∈ rightWindow H ↔ |rho.1.im| < H ∧ 1 / 2 < rho.1.re := by
    simp [rightWindow]
  have subset : rightWindow lo ⊆ rightWindow hi := by
    intro rho hm
    obtain ⟨hh, hr⟩ := (mem_right lo rho).mp hm
    exact (mem_right hi rho).mpr ⟨hh.trans_le hle, hr⟩
  let band := rightWindow hi \ rightWindow lo
  let weight := zeroMultiplicity source.character
  have partition : (∑ rho ∈ band, weight rho) + (∑ rho ∈ rightWindow lo, weight rho) =
      ∑ rho ∈ rightWindow hi, weight rho := Finset.sum_sdiff subset
  change (∑ rho ∈ rightWindow hi, weight rho) - (∑ rho ∈ rightWindow lo, weight rho) = 0 ↔ _
  have hdiff : (∑ rho ∈ rightWindow hi, weight rho) - (∑ rho ∈ rightWindow lo, weight rho) =
      ∑ rho ∈ band, weight rho := by omega
  rw [hdiff]
  constructor
  · intro h rho hl hh
    by_contra! hr
    have hb : rho ∈ band := Finset.mem_sdiff.mpr
      ⟨(mem_right hi rho).mpr ⟨hh, hr⟩, fun hm => (not_lt_of_ge hl) ((mem_right lo rho).mp hm).1⟩
    have hc := Finset.single_le_sum (fun z _ => Nat.zero_le (weight z)) hb
    rw [h] at hc
    exact (not_lt_of_ge hc) (zeroMultiplicity_pos source.character rho)
  · intro excluded
    have hempty : band = ∅ := by
      apply Finset.eq_empty_iff_forall_notMem.mpr
      intro rho hm
      obtain ⟨hh, hn⟩ := Finset.mem_sdiff.mp hm
      obtain ⟨hh, hr⟩ := (mem_right hi rho).mp hh
      have hl : lo ≤ |rho.1.im| := le_of_not_gt fun hl => hn ((mem_right lo rho).mpr ⟨hl, hr⟩)
      exact (not_lt_of_ge (excluded rho hl hh)) hr
    rw [hempty, Finset.sum_empty]

theorem heightBand_le_line_add_one_iff (source : PrimitiveDirichletSource q)
    {lo hi : ℝ} (hle : lo ≤ hi) :
    heightCount source.character source.isPrimitive hi -
        heightCount source.character source.isPrimitive lo ≤
      source.heightCountRestricted hi (· = 1 / 2) -
        source.heightCountRestricted lo (· = 1 / 2) + 1 ↔
      ∀ rho : CriticalStripZero source.character, lo ≤ |rho.1.im| →
        |rho.1.im| < hi → rho.1.re ≤ 1 / 2 := by
  rw [← source.rightCount_band_difference_zero_iff hle,
    source.heightCount_eq_line_add_twice_right hi, source.heightCount_eq_line_add_twice_right lo]
  have hl := source.heightCountRestricted_mono (· = 1 / 2) hle
  have hr := source.heightCountRestricted_mono (1 / 2 < ·) hle
  omega

/-- Independently certified bands suffice when their half-open intervals
cover all possible absolute ordinates. -/
theorem criticalLine_of_band_count_slack (source : PrimitiveDirichletSource q)
    (lo hi : ℕ → ℝ) (ordered : ∀ n, lo n ≤ hi n)
    (cover : ∀ t : ℝ, 0 ≤ t → ∃ n, lo n ≤ t ∧ t < hi n)
    (slack : ∀ n, heightCount source.character source.isPrimitive (hi n) -
        heightCount source.character source.isPrimitive (lo n) ≤
      source.heightCountRestricted (hi n) (· = 1 / 2) -
        source.heightCountRestricted (lo n) (· = 1 / 2) + 1) :
    DirichletCriticalLine source.character := by
  apply (source.criticalLine_iff_no_rightZeros_in_cofinal_windows
    (fun n => (n : ℝ)) exists_nat_gt).mpr
  intro _ rho _
  obtain ⟨n, hlo, hhi⟩ := cover |rho.1.im| (abs_nonneg _)
  exact (source.heightBand_le_line_add_one_iff (ordered n)).mp (slack n) rho hlo hhi

/-- A strictly open lower endpoint would leave the shared boundary uncovered. -/
theorem band_endpoint_control :
    ¬ ((0 : ℝ) ≤ 1 ∧ 1 < 1) ∧ (1 : ℝ) ≤ 1 ∧ (1 : ℝ) < 2 ∧ ¬ (1 : ℝ) < 1 := by
  norm_num

end GRWTSK.NumberTheory.PrimitiveDirichletSource
