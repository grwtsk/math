import Solution
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.IntegerFactoringCounting

/-!
# Deterministic least-factor counting and complete output

Authors: grwtsk contributors

The isolated package pins Rudich and Rousseau's solution. Source correspondence,
attribution, and qualification are in `IntegerFactoringCounting.md`. In the
result below the cost of assembling a fixed complete-output caller is a premise.
-/

namespace GRWTSK.IntegerFactorization.Counting

/-- Actual upstream prefix search at the shared count, including a prime input. -/
theorem rudichRousseau_prefixSearch {n width : ℕ} (hn : 2 ≤ n) (hw : n < 2^width) :
    Factoring.Aux.search (prefixCount n) width = n.minFac :=
  Factoring.Aux.search_eq_minFac hn hw

/-- A least factor is a certified proper split precisely on the composite branch. -/
theorem rudichRousseau_composite_split {n : ℕ} (hn : 2 ≤ n) (hc : ¬n.Prime) :
    1 < Factoring.factor n ∧ Factoring.factor n < n ∧ Factoring.factor n ∣ n ∧
      n = Factoring.factor n * (n / Factoring.factor n) := by
  change 1 < n.minFac ∧ n.minFac < n ∧ n.minFac ∣ n ∧ n = n.minFac * (n / n.minFac)
  have hne : n.minFac ≠ n := fun h => hc (Nat.prime_def_minFac.mpr ⟨hn, h⟩)
  exact ⟨(Nat.minFac_prime (by omega)).two_le,
    lt_of_le_of_ne (Nat.minFac_le (by omega)) hne, Nat.minFac_dvd n,
    (Nat.mul_div_cancel' (Nat.minFac_dvd n)).symm⟩

/-- One upstream machine supplies the inner calls for every exponent parameter.
The recurrence and its encoding are extensional. The final conjunct spells out
the uniform whole-machine accounting premise still needed for a tape theorem. -/
theorem rudichRousseau_complete_of_assembly :
    ∃ M : Factoring.FactoringMachine,
      (∀ k : ℕ, 1 ≤ k → ∃ C : ℕ,
        Factoring.FactorsWithin M (fun b => C * 2^(b/k))) ∧
      (∀ n : ℕ, 2 ≤ n → compress (peel Factoring.factor n.log2 n) = canonical n) ∧
      (∀ (cost : ℕ → ℕ) (a d : ℕ),
        (∀ b R : ℕ, (∀ i ≤ b, M.time i ≤ R) → cost b ≤ a*(b+1)^d*(1+R)) →
        ∀ k : ℕ, 0 < k → ∃ C : ℕ, ∀ b, cost b ≤ C * 2^(b/k)) := by
  obtain ⟨M, hM⟩ := Factoring.subexponentialRate
  refine ⟨M, hM, fun _ hn => peel_canonical Factoring.factor (fun _ _ => rfl) hn, ?_⟩
  intro cost a d assembly
  apply complete_rate_of_assembly M.time cost a d _ assembly
  intro k hk
  obtain ⟨C, _, htime⟩ := hM k hk
  exact ⟨C, htime⟩

end GRWTSK.IntegerFactorization.Counting
