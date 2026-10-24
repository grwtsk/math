# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularBankInventory.Variant19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5d3d30f19ac5c4e5e1d0dab8a7eea4ba85e3ede` · SHA-256 `19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularDisjointBank

/-!
# The finite bank cutoff retains the complete infinite pulse inventory

Disjointness makes the finite maximum exactly the sum of every eligible pulse.
The proved sufficient cutoff makes every omitted later pulse identically zero
at the requested integer. Thus the same value is the convergent sum of the
entire infinite pulse family. No pulse or endpoint is discarded to improve a
bound. These are generic counting coefficients, not actual prime weights.
Human full-inventory requirement: grwtsk contributors. Local source-exact infinite
inventory consumer: OpenAI Codex. Mathlib finite and infinite sums retain their
qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularBankInventory
open TriangularCountingPulse TriangularDisjointBank
open scoped BigOperators
noncomputable section

theorem exact_complete_finite_pulse_inventory (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (hsep : Separated M) (a : ℝ) (n : ℕ) :
    bankStorage M a n = ∑ j ∈ Finset.range (n + 1), storage (M j) a n := by
  by_cases hz : height M n = 0
  · have hs : ∀ j ∈ Finset.range (n + 1), storage (M j) a n = 0 := by
      intro j hj
      have hle : triangle (M j) n ≤ height M n :=
        Finset.le_sup (f := fun k ↦ triangle (M k) n) hj
      rw [hz] at hle
      have ht : triangle (M j) n = 0 := Nat.eq_zero_of_le_zero hle
      simp [storage, ht]
    simp [bankStorage, hz, Finset.sum_eq_zero hs]
  · have hp : (0 : ℕ) < height M n := Nat.pos_of_ne_zero hz
    obtain ⟨j, hj, hle⟩ := (Finset.le_sup_iff hp).mp (le_rfl : height M n ≤ height M n)
    have ht : 0 < triangle (M j) n := hp.trans_le hle
    have hn : (M j) ^ 2 ≤ n := by unfold triangle at ht; omega
    have hnU : n ≤ (M j) ^ 2 + 2 * M j := by unfold triangle at ht; omega
    rw [bank_retains_complete_pulse M hM hsep j n hn hnU a]
    symm
    apply Finset.sum_eq_single j
    · intro k _ hkj
      rcases hsep k j hkj with h | h
      · exact pulse_is_zero_outside (Or.inr (h.trans hn)) a
      · exact pulse_is_zero_outside (Or.inl (hnU.trans h)) a
    · intro hnot
      exact False.elim (hnot hj)

theorem every_later_pulse_is_zero_at_requested_integer (M : ℕ → ℕ)
    (hM : ∀ j, j + 2 ≤ M j) (a : ℝ) (n j : ℕ) (hj : j ∉ Finset.range (n + 1)) :
    storage (M j) a n = 0 := by
  have hjn : n < j := by have := Finset.mem_range.not.mp hj; omega
  simp only [storage, sufficient_cutoff M hM hjn, Nat.cast_zero, mul_zero]

theorem exact_entire_infinite_pulse_inventory (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (hsep : Separated M) (a : ℝ) (n : ℕ) :
    HasSum (fun j ↦ storage (M j) a n) (bankStorage M a n) := by
  rw [exact_complete_finite_pulse_inventory M hM hsep]
  apply hasSum_sum_of_ne_finset_zero
  intro j hj
  exact every_later_pulse_is_zero_at_requested_integer M hM a n j hj

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularBankInventory
```
