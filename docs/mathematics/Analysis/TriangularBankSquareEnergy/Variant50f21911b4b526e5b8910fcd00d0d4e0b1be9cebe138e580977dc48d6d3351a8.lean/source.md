# Complete source: GRWTSK.Analysis.TriangularBankSquareEnergy.Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05b70f0b95aecbc24f404b526f35067be747a466` · SHA-256 `50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularDisjointBank
import FormalResearch.RiemannHypothesis.Conversation.TriangularPulseDebt
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge
import Mathlib.Analysis.Normed.Group.InfiniteSum

/-!
# One positive counting system has divergent full native square energy

Every original dyadic pulse survives in the single infinite bank. Weighted
refinement shows that each full native pulse pays at least a^2/768 in actual
bank cell energy. Pulses beyond any finite row set refute summability of that
one bank's cell-energy sequence. This is a generic positive-weight method
boundary, not an estimate or counterexample for the actual primes. The
identification with the source's continuous regulator and the 1<p<2 growth
choice remain separate. Human regulator/countermodel direction: grwtsk contributors. Local complete-bank square-energy consumer: OpenAI Codex. Mathlib
summability and the local weighted-Hodge bridge retain qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularBankSquareEnergy
open TriangularCountingPulse TriangularPulseDebt TriangularDisjointBank
open ArithmeticPrimitive NativeRecordConsumer
open scoped BigOperators
noncomputable section

def cellEnergy (a : ℝ) (n : ℕ) : ℝ :=
  if 1 ≤ n then (bankStorage dyadicSize a n) ^ 2 * cellClock n (n + 1 : ℕ) else 0

theorem bank_cell_energy_nonnegative (a : ℝ) (n : ℕ) : 0 ≤ cellEnergy a n := by
  unfold cellEnergy
  split_ifs with hn
  · exact mul_nonneg (sq_nonneg _) (cellClock_pos hn).le
  · rfl

theorem complete_dyadic_pulse_pays_square_price (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    a ^ 2 / 768 ≤ ∑ n ∈ inventory (dyadicSize j), cellEnergy a n := by
  have hM : 2 ≤ dyadicSize j := by have := dyadic_size_sufficient j; omega
  have hw (n : ℕ) (hn : n ∈ inventory (dyadicSize j)) : 0 < cellClock n (n + 1 : ℕ) := by
    have h := (Finset.mem_Icc.mp hn).1
    exact cellClock_pos (by nlinarith)
  have hh := WeightedHodge.finite_refinement_mono (inventory (dyadicSize j))
    (fun n ↦ cellClock n (n + 1 : ℕ))
    (fun n ↦ storage (dyadicSize j) a n * cellClock n (n + 1 : ℕ)) hw
    (complete_pulse_width_positive hM).ne'
  have heq : (∑ n ∈ inventory (dyadicSize j),
      (storage (dyadicSize j) a n * cellClock n (n + 1 : ℕ)) ^ 2 /
        cellClock n (n + 1 : ℕ)) =
      ∑ n ∈ inventory (dyadicSize j), cellEnergy a n := by
    apply Finset.sum_congr rfl
    intro n hn
    obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hn
    have hn1 : 1 ≤ n := by nlinarith
    rw [cellEnergy, if_pos hn1,
      bank_retains_complete_pulse dyadicSize dyadic_size_sufficient dyadic_intervals_separated
        j n hlo hhi a]
    field_simp [(hw n hn).ne']
  rw [heq] at hh
  exact (complete_pulse_square_price hM ha).trans hh

theorem full_dyadic_bank_square_energy_not_summable {a : ℝ} (ha : 0 < a) :
    ¬ Summable (cellEnergy a) := by
  intro hsum
  have hc : 0 < a ^ 2 / 768 := by positivity
  obtain ⟨s, hs⟩ := summable_iff_vanishing_norm.mp hsum (a ^ 2 / 768) hc
  let j : ℕ := s.sup id + 1
  have hd : Disjoint (inventory (dyadicSize j)) s := by
    apply Finset.disjoint_left.mpr
    intro n hn hns
    have hnhi : n ≤ s.sup id := Finset.le_sup (f := id) hns
    have hnlo := (Finset.mem_Icc.mp hn).1
    have hj := dyadic_size_sufficient j
    dsimp only [j] at hj
    nlinarith
  have hsmall := hs (inventory (dyadicSize j)) hd
  rw [Real.norm_eq_abs, abs_of_nonneg
    (Finset.sum_nonneg (fun n _ ↦ bank_cell_energy_nonnegative a n))] at hsmall
  exact (not_lt_of_ge (complete_dyadic_pulse_pays_square_price j ha.le)) hsmall

theorem positive_counting_with_square_root_error_and_divergent_native_square_energy :
    ∃ a : ℝ, (∀ n : ℕ, 0 < bankWeight dyadicSize a n) ∧
      (∀ x : ℝ, 1 ≤ x → |TriangularDisjointBank.count dyadicSize a x - x| ≤
        (a + 1) * Real.sqrt x) ∧ ¬ Summable (cellEnergy a) := by
  refine ⟨1 / 2, ?_, ?_, ?_⟩
  · intro n
    exact every_bank_weight_positive dyadicSize dyadic_size_sufficient n
      (by norm_num) (by norm_num)
  · intro x hx
    exact all_real_bank_counting_error dyadicSize dyadic_size_sufficient (by norm_num) hx
  · exact full_dyadic_bank_square_energy_not_summable (by norm_num)

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularBankSquareEnergy
```
