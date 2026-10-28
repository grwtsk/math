/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement

/-!
# Node-local prefix suppliers for selected dyadic contrasts

Every supplied bound is required only at a selected node of the actual finite
tree. An ordinary-prefix supplier pays the three exact endpoints of that
node. The signed coefficient contrast is retained before the optional
absolute majorant. No good-scale or uniform arithmetic estimate is asserted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement

/-- Only selected nodes of this finite tree require a contrast allowance. -/
def ContrastBound (select : ℕ → ℕ → Prop) (E : ℕ → ℕ → ℝ)
    (f : ℕ → ℝ) : ℕ → ℕ → Prop
  | 0, _ => True
  | m + 1, o =>
      (select (m + 1) o → |blockContrast m o f| ≤ E (m + 1) o) ∧
      ContrastBound select E f m o ∧ ContrastBound select E f m (o + 2 ^ m)

/-- Optional absolute allowance in the actual row-contrast measure. -/
def contrastBudget (select : ℕ → ℕ → Prop) (E : ℕ → ℕ → ℝ)
    (w : ℕ → ℝ) : ℕ → ℕ → ℝ
  | 0, _ => 0
  | m + 1, o =>
      (if select (m + 1) o then
        |blockContrast m o w| * E (m + 1) o / (((2 ^ (m + 1) : ℕ) : ℝ)) else 0) +
      contrastBudget select E w m o + contrastBudget select E w m (o + 2 ^ m)

/-- Norms are introduced only after the exact row contrast has been formed. -/
theorem abs_detailPairing_le_budget (select : ℕ → ℕ → Prop)
    (E : ℕ → ℕ → ℝ) (m o : ℕ) (w f : ℕ → ℝ)
    (hE : ContrastBound select E f m o) :
    |detailPairing select m o w f| ≤ contrastBudget select E w m o := by
  induction m generalizing o with
  | zero => simp [detailPairing, contrastBudget]
  | succ m ih =>
      obtain ⟨hroot, hleft, hright⟩ := hE
      have hr : |if select (m + 1) o then localDetail m o w f else 0| ≤
          (if select (m + 1) o then
            |blockContrast m o w| * E (m + 1) o / (((2 ^ (m + 1) : ℕ) : ℝ)) else 0) := by
        by_cases hs : select (m + 1) o
        · simp only [if_pos hs, localDetail, abs_div, abs_mul,
            abs_of_nonneg (show (0 : ℝ) ≤ (((2 ^ (m + 1) : ℕ) : ℝ)) by positivity)]
          exact div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left (hroot hs) (abs_nonneg _)) (by positivity)
        · simp [hs]
      simp only [detailPairing, contrastBudget]
      exact (abs_add _ _).trans (add_le_add
        ((abs_add _ _).trans (add_le_add hr (ih o hleft)))
        (ih (o + 2 ^ m) hright))

/-- Keep endpoint-specific bounds rather than replacing them by a global maximum. -/
def prefixContrastAllowance (A : ℕ → ℝ) (r o : ℕ) : ℝ :=
  2 * A (o + 2 ^ (r - 1)) + A o + A (o + 2 ^ r)

/-- Three ordinary prefix estimates suffice for this exact contrast. -/
theorem abs_contrast_le_prefix_allowance (A : ℕ → ℝ) (m o : ℕ) (f : ℕ → ℝ)
    (hl : |finitePrefixSum f o| ≤ A o)
    (hm : |finitePrefixSum f (o + 2 ^ m)| ≤ A (o + 2 ^ m))
    (hr : |finitePrefixSum f (o + 2 ^ (m + 1))| ≤ A (o + 2 ^ (m + 1))) :
    |blockContrast m o f| ≤ prefixContrastAllowance A (m + 1) o := by
  rw [contrast_eq_prefix_second_difference]
  have h1 := abs_sub (2 * finitePrefixSum f (o + 2 ^ m)) (finitePrefixSum f o)
  have h2 := abs_sub (2 * finitePrefixSum f (o + 2 ^ m) - finitePrefixSum f o)
    (finitePrefixSum f (o + 2 ^ (m + 1)))
  rw [abs_mul] at h1
  norm_num at h1
  simp only [prefixContrastAllowance, Nat.add_sub_cancel]
  linarith

/-- The supplier is required only through the finite source endpoint. -/
theorem contrastBound_of_prefix_envelope (select : ℕ → ℕ → Prop)
    (A : ℕ → ℝ) (m o limit : ℕ) (f : ℕ → ℝ)
    (hsize : o + 2 ^ m ≤ limit)
    (hA : ∀ n : ℕ, n ≤ limit → |finitePrefixSum f n| ≤ A n) :
    ContrastBound select (prefixContrastAllowance A) f m o := by
  induction m generalizing o with
  | zero => trivial
  | succ m ih =>
      have hp : 2 ^ (m + 1) = 2 ^ m + 2 ^ m := by rw [pow_succ]; omega
      refine ⟨?_, ih o (by omega), ih (o + 2 ^ m) (by omega)⟩
      intro _
      exact abs_contrast_le_prefix_allowance A m o f
        (hA o (by omega)) (hA (o + 2 ^ m) (by omega)) (hA _ hsize)

/-- A local mean-zero or short-interval estimate can supply contrasts directly. -/
theorem abs_contrast_le_child_allowances (m o : ℕ) (f : ℕ → ℝ) {A B : ℝ}
    (ha : |blockSum m o f| ≤ A) (hb : |blockSum m (o + 2 ^ m) f| ≤ B) :
    |blockContrast m o f| ≤ A + B :=
  (abs_sub _ _).trans (add_le_add ha hb)

/-- Unlike the omitted-energy comparison, this supplier can use heterogeneous node estimates. -/
theorem abs_pairing_sub_selected_le_budget (select : ℕ → ℕ → Prop)
    (E : ℕ → ℕ → ℝ) (m o : ℕ) (w f : ℕ → ℝ)
    (hE : ContrastBound (fun r a => ¬ select r a) E f m o) :
    |blockSum m o (fun n => w n * f n) - selectedPairing select m o w f| ≤
      contrastBudget (fun r a => ¬ select r a) E w m o := by
  rw [pairing_sub_selected]
  exact abs_detailPairing_le_budget (fun r a => ¬ select r a) E m o w f hE

end GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
