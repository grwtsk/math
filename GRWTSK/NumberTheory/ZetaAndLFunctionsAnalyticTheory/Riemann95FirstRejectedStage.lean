/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates

/-!
# First rejection in a finite prefix of the exact Riemann95 checker

The finite search is ordered by the original stage ordinal. A returned witness
comes with safety of every earlier stage. An empty result covers exactly the
finite prefix through the previous window.
-/

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

/-- Bad stage ordinals found by the original finite window search. -/
def rejectedStages (count : ℕ) : Finset ℕ :=
  (search count).image fun address => stageOrdinal address.1 address.2

theorem stageOrdinal_lt_cutoff_iff (count window : ℕ) (slot : Fin 95) :
    stageOrdinal window slot < 95 * count ↔ window < count := by
  have hslot := slot.isLt
  unfold stageOrdinal
  omega

theorem mem_rejectedStages {count stage : ℕ} :
    stage ∈ rejectedStages count ↔
      stage < 95 * count ∧ Counterexample (stageArgument stage) := by
  constructor
  · intro h
    obtain ⟨⟨window, slot⟩, hm, rfl⟩ := Finset.mem_image.mp h
    obtain ⟨hw, hbad⟩ := mem_search.mp hm
    exact ⟨(stageOrdinal_lt_cutoff_iff count window slot).mpr hw, hbad⟩
  · rintro ⟨hcut, hbad⟩
    obtain ⟨window, slot, rfl⟩ := ordinalAddress stage
    exact Finset.mem_image.mpr ⟨(window, slot),
      mem_search.mpr ⟨(stageOrdinal_lt_cutoff_iff count window slot).mp hcut, hbad⟩, rfl⟩

/-- Returns the least rejected stage among the first count windows. -/
def firstRejectedStage (count : ℕ) : Option ℕ :=
  if h : (rejectedStages count).Nonempty then some ((rejectedStages count).min' h) else none

theorem firstRejectedStage_eq_some_iff {count stage : ℕ} :
    firstRejectedStage count = some stage ↔
      stage < 95 * count ∧ Counterexample (stageArgument stage) ∧
        ∀ m < stage, ¬ Counterexample (stageArgument m) := by
  unfold firstRejectedStage
  split
  · rename_i h
    constructor
    · intro he
      have heq := Option.some.inj he
      have hm := (rejectedStages count).min'_mem h
      rw [heq] at hm
      obtain ⟨hcut, hbad⟩ := mem_rejectedStages.mp hm
      refine ⟨hcut, hbad, fun m hlt hb => ?_⟩
      have hmin := (rejectedStages count).min'_le m
        (mem_rejectedStages.mpr ⟨hlt.trans hcut, hb⟩)
      omega
    · rintro ⟨hcut, hbad, hsafe⟩
      have hmin := (rejectedStages count).min'_le stage
        (mem_rejectedStages.mpr ⟨hcut, hbad⟩)
      have hm := (mem_rejectedStages.mp ((rejectedStages count).min'_mem h)).2
      have hle : stage ≤ (rejectedStages count).min' h :=
        le_of_not_gt fun hlt => hsafe _ hlt hm
      exact congrArg some (Nat.le_antisymm hmin hle)
  · rename_i h
    constructor
    · intro he
      cases he
    · rintro ⟨hcut, hbad, _⟩
      exact (h ⟨stage, mem_rejectedStages.mpr ⟨hcut, hbad⟩⟩).elim

theorem firstRejectedStage_eq_none_iff {count : ℕ} :
    firstRejectedStage count = none ↔
      ∀ stage < 95 * count, ¬ Counterexample (stageArgument stage) := by
  unfold firstRejectedStage
  split
  · rename_i h
    obtain ⟨stage, hs⟩ := h
    have hm := mem_rejectedStages.mp hs
    simp only [Option.some_ne_none, false_iff]
    exact fun covered => covered stage hm.1 hm.2
  · rename_i h
    exact ⟨fun _ stage hcut hb => h ⟨stage, mem_rejectedStages.mpr ⟨hcut, hb⟩⟩,
      fun _ => rfl⟩

/-- Extending a prefix cannot replace an already found first witness. -/
theorem firstRejectedStage_stable {count later stage : ℕ} (h : count ≤ later)
    (found : firstRejectedStage count = some stage) :
    firstRejectedStage later = some stage := by
  obtain ⟨hcut, hbad, hsafe⟩ := firstRejectedStage_eq_some_iff.mp found
  exact firstRejectedStage_eq_some_iff.mpr ⟨by omega, hbad, hsafe⟩

theorem firstRejectedStage_zero : firstRejectedStage 0 = none := by
  apply firstRejectedStage_eq_none_iff.mpr
  omega

theorem last_first_window_slot_and_wrap :
    stageOrdinal 0 94 < 95 ∧ ¬ stageOrdinal 1 0 < 95 := by
  decide

/-- Once the globally first bad slot is fixed, its window is the exact
threshold for observation. The prefix of length window omits it. -/
theorem firstRejectedStage_at_address_iff {window : ℕ} {slot : Fin 95}
    (hbad : Counterexample (stageArgument (stageOrdinal window slot)))
    (hsafe : ∀ m < stageOrdinal window slot, ¬ Counterexample (stageArgument m))
    (count : ℕ) :
    firstRejectedStage count = some (stageOrdinal window slot) ↔ window < count := by
  rw [firstRejectedStage_eq_some_iff, stageOrdinal_lt_cutoff_iff]
  exact ⟨fun h => h.1, fun h => ⟨h, hbad, hsafe⟩⟩

/-- Infinite absence of a first rejection inherits the pinned transport
interface. The finite search itself does not supply the universal premise. -/
theorem all_firstRejectedStage_none_iff_RH {original : ℕ → Prop} {halts : Prop}
    (agrees : ∀ n, 2 ≤ n → (Counterexample n ↔ original n))
    (halts_iff : halts ↔ ∃ stage : ℕ, original (stage + 2))
    (rh_iff : halts ↔ ¬ RiemannHypothesis) :
    (∀ count, firstRejectedStage count = none) ↔ RiemannHypothesis := by
  rw [← all_windows_accept_iff_RH agrees halts_iff rh_iff, all_windows_accept_iff]
  constructor
  · intro h stage
    exact (firstRejectedStage_eq_none_iff.mp (h (stage + 1))) stage (by omega)
  · intro h count
    exact firstRejectedStage_eq_none_iff.mpr fun stage _ => h stage

end GRWTSK.NumberTheory.Riemann95StageCertificates
