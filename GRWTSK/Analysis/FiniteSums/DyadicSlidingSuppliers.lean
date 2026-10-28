/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their attribution and licenses. -/
import GRWTSK.Analysis.FiniteSums.SlidingWindowSampling
import GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
# Sliding short-interval suppliers for the existing finite dyadic tree

A node uses the same arbitrary center for BOTH children. The root mean is
not removed. All hypotheses are restricted to nodes inside the actual source
tree. This module consumes a finite moment bound, not a literature theorem.
The radius, moment, and center may vary from node to node.
Depends on the unintegrated exact source overlay recorded in issue #1395.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.Analysis.FiniteSums.DyadicSlidingSuppliers
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
open GRWTSK.Analysis.FiniteSums.SlidingWindowSampling

/-- The sampled mean-square input includes every origin in the parent interval. -/
def nodeAllowance (radius : ℕ → ℕ → ℕ) (moment : ℕ → ℕ → ℝ) (r o : ℕ) : ℝ :=
  Real.sqrt (4 * moment r o / (radius r o : ℝ) + 32 * (radius r o : ℝ)^2)

theorem blockContrast_eq_windows (m o : ℕ) (f : ℕ → ℝ) :
    blockContrast m o f = windowSum f o (2^m) - windowSum f (o + 2^m) (2^m) := rfl

theorem abs_contrast_le_sliding (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (m o R : ℕ) (hR : 0 < R) (hRH : R ≤ 2^m)
    {V : ℝ} (hV : slidingEnergy f c o (2^m) (2 * 2^m) ≤ V) :
    |blockContrast m o f| ≤ Real.sqrt (4 * V / (R : ℝ) + 32 * (R : ℝ)^2) := by
  have hV0 : 0 ≤ V := (slidingEnergy_nonneg f c o (2^m) (2*2^m)).trans hV
  have hR0 : (0 : ℝ) < R := by exact_mod_cast hR
  have hs := contrast_sq_le_sliding f hf c o (2^m) R hR hRH
  rw [← blockContrast_eq_windows] at hs
  have he : blockContrast m o f ^ 2 ≤ 4 * V / (R : ℝ) + 32 * (R : ℝ)^2 :=
    hs.trans (add_le_add_right (div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left hV (by norm_num)) hR0.le) _)
  have hnonneg : 0 ≤ 4 * V / (R : ℝ) + 32 * (R : ℝ)^2 := by positivity
  apply (sq_le_sq₀ (abs_nonneg _) (Real.sqrt_nonneg _)).mp
  simpa only [sq_abs, Real.sq_sqrt hnonneg] using he

/-- Common centering cancels exactly at a contrast, without centering the root. -/
theorem abs_contrast_le_centered_children (f : ℕ → ℝ) (c : ℝ) (m o : ℕ)
    {A B : ℝ}
    (ha : |centeredWindow f c o (2^m)| ≤ A)
    (hb : |centeredWindow f c (o + 2^m) (2^m)| ≤ B) :
    |blockContrast m o f| ≤ A + B := by
  have he : blockContrast m o f =
      centeredWindow f c o (2^m) - centeredWindow f c (o + 2^m) (2^m) := by
    rw [blockContrast_eq_windows]
    unfold centeredWindow
    ring
  rw [he]
  exact (abs_sub _ _).trans (add_le_add ha hb)

/-- Only actual source-contained nodes require a supplier. -/
theorem contrastBound_of_nodes (select : ℕ → ℕ → Prop) (E : ℕ → ℕ → ℝ)
    (f : ℕ → ℝ) (m o : ℕ)
    (hnode : ∀ r a : ℕ, 0 < r → o ≤ a → a + 2^r ≤ o + 2^m →
      select r a → |blockContrast (r-1) a f| ≤ E r a) :
    ContrastBound select E f m o := by
  induction m generalizing o with
  | zero => trivial
  | succ m ih =>
      have hp : 2^(m+1) = 2^m + 2^m := by rw [pow_succ]; omega
      refine ⟨?_, ?_, ?_⟩
      · intro hs
        simpa only [Nat.add_sub_cancel] using hnode (m+1) o (by omega) le_rfl le_rfl hs
      · apply ih o
        intro r a hr ha hsize hs
        exact hnode r a hr ha (by omega) hs
      · apply ih (o + 2^m)
        intro r a hr ha hsize hs
        exact hnode r a hr (by omega) (by omega) hs

/-- A separate finite second-moment allowance is admitted at every omitted node.
The same common center is used throughout that node's sliding-origin interval. -/
theorem contrastBound_of_sliding_moments (select : ℕ → ℕ → Prop)
    (radius : ℕ → ℕ → ℕ) (center moment : ℕ → ℕ → ℝ)
    (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1) (m o : ℕ)
    (hnode : ∀ r a : ℕ, 0 < r → o ≤ a → a + 2^r ≤ o + 2^m → select r a →
      0 < radius r a ∧ radius r a ≤ 2^(r-1) ∧
        slidingEnergy f (center r a) a (2^(r-1)) (2^r) ≤ moment r a) :
    ContrastBound select (nodeAllowance radius moment) f m o := by
  apply contrastBound_of_nodes
  intro r a hr ha hsize hs
  obtain ⟨hR, hRH, hV⟩ := hnode r a hr ha hsize hs
  have hp : 2^r = 2 * 2^(r-1) := by
    conv_lhs => rw [show r = (r-1)+1 by omega]
    rw [pow_succ]
    ring
  rw [hp] at hV
  exact abs_contrast_le_sliding f hf (center r a) (r-1) a (radius r a) hR hRH hV

/-- Pointwise short-interval estimates are an alternative node supplier, with both endpoints retained. -/
theorem contrastBound_of_child_windows (select : ℕ → ℕ → Prop)
    (left right : ℕ → ℕ → ℝ) (f : ℕ → ℝ) (m o : ℕ)
    (hnode : ∀ r a : ℕ, 0 < r → o ≤ a → a + 2^r ≤ o + 2^m → select r a →
      |windowSum f a (2^(r-1))| ≤ left r a ∧
      |windowSum f (a + 2^(r-1)) (2^(r-1))| ≤ right r a) :
    ContrastBound select (fun r a => left r a + right r a) f m o := by
  apply contrastBound_of_nodes
  intro r a hr ha hsize hs
  obtain ⟨hl, hr'⟩ := hnode r a hr ha hsize hs
  rw [blockContrast_eq_windows]
  exact (abs_sub _ _).trans (add_le_add hl hr')

end GRWTSK.Analysis.FiniteSums.DyadicSlidingSuppliers
