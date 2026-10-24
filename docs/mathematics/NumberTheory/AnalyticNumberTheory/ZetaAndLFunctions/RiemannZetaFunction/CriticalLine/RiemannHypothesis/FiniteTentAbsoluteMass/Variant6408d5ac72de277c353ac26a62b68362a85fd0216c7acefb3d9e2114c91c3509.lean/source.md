# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteTentAbsoluteMass.Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f82808fa109851f3d064a02699e0bf27feeb2a39` · SHA-256 `6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AbsoluteMass

/-!
# Multiples of six force absolute mass in the actual finite arithmetic tent

The literal Batch 3 tent on (x,16x] retains every Mangoldt-minus-one
coefficient. Multiples of six in (2x,4x] provide the lower bound; no prime
distribution input or replacement positive counting system is used. This
is an obstruction to termwise absolute payment, not a lower bound for the
signed tent or a rejection of methods retaining signed correlations.

Human arithmetic direction: grwtsk contributors. Local finite-tent consumer:
OpenAI Codex. The repository's qualified multiples-of-six Mangoldt theorem
and Mathlib arithmetic remain at their existing source identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteTentAbsoluteMass

open FormalResearch.RiemannHypothesis.SourceSignedPortControls
open scoped BigOperators
noncomputable section

def tentWeight (y : ℝ) : ℝ :=
  if 1 ≤ y ∧ y ≤ 4 then 1 - 1 / Real.sqrt y
  else if 4 < y ∧ y ≤ 16 then 2 / Real.sqrt y - 1 / 2 else 0

def sixWindow (x : ℝ) : Finset ℕ := Finset.Ioc ⌊x / 3⌋₊ ⌊2 * x / 3⌋₊

def absoluteTentMass (x : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊,
    |ArithmeticFunction.vonMangoldt n - 1| * tentWeight (n / x)) / Real.sqrt x

theorem tent_weight_nonnegative (y : ℝ) : 0 ≤ tentWeight y := by
  unfold tentWeight
  split_ifs with hleft hright
  · have hy : 0 ≤ y := by linarith [hleft.1]
    have hs := Real.sqrt_nonneg y
    have hsq := Real.sq_sqrt hy
    have hs1 : 1 ≤ Real.sqrt y := by nlinarith [hleft.1]
    have hdiv : 1 / Real.sqrt y ≤ 1 := (div_le_one (by linarith)).mpr hs1
    linarith
  · have hy : 0 ≤ y := by linarith [hright.1]
    have hs := Real.sqrt_nonneg y
    have hsq := Real.sq_sqrt hy
    have hspos : 0 < Real.sqrt y := by nlinarith [hright.1]
    have hs4 : Real.sqrt y ≤ 4 := by nlinarith [hright.2]
    have hdiv : (1 / 2 : ℝ) ≤ 2 / Real.sqrt y :=
      (le_div_iff₀ hspos).mpr (by linarith)
    linarith
  · rfl

theorem middle_tent_weight_lower {y : ℝ} (hlo : 2 < y) (hhi : y ≤ 4) :
    (1 / 4 : ℝ) ≤ tentWeight y := by
  have hy : 0 ≤ y := by linarith
  have hs := Real.sqrt_nonneg y
  have hsq := Real.sq_sqrt hy
  have hspos : 0 < Real.sqrt y := Real.sqrt_pos.mpr (by linarith)
  have hs43 : (4 / 3 : ℝ) ≤ Real.sqrt y := by nlinarith
  have hdiv : 1 / Real.sqrt y ≤ 3 / 4 :=
    (div_le_iff₀ hspos).mpr (by linarith)
  rw [tentWeight, if_pos ⟨by linarith, hhi⟩]
  linarith

theorem six_window_card_lower {x : ℝ} (hx : 6 ≤ x) :
    x / 6 ≤ ((sixWindow x).card : ℝ) := by
  have hlo : 0 ≤ x / 3 := by linarith
  have hmono : ⌊x / 3⌋₊ ≤ ⌊2 * x / 3⌋₊ := Nat.floor_mono (by linarith)
  have hL := Nat.floor_le hlo
  have hU := Nat.lt_floor_add_one (2 * x / 3)
  simp only [sixWindow, Nat.card_Ioc, Nat.cast_sub hmono]
  linarith

theorem six_window_atom_location {x : ℝ} (hx : 6 ≤ x) {k : ℕ}
    (hk : k ∈ sixWindow x) :
    1 ≤ k ∧ 2 * x < (6 * k : ℕ) ∧ (6 * k : ℕ) ≤ 4 * x := by
  obtain ⟨hlo, hhi⟩ := Finset.mem_Ioc.mp hk
  have hkr : x / 3 < (k : ℝ) := (Nat.floor_lt (by linarith : 0 ≤ x / 3)).mp hlo
  have hu := (show (k : ℝ) ≤ (⌊2 * x / 3⌋₊ : ℝ) by exact_mod_cast hhi).trans
    (Nat.floor_le (by linarith : 0 ≤ 2 * x / 3))
  refine ⟨by omega, ?_, ?_⟩ <;> push_cast <;> linarith

theorem every_selected_six_atom_pays_quarter {x : ℝ} (hx : 6 ≤ x) {k : ℕ}
    (hk : k ∈ sixWindow x) :
    (1 / 4 : ℝ) ≤ |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
      tentWeight ((6 * k : ℕ) / x) := by
  have hl := six_window_atom_location hx hk
  have hxpos : 0 < x := by linarith
  rw [vonMangoldt_six_mul]
  simp only [zero_sub, abs_neg, abs_one, one_mul]
  apply middle_tent_weight_lower
  · exact (lt_div_iff₀ hxpos).mpr (by linarith [hl.2.1])
  · exact (div_le_iff₀ hxpos).mpr hl.2.2

theorem actual_complete_tent_row_pays_six_window {x : ℝ} (hx : 6 ≤ x) :
    ((sixWindow x).card : ℝ) / 4 ≤
      ∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊,
        |ArithmeticFunction.vonMangoldt n - 1| * tentWeight (n / x) := by
  let T := (sixWindow x).image (fun k ↦ 6 * k)
  have hi : Function.Injective (fun k : ℕ ↦ 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hsub : T ⊆ Finset.Icc 2 ⌊16 * x⌋₊ := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    have hl := six_window_atom_location hx hk
    exact Finset.mem_Icc.mpr ⟨by omega, Nat.le_floor (by linarith [hl.2.2])⟩
  have hfirst : ((sixWindow x).card : ℝ) / 4 ≤
      ∑ k ∈ sixWindow x, |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
        tentWeight ((6 * k : ℕ) / x) := by
    calc
      _ = ∑ _k ∈ sixWindow x, (1 / 4 : ℝ) := by simp [div_eq_mul_inv]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ every_selected_six_atom_pays_quarter hx hk)
  have himage : (∑ k ∈ sixWindow x, |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
      tentWeight ((6 * k : ℕ) / x)) =
      ∑ n ∈ T, |ArithmeticFunction.vonMangoldt n - 1| * tentWeight (n / x) := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hi h)]
  rw [himage] at hfirst
  exact hfirst.trans (Finset.sum_le_sum_of_subset_of_nonneg hsub
    (fun n _ _ ↦ mul_nonneg (abs_nonneg _) (tent_weight_nonnegative _)))

theorem actual_absolute_tent_mass_lower {x : ℝ} (hx : 6 ≤ x) :
    Real.sqrt x / 24 ≤ absoluteTentMass x := by
  have hrow := actual_complete_tent_row_pays_six_window hx
  have hcount := six_window_card_lower hx
  have hxpos : 0 < x := by linarith
  have hspos := Real.sqrt_pos.mpr hxpos
  have hsq := Real.sq_sqrt hxpos.le
  unfold absoluteTentMass
  apply (le_div_iff₀ hspos).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteTentAbsoluteMass
```
