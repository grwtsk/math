import FormalResearch.RiemannHypothesis.Conversation.MangoldtPrimitiveAbsoluteMass

/-!
# Literal arithmetic shell mass for the coherent decoder

The open-left, closed-right all-integer shell retains every von Mangoldt-minus-one
coefficient. Its multiples of six give a checked absolute mass lower bound.
It is not a lower bound for the signed shell or for the complete source sum.

Source: RH conversation Batch 3, BL03-05. Human programme: grwtsk contributors.
Local shell adapter and Lean implementation: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ShellArithmetic
open FormalResearch.RiemannHypothesis.SourceSignedPortControls
open MangoldtPrimitiveAbsoluteMass
open scoped BigOperators
noncomputable section

def shell (lo hi : ℝ) : Finset ℕ := Finset.Ioc ⌊lo⌋₊ ⌊hi⌋₊
def sixIndices (lo hi : ℝ) : Finset ℕ := Finset.Ioc ⌊lo / 6⌋₊ ⌊hi / 6⌋₊
def coefficient (n : ℕ) : ℝ := (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n
def absoluteShellMass (lo hi : ℝ) : ℝ := ∑ n ∈ shell lo hi, |coefficient n|

theorem six_indices_card_lower {lo hi : ℝ} (hlo : 0 ≤ lo) (hlen : 12 ≤ hi - lo) :
    (hi - lo) / 12 ≤ ((sixIndices lo hi).card : ℝ) := by
  have hmono : ⌊lo / 6⌋₊ ≤ ⌊hi / 6⌋₊ := Nat.floor_mono (by linarith)
  have hL := Nat.floor_le (by linarith : 0 ≤ lo / 6)
  have hU := Nat.lt_floor_add_one (hi / 6)
  simp only [sixIndices, Nat.card_Ioc, Nat.cast_sub hmono]
  linarith

theorem selected_six_atom_location {lo hi : ℝ} (hlo : 6 ≤ lo) (hlen : 12 ≤ hi - lo) {k : ℕ}
    (hk : k ∈ sixIndices lo hi) :
    1 ≤ k ∧ lo < (6 * k : ℕ) ∧ (6 * k : ℕ) ≤ hi := by
  obtain ⟨hkl, hku⟩ := Finset.mem_Ioc.mp hk
  have hl := (Nat.floor_lt (by linarith : 0 ≤ lo / 6)).mp hkl
  have hu := (show (k : ℝ) ≤ (⌊hi / 6⌋₊ : ℝ) by exact_mod_cast hku).trans
    (Nat.floor_le (by linarith : 0 ≤ hi / 6))
  refine ⟨by omega, ?_, ?_⟩ <;> push_cast <;> linarith

theorem selected_six_coefficient_lower {lo hi : ℝ} (hlo : 6 ≤ lo) (hlen : 12 ≤ hi - lo) {k : ℕ}
    (hk : k ∈ sixIndices lo hi) :
    1 / Real.sqrt hi ≤ |coefficient (6 * k)| := by
  have hloc := selected_six_atom_location hlo hlen hk
  have hnp : 0 < ((6 * k : ℕ) : ℝ) := by exact_mod_cast (by omega : 0 < 6 * k)
  unfold coefficient
  rw [vonMangoldt_six_mul, zero_sub, abs_div, abs_neg, abs_one,
    abs_of_nonneg (Real.sqrt_nonneg _)]
  exact one_div_le_one_div_of_le (Real.sqrt_pos.mpr hnp) (Real.sqrt_le_sqrt hloc.2.2)

theorem actual_shell_mass_lower {lo hi : ℝ} (hlo : 6 ≤ lo) (hlen : 12 ≤ hi - lo) :
    (hi - lo) / (12 * Real.sqrt hi) ≤ absoluteShellMass lo hi := by
  let T := (sixIndices lo hi).image (fun k ↦ 6 * k)
  have hinj : Function.Injective (fun k : ℕ ↦ 6 * k) := by intro a b h; dsimp only at h; omega
  have hsub : T ⊆ shell lo hi := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    have hloc := selected_six_atom_location hlo hlen hk
    exact Finset.mem_Ioc.mpr ⟨(Nat.floor_lt (by linarith : 0 ≤ lo)).mpr hloc.2.1,
      Nat.le_floor hloc.2.2⟩
  have hfirst : ((sixIndices lo hi).card : ℝ) / Real.sqrt hi ≤
      ∑ k ∈ sixIndices lo hi, |coefficient (6 * k)| := by
    calc
      _ = ∑ _k ∈ sixIndices lo hi, 1 / Real.sqrt hi := by simp [div_eq_mul_inv]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ selected_six_coefficient_lower hlo hlen hk)
  have himage : (∑ k ∈ sixIndices lo hi, |coefficient (6 * k)|) =
      ∑ n ∈ T, |coefficient n| := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hinj h)]
  rw [himage] at hfirst
  have hall : ((sixIndices lo hi).card : ℝ) / Real.sqrt hi ≤ absoluteShellMass lo hi := by
    apply hfirst.trans
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n hn hnt ↦ abs_nonneg _)
  have hcount := six_indices_card_lower (by linarith : 0 ≤ lo) hlen
  have hprice := div_le_div_of_nonneg_right hcount (Real.sqrt_nonneg hi)
  have hid : ((hi - lo) / 12) / Real.sqrt hi = (hi - lo) / (12 * Real.sqrt hi) := by ring
  rw [hid] at hprice
  exact hprice.trans hall

theorem literal_exponential_shell_endpoints {A : ℝ} (hA : 8 ≤ A) :
    6 ≤ Real.exp (2 * A - 2) ∧
      12 ≤ Real.exp (2 * A - 1) - Real.exp (2 * A - 2) := by
  have hlo : 48 ≤ Real.exp (2 * A - 2) := exact_exp_four_exceeds_threshold.trans
    (Real.exp_le_exp.mpr (by linarith))
  have he1 : (2 : ℝ) ≤ Real.exp 1 := by linarith [Real.exp_one_gt_d9]
  have hmul : Real.exp (2 * A - 1) = Real.exp 1 * Real.exp (2 * A - 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hmul]
  constructor
  · linarith
  · nlinarith

theorem exact_exponential_shell_price (A : ℝ) :
    (Real.exp (2 * A - 1) - Real.exp (2 * A - 2)) /
        (12 * Real.sqrt (Real.exp (2 * A - 1))) =
      (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 := by
  have hroot : Real.sqrt (Real.exp (2 * A - 1)) = Real.exp (A - 1 / 2) := by
    have hsq : Real.exp (A - 1 / 2) ^ 2 = Real.exp (2 * A - 1) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    nlinarith [Real.sq_sqrt (Real.exp_pos (2 * A - 1)).le,
      Real.sqrt_nonneg (Real.exp (2 * A - 1)), Real.exp_pos (A - 1 / 2)]
  have hi : Real.exp (2 * A - 1) = Real.exp (2 * A) * Real.exp (-1) := by
    rw [← Real.exp_add]
    congr 1
  have hlo : Real.exp (2 * A - 2) = Real.exp (2 * A) * Real.exp (-2) := by
    rw [← Real.exp_add]
    congr 1
  have hsplit : Real.exp (2 * A) =
      Real.exp (A - 1 / 2) * (Real.exp (1 / 2) * Real.exp A) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [hroot, hi, hlo, hsplit]
  field_simp [(Real.exp_pos (A - 1 / 2)).ne']

theorem actual_exponential_shell_mass {A : ℝ} (hA : 8 ≤ A) :
    (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 ≤
      absoluteShellMass (Real.exp (2 * A - 2)) (Real.exp (2 * A - 1)) := by
  have he := literal_exponential_shell_endpoints hA
  rw [← exact_exponential_shell_price]
  exact actual_shell_mass_lower he.1 he.2

theorem absolute_replacement_error_prices_shell (s : Finset ℕ) (c ĉ : ℕ → ℝ) :
    (∑ n ∈ s, |c n|) - (∑ n ∈ s, |c n - ĉ n|) ≤ ∑ n ∈ s, |ĉ n| := by
  have h : (∑ n ∈ s, |c n|) ≤ (∑ n ∈ s, |c n - ĉ n|) + ∑ n ∈ s, |ĉ n| := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_le_sum
    intro n hn
    convert abs_add_le (c n - ĉ n) (ĉ n) using 1
    ring_nf
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.ShellArithmetic
