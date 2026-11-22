/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletHeightCountSplit

/-!
# A one-count margin for primitive Dirichlet zero exclusion

An off-line reflected pair contributes at least two to the difference between
the total count and the critical-line count. Both counts retain analytic order.
-/

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.Conditional

variable {q : ℕ} [NeZero q]

theorem rightCount_eq_zero_iff_no_rightZeros (source : PrimitiveDirichletSource q) (H : ℝ) :
    source.heightCountRestricted H (1 / 2 < ·) = 0 ↔
      ∀ rho : CriticalStripZero source.character,
        rho ∈ heightWindow source.character source.isPrimitive H → rho.1.re ≤ 1 / 2 := by
  classical
  unfold heightCountRestricted
  constructor
  · intro h rho hmem
    by_contra! hr
    have hf : rho ∈ (heightWindow source.character source.isPrimitive H).filter
        (fun z => 1 / 2 < z.1.re) := Finset.mem_filter.mpr ⟨hmem, hr⟩
    have hle := Finset.single_le_sum
      (fun z _ => Nat.zero_le (zeroMultiplicity source.character z)) hf
    rw [h] at hle
    exact (not_lt_of_ge hle) (zeroMultiplicity_pos source.character rho)
  · intro h
    have empty : (heightWindow source.character source.isPrimitive H).filter
        (fun rho => 1 / 2 < rho.1.re) = ∅ := by
      apply Finset.eq_empty_iff_forall_notMem.mpr
      intro rho hr
      obtain ⟨hm, hgt⟩ := Finset.mem_filter.mp hr
      exact (not_lt_of_ge (h rho hm)) hgt
    rw [empty, Finset.sum_empty]

/-- A verified upper bound at most one above the exact line count excludes
every right-half zero in this window. -/
theorem heightCount_le_line_add_one_iff (source : PrimitiveDirichletSource q) (H : ℝ) :
    heightCount source.character source.isPrimitive H ≤
      source.heightCountRestricted H (· = 1 / 2) + 1 ↔
      ∀ rho : CriticalStripZero source.character,
        rho ∈ heightWindow source.character source.isPrimitive H → rho.1.re ≤ 1 / 2 := by
  rw [← source.rightCount_eq_zero_iff_no_rightZeros H,
    source.heightCount_eq_line_add_twice_right H]
  omega

theorem criticalLine_iff_cofinal_count_slack (source : PrimitiveDirichletSource q)
    (height : ℕ → ℝ) (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    DirichletCriticalLine source.character ↔
      ∀ n, heightCount source.character source.isPrimitive (height n) ≤
        source.heightCountRestricted (height n) (· = 1 / 2) + 1 := by
  rw [source.criticalLine_iff_no_rightZeros_in_cofinal_windows height cofinal]
  simp_rw [source.heightCount_le_line_add_one_iff]

/-- Upper and lower integer certificates can leave one unit of slack. -/
theorem criticalLine_of_cofinal_count_enclosures (source : PrimitiveDirichletSource q)
    (height : ℕ → ℝ) (cofinal : ∀ t : ℝ, ∃ n, t < height n)
    (lower upper : ℕ → ℕ)
    (hlo : ∀ n, lower n ≤ source.heightCountRestricted (height n) (· = 1 / 2))
    (hhi : ∀ n, heightCount source.character source.isPrimitive (height n) ≤ upper n)
    (hgap : ∀ n, upper n ≤ lower n + 1) :
    DirichletCriticalLine source.character := by
  apply (source.criticalLine_iff_cofinal_count_slack height cofinal).mpr
  intro n
  exact (hhi n).trans ((hgap n).trans (Nat.add_le_add_right (hlo n) 1))

theorem dirichletGRH_iff_characterwise_count_slack :
    DirichletGRH ↔ ∀ (m : ℕ) [NeZero m] (source : PrimitiveDirichletSource m),
      ∃ height : ℕ → ℝ, (∀ t : ℝ, ∃ n, t < height n) ∧
        ∀ n, heightCount source.character source.isPrimitive (height n) ≤
          source.heightCountRestricted (height n) (· = 1 / 2) + 1 := by
  rw [dirichletGRH_iff_characterwise_cofinal_windows]
  simp_rw [heightCount_le_line_add_one_iff]

theorem zeta_rh_iff_cofinal_count_slack (height : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    _root_.RiemannHypothesis ↔
      ∀ n, heightCount zeta.character zeta.isPrimitive (height n) ≤
        zeta.heightCountRestricted (height n) (· = 1 / 2) + 1 := by
  rw [zeta_rh_iff_no_rightZeros_in_cofinal_windows height cofinal]
  simp_rw [zeta.heightCount_le_line_add_one_iff]

/-- The elementary count identity alone cannot replace the margin one
by margin two. One simple off-line pair fits exactly at margin two. -/
theorem slack_two_count_control :
    ∃ total line right : ℕ, total = line + 2 * right ∧
      total ≤ line + 2 ∧ 0 < right := by
  exact ⟨2, 0, 1, by decide, by decide, by decide⟩

end GRWTSK.NumberTheory.PrimitiveDirichletSource
