# Complete source: GRWTSK.Analysis.MangoldtPrimitiveAbsoluteMass.Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d9215002a8c434ab2a0174941c7b42e2b0934a3` · SHA-256 `1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteTentAbsoluteMass
import FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# The actual Mangoldt primitive also has a large termwise absolute payment

The closed finite primitive retains the literal Mangoldt-minus-one row and
the weight 2*(n^(-1/2)-x^(-1/2)). Multiples of six below x/4 give an absolute
payment lower bound, independently of prime distribution. The signed
primitive is not bounded below by this calculation.

Source: audited RH conversation LT03-14, BL03-01F. Human source direction:
grwtsk contributors. Local consumer: OpenAI Codex. Existing repository
primitive and multiples-of-six declarations retain their qualified identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.MangoldtPrimitiveAbsoluteMass

open FormalResearch.RiemannHypothesis.SourceSignedPortControls
open scoped BigOperators
noncomputable section

def primitiveWeight (x : ℝ) (n : ℕ) : ℝ := 2 * (1 / Real.sqrt n - 1 / Real.sqrt x)
def absolutePrimitiveMass (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, |ArithmeticFunction.vonMangoldt n - 1| * primitiveWeight x n

theorem visible_primitive_weight_nonnegative {x : ℝ} {n : ℕ} (hn : 1 ≤ n)
    (hnx : (n : ℝ) ≤ x) : 0 ≤ primitiveWeight x n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hi : 1 / Real.sqrt x ≤ 1 / Real.sqrt n :=
    one_div_le_one_div_of_le (Real.sqrt_pos.mpr hnp) (Real.sqrt_le_sqrt hnx)
  unfold primitiveWeight
  linarith

theorem early_primitive_weight_lower {x : ℝ} {n : ℕ} (hn : 1 ≤ n)
    (hnx : (n : ℝ) ≤ x / 4) : 2 / Real.sqrt x ≤ primitiveWeight x n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hx : 0 < x := by linarith
  have hsnp := Real.sqrt_pos.mpr hnp
  have hsxp := Real.sqrt_pos.mpr hx
  have hsqn := Real.sq_sqrt hnp.le
  have hsqx := Real.sq_sqrt hx.le
  have hdouble : 2 * Real.sqrt n ≤ Real.sqrt x := by nlinarith
  have hi : 2 / Real.sqrt x ≤ 1 / Real.sqrt n :=
    (div_le_div_iff₀ hsxp hsnp).mpr (by linarith)
  rw [show 2 / Real.sqrt x = 2 * (1 / Real.sqrt x) by ring] at hi ⊢
  unfold primitiveWeight
  linarith

theorem first_quarter_six_count {x : ℝ} (hx : 48 ≤ x) :
    x / 48 ≤ (⌊x / 24⌋₊ : ℝ) := by
  have hf := Nat.lt_floor_add_one (x / 24)
  linarith

theorem early_six_atom_lower {x : ℝ} (hx : 48 ≤ x) {k : ℕ}
    (hk : k ∈ Finset.Icc 1 ⌊x / 24⌋₊) :
    2 / Real.sqrt x ≤ |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
      primitiveWeight x (6 * k) := by
  obtain ⟨hk1, hkM⟩ := Finset.mem_Icc.mp hk
  have hkr := (show (k : ℝ) ≤ (⌊x / 24⌋₊ : ℝ) by exact_mod_cast hkM).trans
    (Nat.floor_le (by linarith : 0 ≤ x / 24))
  rw [vonMangoldt_six_mul]
  simp only [zero_sub, abs_neg, abs_one, one_mul]
  apply early_primitive_weight_lower (by omega : 1 ≤ 6 * k)
  push_cast
  linarith

theorem actual_primitive_absolute_mass_lower {x : ℝ} (hx : 48 ≤ x) :
    Real.sqrt x / 24 ≤ absolutePrimitiveMass x := by
  let M : ℕ := ⌊x / 24⌋₊
  let T := (Finset.Icc 1 M).image (fun k ↦ 6 * k)
  have hi : Function.Injective (fun k : ℕ ↦ 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hsub : T ⊆ Finset.Icc 2 ⌊x⌋₊ := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    obtain ⟨hk1, hkM⟩ := Finset.mem_Icc.mp hk
    have hkr := (show (k : ℝ) ≤ (M : ℝ) by exact_mod_cast hkM).trans
      (Nat.floor_le (by linarith : 0 ≤ x / 24))
    exact Finset.mem_Icc.mpr ⟨by omega, Nat.le_floor (by push_cast; linarith)⟩
  have hfirst : (M : ℝ) * (2 / Real.sqrt x) ≤
      ∑ k ∈ Finset.Icc 1 M,
        |ArithmeticFunction.vonMangoldt (6 * k) - 1| * primitiveWeight x (6 * k) := by
    calc
      _ = ∑ _k ∈ Finset.Icc 1 M, 2 / Real.sqrt x := by simp [Nat.card_Icc]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ early_six_atom_lower hx hk)
  have himage : (∑ k ∈ Finset.Icc 1 M,
      |ArithmeticFunction.vonMangoldt (6 * k) - 1| * primitiveWeight x (6 * k)) =
      ∑ n ∈ T, |ArithmeticFunction.vonMangoldt n - 1| * primitiveWeight x n := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hi h)]
  rw [himage] at hfirst
  have hraw : (M : ℝ) * (2 / Real.sqrt x) ≤ absolutePrimitiveMass x := by
    apply hfirst.trans
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro n hn hnt
    obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
    have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans
      (Nat.floor_le (by linarith : 0 ≤ x))
    exact mul_nonneg (abs_nonneg _) (visible_primitive_weight_nonnegative (by omega) hnx)
  have hcount := first_quarter_six_count hx
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr (by linarith)
  have hsq := Real.sq_sqrt (by linarith : 0 ≤ x)
  have hmul : (M : ℝ) * (2 / Real.sqrt x) = (2 * M) / Real.sqrt x := by ring
  rw [hmul] at hraw
  have hbase : Real.sqrt x / 24 ≤ (2 * M) / Real.sqrt x := by
    apply (le_div_iff₀ hspos).mpr
    change x / 48 ≤ (M : ℝ) at hcount
    nlinarith
  exact hbase.trans hraw

theorem exact_closed_primitive_weight_row (x : ℝ) :
    ArithmeticPrimitive.closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x =
      ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n - 1) * primitiveWeight x n := by
  unfold ArithmeticPrimitive.closedPrimitive ArithmeticPrimitive.finitePrimitive primitiveWeight
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  ring

theorem actual_closed_primitive_termwise_upper {x : ℝ} (hx : 0 ≤ x) :
    |ArithmeticPrimitive.closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x| ≤
      absolutePrimitiveMass x := by
  rw [exact_closed_primitive_weight_row]
  have h := Finset.abs_sum_le_sum_abs (s := Finset.Icc 2 ⌊x⌋₊)
    (f := fun n ↦ (ArithmeticFunction.vonMangoldt n - 1) * primitiveWeight x n)
  apply h.trans_eq
  unfold absolutePrimitiveMass
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
  have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans (Nat.floor_le hx)
  rw [abs_mul, abs_of_nonneg (visible_primitive_weight_nonnegative (by omega) hnx)]

/-- Uses Mario Carneiro and Joseph Myers' qualified Mathlib numerical exponential bound. -/
theorem exact_exp_four_exceeds_threshold : (48 : ℝ) ≤ Real.exp 4 := by
  have h27 : (27 / 10 : ℝ) ≤ Real.exp 1 := by linarith [Real.exp_one_gt_d9]
  have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 27 / 10) h27 4
  have he : Real.exp 4 = Real.exp 1 ^ 4 := by
    rw [← Real.exp_nat_mul]
    norm_num
  rw [he]
  norm_num at hp
  linarith

theorem actual_logarithmic_primitive_absolute_lower {t : ℝ} (ht : 4 ≤ t) :
    Real.exp (t / 2) / 60 ≤ absolutePrimitiveMass (Real.exp t) := by
  have hx : (48 : ℝ) ≤ Real.exp t :=
    exact_exp_four_exceeds_threshold.trans (Real.exp_le_exp.mpr ht)
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hroot : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
    nlinarith [Real.sqrt_nonneg (Real.exp t), Real.exp_pos (t / 2)]
  have h := actual_primitive_absolute_mass_lower hx
  rw [hroot] at h
  have hp := Real.exp_pos (t / 2)
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.MangoldtPrimitiveAbsoluteMass
```
