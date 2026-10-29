/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licenses retained. -/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Finset.Card
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic

/-!
# Dyadic layers of a finite exponential sum

The deterministic dyadic decomposition in Pham--Sauermann,
arXiv:2602.15797v1, equation (3.4), before estimating random layer sizes.
No probabilistic or anti-concentration estimate is a premise or conclusion.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers
open scoped BigOperators

variable {Ω : Type*} [Fintype Ω]

noncomputable def lowBand (energy : Ω → ℝ) : Finset Ω :=
  Finset.univ.filter (fun x => energy x < 1)

noncomputable def dyadicBand (energy : Ω → ℝ) (k : ℕ) : Finset Ω :=
  Finset.univ.filter (fun x => (2 : ℝ) ^ k ≤ energy x ∧ energy x < 2 ^ (k + 1))

theorem dyadic_cover (v : ℝ) (L : ℕ) (hu : v < 2 ^ (L + 1)) :
    v < 1 ∨ ∃ k ∈ Finset.range (L + 1), (2 : ℝ) ^ k ≤ v ∧ v < 2 ^ (k + 1) := by
  induction L with
  | zero =>
      by_cases hv : v < 1
      · exact Or.inl hv
      · exact Or.inr ⟨0, by simp, by simpa using le_of_not_gt hv, by simpa using hu⟩
  | succ L ih =>
      by_cases hv : v < 2 ^ (L + 1)
      · rcases ih hv with hl | ⟨k, hk, hlo, hhi⟩
        · exact Or.inl hl
        · exact Or.inr ⟨k, Finset.mem_range.mpr (by have := Finset.mem_range.mp hk; omega), hlo, hhi⟩
      · exact Or.inr ⟨L + 1, by simp, le_of_not_gt hv, hu⟩

/-- The exponential contribution of every low-energy point is at most one. -/
theorem exp_neg_le_one (v : ℝ) (h : 0 ≤ v) : Real.exp (-v) ≤ 1 := by
  exact Real.exp_le_one_iff.mpr (by linarith)

/-- Deterministic layer estimate. A later probabilistic proof must estimate
actual layer cardinalities; this theorem supplies no such estimates. -/
theorem sum_exp_neg_le_layers (energy : Ω → ℝ) (L : ℕ)
    (hn : ∀ x, 0 ≤ energy x) (hu : ∀ x, energy x < 2 ^ (L + 1)) :
    ∑ x, Real.exp (-energy x) ≤
      ((lowBand energy).card : ℝ) +
        ∑ k ∈ Finset.range (L + 1), ((dyadicBand energy k).card : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
  classical
  let weight (x : Ω) : ℝ :=
    (if energy x < 1 then 1 else 0) +
      ∑ k ∈ Finset.range (L + 1),
        if (2 : ℝ) ^ k ≤ energy x ∧ energy x < 2 ^ (k + 1)
        then Real.exp (-(2 : ℝ) ^ k) else 0
  have hp : ∀ x, Real.exp (-energy x) ≤ weight x := by
    intro x
    have hterms : ∀ k, 0 ≤ (if (2 : ℝ) ^ k ≤ energy x ∧ energy x < 2 ^ (k + 1)
        then Real.exp (-(2 : ℝ) ^ k) else 0) := by intro k; split_ifs <;> positivity
    rcases dyadic_cover (energy x) L (hu x) with hl | ⟨k, hk, hlo, hhi⟩
    · dsimp [weight]
      rw [if_pos hl]
      exact (exp_neg_le_one _ (hn x)).trans (le_add_of_nonneg_right (Finset.sum_nonneg (fun i _ => hterms i)))
    · have ht : Real.exp (-(2 : ℝ) ^ k) ≤
          ∑ j ∈ Finset.range (L + 1),
            if (2 : ℝ) ^ j ≤ energy x ∧ energy x < 2 ^ (j + 1)
            then Real.exp (-(2 : ℝ) ^ j) else 0 := by
        have h := Finset.single_le_sum (s := Finset.range (L + 1)) (fun j _ => hterms j) hk
        simpa only [if_pos (And.intro hlo hhi)] using h
      have he : Real.exp (-energy x) ≤ Real.exp (-(2 : ℝ) ^ k) :=
        Real.exp_le_exp.mpr (neg_le_neg hlo)
      dsimp [weight]
      have hi : (0 : ℝ) ≤ if energy x < 1 then 1 else 0 := by split_ifs <;> norm_num
      exact he.trans (ht.trans (le_add_of_nonneg_left hi))
  calc
    ∑ x, Real.exp (-energy x) ≤ ∑ x, weight x := Finset.sum_le_sum (fun x _ => hp x)
    _ = ((lowBand energy).card : ℝ) +
        ∑ k ∈ Finset.range (L + 1), ((dyadicBand energy k).card : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
      dsimp [weight]
      rw [Finset.sum_add_distrib, Finset.sum_comm]
      congr 1
      · simp [lowBand]
      · apply Finset.sum_congr rfl
        intro k _
        simp [dyadicBand, ← Finset.sum_filter]

/-- A pointwise geometric majorant for the universal final series in the
source proof of Theorem 1.3. No spectral or probabilistic estimate is assumed. -/
theorem exp_dyadic_term_le_geometric (k : ℕ) :
    Real.exp ((k : ℝ) / 2 - (2 : ℝ) ^ k) ≤ (1 / 2 : ℝ) ^ k := by
  have hpow : (2 : ℝ) * k ≤ (2 : ℝ) ^ k := by
    exact_mod_cast Nat.mul_le_pow (by decide : (2 : ℕ) ≠ 1) k
  have hexp : Real.exp ((k : ℝ) / 2 - (2 : ℝ) ^ k) ≤
      Real.exp ((k : ℝ) * (-1)) := by
    apply Real.exp_le_exp.mpr
    have hk : (0 : ℝ) ≤ k := by positivity
    nlinarith
  have hbase : Real.exp (-1) ≤ (1 / 2 : ℝ) := by
    rw [Real.exp_neg]
    simpa only [one_div] using
      (one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 2)
        (by have h := Real.add_one_le_exp (1 : ℝ); linarith : (2 : ℝ) ≤ Real.exp 1))
  rw [Real.exp_nat_mul] at hexp
  exact hexp.trans (pow_le_pow_left₀ (Real.exp_nonneg _) hbase k)

/-- The finite universal source series is bounded by a geometric sum. -/
theorem sum_exp_dyadic_le_geometric (N : ℕ) :
    (∑ k ∈ Finset.range N, Real.exp ((k : ℝ) / 2 - (2 : ℝ) ^ k)) ≤
      ∑ k ∈ Finset.range N, (1 / 2 : ℝ) ^ k :=
  Finset.sum_le_sum (fun k _ => exp_dyadic_term_le_geometric k)

/-- The universal constant used to finish the source's dyadic summation. -/
theorem sum_exp_dyadic_le_two (N : ℕ) :
    (∑ k ∈ Finset.range N, Real.exp ((k : ℝ) / 2 - (2 : ℝ) ^ k)) ≤ 2 :=
  (sum_exp_dyadic_le_geometric N).trans (sum_geometric_two_le N)

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers
