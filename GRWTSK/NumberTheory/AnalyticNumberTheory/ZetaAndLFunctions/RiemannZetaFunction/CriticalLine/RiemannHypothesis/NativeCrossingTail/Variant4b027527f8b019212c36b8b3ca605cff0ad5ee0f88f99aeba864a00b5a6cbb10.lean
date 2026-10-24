import FormalResearch.RiemannHypothesis.Conversation.LogRootTailIntegral

/-!
# The actual ordinary-prime infinite crossing ledger pays its exact envelope

The unchanged crossing selector, storage and native widths are retained. The
logarithmic density is summable by its exact improper integral, and comparison
proves summability of the actual selected crossing price. Reindexing the full
tail from N proves the stated 2*(log(N-1)+2)/sqrt(N-1) bound for every N>=3.
The source's literal N-star seam budget is then unconditional for this ledger.
It does not bound cycle loads, prove a moving-seam reconstruction theorem or RH.

Human atomic-tail and source-fidelity direction: grwtsk contributors. Local
infinite-sum and exact-entrance consumer: OpenAI Codex. Mathlib integral and
summability interfaces retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeCrossingTail
open ArithmeticPrimitive NativeRecordConsumer AtomicCrossingLedger LogRootTailIntegral
open scoped BigOperators
noncomputable section

/-- The price term in this module, with the following exact parameterization.

def priceTerm (N n : ℕ) : ℝ  (implemented by the following proof).
-/
def priceTerm (N n : ℕ) : ℝ := by
  classical
  exact if N ≤ n ∧ isCrossing n then
    cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| else 0

private theorem density_nonnegative_at_natural (n : ℕ) : 0 ≤ density n := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · norm_num [density]
  · exact density_nonnegative (by exact_mod_cast hn)

theorem log_density_natural_summable : Summable (fun n : ℕ ↦ density n) := by
  apply density_antitone_on_tail.summable_of_integrableOn_Ioi (N := 2)
    (density_integrable_tail le_rfl)
  intro t ht
  have ht2 : (2 : ℝ) < t := by simpa using ht
  exact density_nonnegative (by linarith)

private theorem priceTerm_nonnegative {N : ℕ} (hN : 3 ≤ N) (n : ℕ) : 0 ≤ priceTerm N n := by
  classical
  unfold priceTerm
  split_ifs with h
  · exact mul_nonneg (cellClock_pos (by have := h.1; omega)).le
      (le_max_of_le_left (abs_nonneg _))
  · rfl

private theorem priceTerm_le_gated_density {N : ℕ} (hN : 3 ≤ N) (n : ℕ) :
    priceTerm N n ≤ if N ≤ n then density n else 0 := by
  classical
  by_cases hn : N ≤ n
  · rw [if_pos hn]
    by_cases hc : isCrossing n
    · have hcond : N ≤ n ∧ isCrossing n := ⟨hn, hc⟩
      simpa only [priceTerm, if_pos hcond, density] using
        NativeClockDecay.actual_crossing_cell_decay (by omega : 3 ≤ n) hc
    · simp only [priceTerm, hc, and_false, if_false]
      exact density_nonnegative_at_natural n
  · simp [priceTerm, hn]

private theorem gated_density_summable (N : ℕ) :
    Summable (fun n : ℕ ↦ if N ≤ n then density n else 0) := by
  classical
  have he : (fun n : ℕ ↦ if N ≤ n then density n else 0) =
      ({n : ℕ | N ≤ n}.indicator (fun n : ℕ ↦ density n)) := by
    funext n
    by_cases hn : N ≤ n <;> simp [hn]
  rw [he]
  exact log_density_natural_summable.indicator {n : ℕ | N ≤ n}

theorem actual_selected_crossing_price_summable {N : ℕ} (hN : 3 ≤ N) :
    Summable (priceTerm N) :=
  Summable.of_nonneg_of_le (priceTerm_nonnegative hN)
    (priceTerm_le_gated_density hN) (gated_density_summable N)

theorem actual_infinite_crossing_tail_envelope {N : ℕ} (hN : 3 ≤ N) :
    tailPrice N ≤ envelope N := by
  classical
  let gated : ℕ → ℝ := fun n ↦ if N ≤ n then density n else 0
  have hgate : Summable gated := gated_density_summable N
  have hprice := actual_selected_crossing_price_summable hN
  have hpoint : ∀ n, priceTerm N n ≤ gated n := priceTerm_le_gated_density hN
  have hhead : ∑ n ∈ Finset.range N, gated n = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp only [gated, if_neg (Nat.not_le.mpr (Finset.mem_range.mp hn))]
  have hsplit := hgate.sum_add_tsum_nat_add N
  rw [hhead, zero_add] at hsplit
  have htail : (∑' n : ℕ, gated (n + N)) = ∑' n : ℕ, density (n + N : ℕ) := by
    apply tsum_congr
    intro n
    simp [gated]
  rw [htail] at hsplit
  have hbase : (2 : ℝ) ≤ (N - 1 : ℕ) := by exact_mod_cast (show 2 ≤ N - 1 by omega)
  have hanti : AntitoneOn density (Set.Ici (N - 1 : ℕ)) :=
    density_antitone_on_tail.mono (Set.Ici_subset_Ici.mpr hbase)
  have hint := density_integrable_tail hbase
  have hnonneg : ∀ x ∈ Set.Ioi ((N - 1 : ℕ) : ℝ), 0 ≤ density x := by
    intro x hx
    exact density_nonnegative (by have := Set.mem_Ioi.mp hx; linarith)
  have hsum := hanti.tsum_comp_add_le_integral (N - 1) hint hnonneg
  have heidx (n : ℕ) : n + (N - 1) + 1 = n + N := by omega
  simp only [heidx] at hsum
  calc
    tailPrice N = ∑' n : ℕ, priceTerm N n := rfl
    _ ≤ ∑' n : ℕ, gated n := hprice.tsum_le_tsum hpoint hgate
    _ = ∑' n : ℕ, density (n + N : ℕ) := hsplit.symm
    _ ≤ ∫ x in Set.Ioi ((N - 1 : ℕ) : ℝ), density x := hsum
    _ = envelope N := by
      rw [exact_tail_integral hbase]
      simp only [envelope, Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]

theorem actual_tail_envelope : TailEnvelope := fun _ hN ↦ actual_infinite_crossing_tail_envelope hN

theorem actual_literal_seam_budget : tailPrice ReserveConsumer.entranceScale < 1 / 4000000 :=
  supplied_tail_envelope_pays_literal_seam_budget actual_tail_envelope

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCrossingTail
