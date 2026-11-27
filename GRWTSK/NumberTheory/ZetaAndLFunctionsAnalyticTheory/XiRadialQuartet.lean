import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Radial comparison of reflected zeta-zero quartets

The parameters `y`, `d` and `t` can represent squared height, squared horizontal
displacement and squared evaluation coordinate. The following lemmas are algebraic
and apply to arbitrary real inputs satisfying their hypotheses.
-/
namespace GRWTSK.XiRadialQuartet

/-- Quotient of the original quartet factor by the square of the radial factor. -/
noncomputable def ratio (y d t : ℝ) : ℝ :=
  (1 + 2 * t * (y - d) / (y + d)^2 + t^2 / (y + d)^2) / (1 + t / (y + d))^2

theorem ratio_identity {y d t : ℝ} (hy : 0 < y) (hd : 0 ≤ d) (ht : 0 < t) :
    ratio y d t = 1 - 4 * d * t / (y + d + t)^2 := by
  have h₁ : 0 < y + d := by linarith
  have h₂ : 0 < y + d + t := by linarith
  have h₃ : 1 + t / (y + d) = (y + d + t) / (y + d) := by
    field_simp [ne_of_gt h₁]
  unfold ratio
  rw [h₃]
  field_simp [ne_of_gt h₁, ne_of_gt h₂]
  ring

theorem ratio_pos {y d t : ℝ} (hy : 0 < y) (hd : 0 ≤ d) (ht : 0 < t) :
    0 < ratio y d t := by
  rw [ratio_identity hy hd ht, sub_pos, div_lt_one (by positivity)]
  nlinarith [sq_nonneg (y + d - t), mul_pos hy ht]

theorem ratio_le_one {y d t : ℝ} (hy : 0 < y) (hd : 0 ≤ d) (ht : 0 < t) :
    ratio y d t ≤ 1 := by
  rw [ratio_identity hy hd ht]
  exact sub_le_self _ (by positivity)

theorem ratio_lt_one_iff {y d t : ℝ} (hy : 0 < y) (hd : 0 ≤ d) (ht : 0 < t) :
    ratio y d t < 1 ↔ 0 < d := by
  rw [ratio_identity hy hd ht]
  by_cases hd₀ : d = 0
  · simp [hd₀]
  · have h : 0 < d := lt_of_le_of_ne hd (Ne.symm hd₀)
    have hk : 0 < 4 * d * t / (y + d + t)^2 := by positivity
    exact ⟨fun _ => h, fun _ => by linarith⟩

theorem ratio_eq_one_iff {y d t : ℝ} (hy : 0 < y) (hd : 0 ≤ d) (ht : 0 < t) :
    ratio y d t = 1 ↔ d = 0 := by
  constructor
  · intro h
    by_contra hn
    have hlt := (ratio_lt_one_iff hy hd ht).2 (lt_of_le_of_ne hd (Ne.symm hn))
    exact (ne_of_lt hlt) h
  · rintro rfl
    simp [ratio_identity hy (le_refl 0) ht]

/-- No displaced quartet can be hidden by the other positive factors. -/
theorem prod_ratio_eq_one_iff {ι : Type*} (s : Finset ι) (y d : ι → ℝ) {t : ℝ}
    (ht : 0 < t) (hy : ∀ i ∈ s, 0 < y i) (hd : ∀ i ∈ s, 0 ≤ d i) :
    (∏ i ∈ s, ratio (y i) (d i) t) = 1 ↔ ∀ i ∈ s, d i = 0 := by
  constructor
  · intro h i hi
    by_contra hn
    have hlt := (ratio_lt_one_iff (hy i hi) (hd i hi) ht).2
      (lt_of_le_of_ne (hd i hi) (Ne.symm hn))
    have hp := Finset.prod_lt_prod₀ (g := fun _ => (1 : ℝ))
      (fun j hj => ratio_pos (hy j hj) (hd j hj) ht)
      (fun j hj => ratio_le_one (hy j hj) (hd j hj) ht) ⟨i, hi, hlt⟩
    simp [h] at hp
  · intro h
    exact Finset.prod_eq_one fun i hi => (ratio_eq_one_iff (hy i hi) (hd i hi) ht).2 (h i hi)

/-- A finite product is bounded above by each of its individual quartet ratios. -/
theorem prod_ratio_le_at {ι : Type*} (s : Finset ι) (y d : ι → ℝ) {t : ℝ}
    (ht : 0 < t) (hy : ∀ i ∈ s, 0 < y i) (hd : ∀ i ∈ s, 0 ≤ d i)
    {i : ι} (hi : i ∈ s) :
    (∏ j ∈ s, ratio (y j) (d j) t) ≤ ratio (y i) (d i) t := by
  classical
  rw [← Finset.prod_erase_mul s _ hi]
  apply mul_le_of_le_one_left (ratio_pos (hy i hi) (hd i hi) ht).le
  apply Finset.prod_le_one₀
  · intro j hj
    exact (ratio_pos (hy j (Finset.mem_of_mem_erase hj))
      (hd j (Finset.mem_of_mem_erase hj)) ht).le
  · intro j hj
    exact ratio_le_one (hy j (Finset.mem_of_mem_erase hj))
      (hd j (Finset.mem_of_mem_erase hj)) ht

/-- If finite products can approach one while containing each prescribed index, every
displacement vanishes. The statement uses only finite subsets of the index type. -/
theorem arbitrarily_close_iff {ι : Type*} (y d : ι → ℝ) {t : ℝ}
    (ht : 0 < t) (hy : ∀ i, 0 < y i) (hd : ∀ i, 0 ≤ d i) :
    (∀ i (ε : ℝ), 0 < ε → ∃ s : Finset ι, i ∈ s ∧
      1 - ε < ∏ j ∈ s, ratio (y j) (d j) t) ↔ ∀ i, d i = 0 := by
  constructor
  · intro h i
    by_contra hn
    have hlt := (ratio_lt_one_iff (hy i) (hd i) ht).2
      (lt_of_le_of_ne (hd i) (Ne.symm hn))
    obtain ⟨s, hi, hclose⟩ := h i _ (sub_pos.mpr hlt)
    have hup := prod_ratio_le_at s y d ht (fun j _ => hy j) (fun j _ => hd j) hi
    linarith
  · intro h i ε hε
    classical
    refine ⟨{i}, Finset.mem_singleton_self i, ?_⟩
    simpa [(ratio_eq_one_iff (hy i) (hd i) ht).2 (h i)] using (sub_lt_self (1 : ℝ) hε)


#print axioms ratio_identity
#print axioms ratio_pos
#print axioms ratio_le_one
#print axioms ratio_lt_one_iff
#print axioms ratio_eq_one_iff
#print axioms prod_ratio_eq_one_iff
#print axioms prod_ratio_le_at
#print axioms arbitrarily_close_iff

end GRWTSK.XiRadialQuartet
