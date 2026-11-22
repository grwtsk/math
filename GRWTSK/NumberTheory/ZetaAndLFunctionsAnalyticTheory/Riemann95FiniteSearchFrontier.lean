/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates

/-!
# Exact finite frontier for the Riemann95 window checker

The scan uses the ordinal of an address, with the original argument offset.
A verified prefix can be extended by a tail certificate, and a nonempty
finite scan already contains the first failing stage of the whole source.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

/-- A stage lies in the scan frontier exactly when it occurs at a scanned address. -/
theorem search_stage_iff (count stage : ℕ) :
    (∃ a ∈ search count, stageOrdinal a.1 a.2 = stage) ↔
      stage < 95 * count ∧ Counterexample (stageArgument stage) := by
  constructor
  · rintro ⟨⟨w, j⟩, ha, rfl⟩
    have h := mem_search.mp ha
    refine ⟨?_, h.2⟩
    have hj := j.isLt
    unfold stageOrdinal
    omega
  · rintro ⟨hs, hb⟩
    obtain ⟨w, j, ha⟩ := ordinalAddress stage
    have hw : w < count := by
      unfold stageOrdinal at ha
      omega
    exact ⟨(w, j), mem_search.mpr ⟨hw, ha ▸ hb⟩, ha⟩

theorem search_empty_iff_safe_before (count : ℕ) :
    search count = ∅ ↔ ∀ stage < 95 * count, ¬ Counterexample (stageArgument stage) := by
  constructor
  · intro h stage hs hb
    obtain ⟨a, ha, _⟩ := (search_stage_iff count stage).mpr ⟨hs, hb⟩
    simp [h] at ha
  · intro h
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro a ha
    obtain ⟨hs, hb⟩ := (search_stage_iff count _).mp ⟨a, ha, rfl⟩
    exact h _ hs hb

/-- Given a safe prefix, exactly the new ordinal range remains to be certified. -/
theorem search_empty_extend {old new : ℕ} (prefixSafe : search old = ∅) :
    search new = ∅ ↔ ∀ stage, 95 * old ≤ stage → stage < 95 * new →
      ¬ Counterexample (stageArgument stage) := by
  rw [search_empty_iff_safe_before]
  constructor
  · exact fun h stage _ hs => h stage hs
  · intro h stage hs
    by_cases hold : stage < 95 * old
    · exact (search_empty_iff_safe_before old).mp prefixSafe stage hold
    · exact h stage (Nat.le_of_not_gt hold) hs

/-- The minimum failing ordinal in a nonempty scan is the first global failure. -/
theorem search_contains_first_failure {count : ℕ} (found : (search count).Nonempty) :
    ∃ a ∈ search count, Counterexample (stageArgument (stageOrdinal a.1 a.2)) ∧
      ∀ stage < stageOrdinal a.1 a.2, ¬ Counterexample (stageArgument stage) := by
  classical
  let ord : ℕ × Fin 95 → ℕ := fun a => stageOrdinal a.1 a.2
  have hex : ∃ s, Counterexample (stageArgument s) := by
    obtain ⟨a, ha⟩ := found
    exact ⟨ord a, ((search_stage_iff count (ord a)).mp ⟨a, ha, rfl⟩).2⟩
  have hlt : Nat.find hex < 95 * count := by
    obtain ⟨a, ha⟩ := found
    have h := (search_stage_iff count (ord a)).mp ⟨a, ha, rfl⟩
    exact (Nat.find_min' hex h.2).trans_lt h.1
  obtain ⟨a, ha, he⟩ := (search_stage_iff count (Nat.find hex)).mpr
    ⟨hlt, Nat.find_spec hex⟩
  refine ⟨a, ha, ?_, ?_⟩
  · rw [he]
    exact Nat.find_spec hex
  · rw [he]
    exact fun _ hs => Nat.find_min hex hs

/-- Unbounded checked prefixes suffice. Each completed scan certifies only its
finite frontier. -/
theorem cofinal_empty_scans_iff_source_safe :
    (∀ bound : ℕ, ∃ count ≥ bound, search count = ∅) ↔
      ∀ stage, ¬ Counterexample (stageArgument stage) := by
  constructor
  · intro h stage
    obtain ⟨count, hc, hs⟩ := h (stage + 1)
    exact (search_empty_iff_safe_before count).mp hs stage (by omega)
  · intro h bound
    exact ⟨bound, le_rfl, (search_empty_iff_safe_before bound).mpr fun stage _ => h stage⟩

theorem cofinal_empty_scans_iff_RH {original : ℕ → Prop} {halts : Prop}
    (agrees : ∀ n, 2 ≤ n → (Counterexample n ↔ original n))
    (halts_iff : halts ↔ ∃ stage : ℕ, original (stage + 2))
    (rh_iff : halts ↔ ¬ RiemannHypothesis) :
    (∀ bound : ℕ, ∃ count ≥ bound, search count = ∅) ↔ RiemannHypothesis :=
  cofinal_empty_scans_iff_source_safe.trans
    (all_windows_accept_iff.symm.trans (all_windows_accept_iff_RH agrees halts_iff rh_iff))

/-- The actual ordinal search reaches argument four at one window and misses
it at the empty frontier. Prime-value addressing misses four at every frontier. -/
theorem composite_argument_frontier_control :
    2 < 95 * (1 : ℕ) ∧ ¬ (2 < 95 * (0 : ℕ)) ∧
      stageArgument 2 = 4 ∧ ¬ ∃ w j, primeLabel w j = 4 := by
  exact ⟨by decide, by decide, argument_four_omitted_by_prime_labels⟩

end GRWTSK.NumberTheory.Riemann95StageCertificates
