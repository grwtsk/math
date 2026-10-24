# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SelectedFamilyCountermodels.Variant17de6ee5a710c2cc89ee337f8b9e20f5c68376b7a309bae938be23decc914f0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c9e5d1b9903198e3ffa0435cd09efe3e0816de2` · SHA-256 `17de6ee5a710c2cc89ee337f8b9e20f5c68376b7a309bae938be23decc914f0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.HaarSelbergAdapter

/-!
# Finite averaging and laminarity do not supply a selected packing cap

The fixed-family/adaptive-family boundary in Batches 07–11 is witnessed twice.
A nonnegative finite packet can have mean one and arbitrarily large selected
entry. Separately, distinct nested intervals inside the unit root have lengths
at least one half, making their total charge arbitrarily large despite exact
laminarity. These are information-class countermodels, not arithmetic prime
counterexamples or claims that an additional maximal theorem is impossible.

Human selector and packing guards: grwtsk contributors. Local explicit finite
countermodels and Lean proofs: OpenAI Codex. Mathlib measure and finite sums
retain their upstream identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SelectedFamilyCountermodels

open scoped BigOperators
noncomputable section

/-- The spike in this module, with the following exact parameterization.

def spike (M j : ℕ) : ℝ := if j = 0 then M else 0
-/
def spike (M j : ℕ) : ℝ := if j = 0 then M else 0

theorem spike_nonneg (M j : ℕ) : 0 ≤ spike M j := by
  unfold spike
  split_ifs <;> positivity

theorem spike_sum {M : ℕ} (hM : 0 < M) :
    (∑ j ∈ Finset.range M, spike M j) = M := by
  simp [spike, hM]

theorem spike_mean {M : ℕ} (hM : 0 < M) :
    (∑ j ∈ Finset.range M, spike M j) / M = 1 := by
  rw [spike_sum hM]
  exact div_self (by exact_mod_cast hM.ne')

theorem selected_value_not_controlled_by_mean (C : ℝ) :
    ∃ M : ℕ, 0 < M ∧ (∑ j ∈ Finset.range M, spike M j) / M = 1 ∧ C < spike M 0 := by
  obtain ⟨M, hM⟩ := exists_nat_gt (max C 0)
  have hM0 : 0 < M := by exact_mod_cast (lt_of_le_of_lt (le_max_right C 0) hM)
  refine ⟨M, hM0, spike_mean hM0, ?_⟩
  simpa [spike] using lt_of_le_of_lt (le_max_left C 0) hM

/-- The panel length in this module, with the following exact parameterization.

def panelLength (j : ℕ) : ℝ := 1 - 1 / (j + 2 : ℕ)
-/
def panelLength (j : ℕ) : ℝ := 1 - 1 / (j + 2 : ℕ)
/-- The panel in this module, with the following exact parameterization.

def panel (j : ℕ) : Set ℝ := Set.Icc 0 (panelLength j)
-/
def panel (j : ℕ) : Set ℝ := Set.Icc 0 (panelLength j)

theorem panel_length_bounds (j : ℕ) : (1 / 2 : ℝ) ≤ panelLength j ∧ panelLength j ≤ 1 := by
  have hden : (2 : ℝ) ≤ (j + 2 : ℕ) := by exact_mod_cast (Nat.le_add_left 2 j)
  have hfrac := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 2) hden
  have hnonneg : (0 : ℝ) ≤ 1 / (j + 2 : ℕ) := by positivity
  unfold panelLength
  constructor <;> linarith

theorem panel_length_strict_mono : StrictMono panelLength := by
  intro i j hij
  have hi : (0 : ℝ) < (i + 2 : ℕ) := by positivity
  have hden' : ((i + 2 : ℕ) : ℝ) < (j + 2 : ℕ) := by
    exact_mod_cast (by omega : i + 2 < j + 2)
  have hfrac := one_div_lt_one_div_of_lt hi hden'
  unfold panelLength
  linarith

theorem panel_subset_root (j : ℕ) : panel j ⊆ Set.Icc (0 : ℝ) 1 := by
  intro x hx
  exact ⟨hx.1, hx.2.trans (panel_length_bounds j).2⟩

theorem panels_nested (i j : ℕ) : panel i ⊆ panel j ∨ panel j ⊆ panel i := by
  rcases le_total i j with hij | hji
  · left
    intro x hx
    exact ⟨hx.1, hx.2.trans (panel_length_strict_mono.monotone hij)⟩
  · right
    intro x hx
    exact ⟨hx.1, hx.2.trans (panel_length_strict_mono.monotone hji)⟩

theorem panels_distinct : Function.Injective panel := by
  intro i j hij
  have hi : panelLength i ∈ panel i :=
    ⟨(by norm_num : (0 : ℝ) ≤ 1 / 2).trans (panel_length_bounds i).1, le_rfl⟩
  have hj : panelLength j ∈ panel j :=
    ⟨(by norm_num : (0 : ℝ) ≤ 1 / 2).trans (panel_length_bounds j).1, le_rfl⟩
  rw [hij] at hi
  rw [← hij] at hj
  exact panel_length_strict_mono.injective (le_antisymm hi.2 hj.2)

theorem literal_panel_length (j : ℕ) :
    (MeasureTheory.volume (panel j)).toReal = panelLength j := by
  rw [panel, Real.volume_Icc, sub_zero, ENNReal.toReal_ofReal]
  exact (by norm_num : (0 : ℝ) ≤ 1 / 2).trans (panel_length_bounds j).1

theorem laminar_unit_root_has_unbounded_charge (C : ℝ) :
    ∃ M : ℕ, C < ∑ j ∈ Finset.range M, (MeasureTheory.volume (panel j)).toReal := by
  obtain ⟨M, hM⟩ := exists_nat_gt (2 * C)
  have hsum : (M : ℝ) * (1 / 2) ≤ ∑ j ∈ Finset.range M, panelLength j := by
    simpa using Finset.sum_le_sum (s := Finset.range M)
      (fun j _ => (panel_length_bounds j).1)
  refine ⟨M, ?_⟩
  simp_rw [literal_panel_length]
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.SelectedFamilyCountermodels
```
