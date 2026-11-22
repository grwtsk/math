/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95FiniteSearchFrontier

/-!
# Executable first-failure report for the ordinal scan

The report minimizes the original stage ordinal among failing addresses.
Its result is stable when the scanned prefix grows. An empty report has
the scope of the current finite frontier.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

/-- Preserve the original ordinal rather than the numeric prime label. -/
def failureOrdinals (count : ℕ) : Finset ℕ :=
  (search count).image (fun a => stageOrdinal a.1 a.2)

theorem mem_failureOrdinals (count stage : ℕ) :
    stage ∈ failureOrdinals count ↔
      stage < 95 * count ∧ Counterexample (stageArgument stage) := by
  exact Finset.mem_image.trans (search_stage_iff count stage)

/-- A finite, executable report. `none` means no failure within this scan. -/
def firstFailure (count : ℕ) : Option ℕ :=
  if h : (failureOrdinals count).Nonempty then some ((failureOrdinals count).min' h) else none

theorem firstFailure_eq_some_iff (count stage : ℕ) :
    firstFailure count = some stage ↔
      stage < 95 * count ∧ Counterexample (stageArgument stage) ∧
      ∀ m < stage, ¬ Counterexample (stageArgument m) := by
  constructor
  · intro report
    unfold firstFailure at report
    split at report
    next h =>
      have he := Option.some.inj report
      subst stage
      obtain ⟨hlt, hbad⟩ := (mem_failureOrdinals count _).mp (Finset.min'_mem _ h)
      refine ⟨hlt, hbad, fun m hm hmbad => ?_⟩
      have hmem := (mem_failureOrdinals count m).mpr ⟨hm.trans hlt, hmbad⟩
      exact (not_lt_of_ge (Finset.min'_le _ m hmem)) hm
    next => contradiction
  · rintro ⟨hlt, hbad, hsafe⟩
    have hmem := (mem_failureOrdinals count stage).mpr ⟨hlt, hbad⟩
    have hnonempty : (failureOrdinals count).Nonempty := ⟨stage, hmem⟩
    rw [firstFailure, dite_eq_left hnonempty]
    congr 1
    apply le_antisymm (Finset.min'_le _ _ hmem)
    by_contra! h
    exact hsafe _ h ((mem_failureOrdinals count _).mp (Finset.min'_mem _ hnonempty)).2

theorem firstFailure_eq_none_iff (count : ℕ) :
    firstFailure count = none ↔ ∀ stage < 95 * count, ¬ Counterexample (stageArgument stage) := by
  constructor
  · intro h stage hlt hb
    have hne : (failureOrdinals count).Nonempty :=
      ⟨stage, (mem_failureOrdinals count _).mpr ⟨hlt, hb⟩⟩
    simp [firstFailure, hne] at h
  · intro h
    have hne : ¬ (failureOrdinals count).Nonempty := by
      rintro ⟨stage, hs⟩
      obtain ⟨hlt, hb⟩ := (mem_failureOrdinals count stage).mp hs
      exact h stage hlt hb
    simp [firstFailure, hne]

theorem firstFailure_stable {a b stage : ℕ} (order : a ≤ b)
    (found : firstFailure a = some stage) : firstFailure b = some stage := by
  obtain ⟨hlt, hbad, hsafe⟩ := (firstFailure_eq_some_iff a stage).mp found
  exact (firstFailure_eq_some_iff b stage).mpr ⟨hlt.trans_le (Nat.mul_le_mul_left _ order), hbad, hsafe⟩

/-- Once one report finds the global first failure, every frontier's
report is determined by whether it has reached that stage. -/
theorem firstFailure_at_frontier {count stage : ℕ}
    (found : firstFailure count = some stage) (frontier : ℕ) :
    firstFailure frontier = if stage < 95 * frontier then some stage else none := by
  obtain ⟨_, bad, safe⟩ := (firstFailure_eq_some_iff count stage).mp found
  split
  next includes => exact (firstFailure_eq_some_iff frontier stage).mpr ⟨includes, bad, safe⟩
  next excludes =>
    exact (firstFailure_eq_none_iff frontier).mpr (fun m hm => safe m (by omega))

/-- A finite report becomes a complete witness search only after existential
quantification over all scan frontiers. -/
theorem exists_firstFailure_iff_source :
    (∃ count stage, firstFailure count = some stage) ↔
      ∃ stage, Counterexample (stageArgument stage) := by
  constructor
  · rintro ⟨count, stage, h⟩
    exact ⟨stage, ((firstFailure_eq_some_iff count stage).mp h).2.1⟩
  · intro h
    obtain ⟨count, hcount⟩ := search_complete.mpr h
    obtain ⟨a, ha, hb, hs⟩ := search_contains_first_failure hcount
    have hfront := (search_stage_iff count _).mp ⟨a, ha, rfl⟩
    exact ⟨count, _, (firstFailure_eq_some_iff count _).mpr ⟨hfront.1, hb, hs⟩⟩

theorem cofinal_none_reports_iff_RH {original : ℕ → Prop} {halts : Prop}
    (agrees : ∀ n, 2 ≤ n → (Counterexample n ↔ original n))
    (halts_iff : halts ↔ ∃ stage : ℕ, original (stage + 2))
    (rh_iff : halts ↔ ¬ RiemannHypothesis) :
    (∀ bound : ℕ, ∃ count ≥ bound, firstFailure count = none) ↔ RiemannHypothesis := by
  simpa only [firstFailure_eq_none_iff, ← search_empty_iff_safe_before] using
    cofinal_empty_scans_iff_RH agrees halts_iff rh_iff

/-- At the empty frontier the executable report says none, yet this
frontier has not reached the original test with argument four. -/
theorem empty_frontier_report_control :
    firstFailure 0 = none ∧ stageArgument 2 = 4 ∧ ¬ 2 < 95 * (0 : ℕ) := by
  exact ⟨(firstFailure_eq_none_iff 0).mpr (by omega), rfl, by decide⟩

end GRWTSK.NumberTheory.Riemann95StageCertificates
