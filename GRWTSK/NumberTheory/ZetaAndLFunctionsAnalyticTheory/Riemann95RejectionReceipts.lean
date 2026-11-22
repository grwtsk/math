/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95FirstRejectedStage

/-!
# Local receipts for the first Riemann95 rejection

The least-rejection claim decomposes into whole earlier window receipts and
earlier slot checks in the rejecting window.
-/

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

theorem stageOrdinal_lt_iff (u w : ℕ) (i j : Fin 95) :
    stageOrdinal u i < stageOrdinal w j ↔ u < w ∨ u = w ∧ i < j := by
  have hi := i.isLt
  have hj := j.isLt
  change 95 * u + i.val < 95 * w + j.val ↔ u < w ∨ u = w ∧ i.val < j.val
  omega

/-- Later windows and later slots are irrelevant to the claim of first
rejection. Each earlier window can be certified independently. -/
theorem firstRejectedStage_iff_window_receipts (count window : ℕ) (slot : Fin 95) :
    firstRejectedStage count = some (stageOrdinal window slot) ↔
      window < count ∧ slot ∈ badSlots window ∧
      (∀ w < window, accepts w = true) ∧
      (∀ i < slot, i ∉ badSlots window) := by
  rw [firstRejectedStage_eq_some_iff, stageOrdinal_lt_cutoff_iff, mem_badSlots]
  refine and_congr_right fun _ => and_congr_right fun _ => ?_
  constructor
  · intro safe
    refine ⟨fun w hw => (accepts_iff w).mpr fun i => safe _ ?_, fun i hi hbad => ?_⟩
    · exact (stageOrdinal_lt_iff w window i slot).mpr (Or.inl hw)
    · exact safe _ ((stageOrdinal_lt_iff window window i slot).mpr
        (Or.inr ⟨rfl, hi⟩)) (mem_badSlots.mp hbad)
  · rintro ⟨windows, slots⟩ m hm
    obtain ⟨w, i, rfl⟩ := ordinalAddress m
    rcases (stageOrdinal_lt_iff w window i slot).mp hm with hw | ⟨rfl, hi⟩
    · exact (accepts_iff w).mp (windows w hw) i
    · exact fun hb => slots i hi (mem_badSlots.mpr hb)

/-- Receipt arrival order is immaterial once every earlier window is present.
Soundness of the receipt ledger remains an explicit hypothesis. -/
theorem firstRejectedStage_of_receipt_set (count window : ℕ) (slot : Fin 95)
    (receipts : Finset ℕ) (sound : ∀ w ∈ receipts, accepts w = true)
    (covered : ∀ w < window, w ∈ receipts) (inside : window < count)
    (bad : slot ∈ badSlots window) (localSafe : ∀ i < slot, i ∉ badSlots window) :
    firstRejectedStage count = some (stageOrdinal window slot) :=
  (firstRejectedStage_iff_window_receipts count window slot).mpr
    ⟨inside, bad, fun w hw => sound w (covered w hw), localSafe⟩

/-- A test of the coverage logic using a hypothetical bad stage. Windows zero
and two can both be safe while the first stage of omitted window one is bad. -/
theorem skipped_window_control :
    (∀ w ∈ ({0, 2} : Finset ℕ), ∀ i : Fin 95, stageOrdinal w i ≠ 95) ∧
      stageOrdinal 1 0 = 95 := by
  refine ⟨?_, by decide⟩
  intro w hw i
  have hi := i.isLt
  simp only [Finset.mem_insert, Finset.mem_singleton] at hw
  rcases hw with rfl | rfl <;> unfold stageOrdinal <;> omega

end GRWTSK.NumberTheory.Riemann95StageCertificates
