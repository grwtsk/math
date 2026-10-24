import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge
import FormalResearch.RiemannHypothesis.Conversation.NativeHaarEnergy

/-!
# Complete finite grouping preserves the root and lowers compressed energy

HC03's finite adapter retains every signed cell load and positive native width.
Any declared grouping sums both quantities on each fiber. Its compressed energy
is at most the complete original cell energy; empty fibers contribute zero.
This does not choose the zero-seam partition or prove an arithmetic energy cap.

Human zero-faithful coarsening and retained-root direction: grwtsk contributors.
Local finite grouping and actual-source consumer: OpenAI Codex. Mathlib finite
sums retain upstream identity; the weighted defect is the local checked bridge.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.GroupedHodgeEnergy
open scoped BigOperators
noncomputable section

def fiberTotal {ι κ : Type*} [Fintype ι] [DecidableEq κ]
    (label : ι → κ) (v : ι → ℝ) (k : κ) : ℝ :=
  ∑ i, if label i = k then v i else 0

def groupedEnergy {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (label : ι → κ) (w v : ι → ℝ) : ℝ :=
  ∑ k, fiberTotal label v k ^ 2 / fiberTotal label w k

theorem complete_grouping_retains_total {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (label : ι → κ) (v : ι → ℝ) :
    (∑ k, fiberTotal label v k) = ∑ i, v i := by
  classical
  simp only [fiberTotal]
  rw [Finset.sum_comm]
  simp

theorem fiber_energy_le {ι κ : Type*} [Fintype ι] [DecidableEq κ]
    (label : ι → κ) (w v : ι → ℝ) (hw : ∀ i, 0 < w i) (k : κ) :
    fiberTotal label v k ^ 2 / fiberTotal label w k ≤
      fiberTotal label (fun i ↦ v i ^ 2 / w i) k := by
  classical
  let s := Finset.univ.filter (fun i ↦ label i = k)
  by_cases hex : ∃ i, label i = k
  · obtain ⟨i, hi⟩ := hex
    have hne : s.Nonempty := ⟨i, by simp [s, hi]⟩
    have hW : 0 < ∑ i ∈ s, w i := Finset.sum_pos (fun i _ ↦ hw i) hne
    have h := WeightedHodge.finite_refinement_mono s w v (fun i _ ↦ hw i) hW.ne'
    simpa [s, fiberTotal, Finset.sum_filter] using h
  · have hn : ∀ i, label i ≠ k := by simpa using hex
    simp [fiberTotal, hn]

theorem complete_grouping_lowers_energy {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (label : ι → κ) (w v : ι → ℝ) (hw : ∀ i, 0 < w i) :
    groupedEnergy label w v ≤ ∑ i, v i ^ 2 / w i := by
  unfold groupedEnergy
  calc
    _ ≤ ∑ k, fiberTotal label (fun i ↦ v i ^ 2 / w i) k :=
      Finset.sum_le_sum (fun k _ ↦ fiber_energy_le label w v hw k)
    _ = _ := complete_grouping_retains_total label _

theorem composed_grouping_retains_fibers {ι γ κ : Type*} [Fintype ι] [Fintype γ]
    [DecidableEq γ] [DecidableEq κ] (fine : ι → γ) (parent : γ → κ) (v : ι → ℝ) (k : κ) :
    fiberTotal (parent ∘ fine) v k = fiberTotal parent (fiberTotal fine v) k := by
  classical
  have he : ∀ g : γ,
      (if parent g = k then ∑ i, if fine i = g then v i else 0 else 0) =
        ∑ i, if parent g = k ∧ fine i = g then v i else 0 := by
    intro g
    by_cases h : parent g = k <;> simp [h]
  simp only [fiberTotal] at *
  simp_rw [he]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  simp [and_comm, ite_and]

theorem surjective_grouping_positive_width {ι κ : Type*} [Fintype ι] [DecidableEq κ]
    (label : ι → κ) (hs : Function.Surjective label) (w : ι → ℝ) (hw : ∀ i, 0 < w i)
    (k : κ) : 0 < fiberTotal label w k := by
  classical
  obtain ⟨i, hi⟩ := hs k
  have hn : (Finset.univ.filter (fun i ↦ label i = k)).Nonempty := ⟨i, by simp [hi]⟩
  have h := Finset.sum_pos (s := Finset.univ.filter (fun i ↦ label i = k))
    (fun i _ ↦ hw i) hn
  simpa [fiberTotal, Finset.sum_filter] using h

theorem every_declared_refinement_pays_coarse_energy {ι γ κ : Type*}
    [Fintype ι] [Fintype γ] [Fintype κ] [DecidableEq γ] [DecidableEq κ]
    (fine : ι → γ) (parent : γ → κ) (hs : Function.Surjective fine)
    (w v : ι → ℝ) (hw : ∀ i, 0 < w i) :
    groupedEnergy (parent ∘ fine) w v ≤ groupedEnergy fine w v := by
  have hp : ∀ g, 0 < fiberTotal fine w g := surjective_grouping_positive_width fine hs w hw
  have h := complete_grouping_lowers_energy parent (fiberTotal fine w) (fiberTotal fine v) hp
  simpa only [groupedEnergy, ← composed_grouping_retains_fibers] using h

theorem actual_native_grouping_lowers_energy {κ : Type*} [Fintype κ] [DecidableEq κ]
    {N : ℕ} (hN : 1 ≤ N) (K : ℕ) (label : Fin K → κ) :
    groupedEnergy label
      (fun j ↦ ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ))
      (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
        ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ)) ≤
      NativeHaarEnergy.completeCellEnergy N K := by
  have hw : ∀ j : Fin K,
      0 < ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ) :=
    fun j ↦ NativeRecordConsumer.cellClock_pos (by omega)
  have h := complete_grouping_lowers_energy label
    (fun j : Fin K ↦ ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ))
    (fun j : Fin K ↦ NativeSuperlevelConsumer.storage N j.val *
      ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ)) hw
  simp only [NativeHaarEnergy.normalized_atom_energy (hw _)] at h
  simpa [NativeHaarEnergy.completeCellEnergy, ← Fin.sum_univ_eq_sum_range] using h

theorem actual_native_grouping_retains_primitive {κ : Type*} [Fintype κ] [DecidableEq κ]
    {N : ℕ} (hN : 1 ≤ N) (K : ℕ) (label : Fin K → κ) :
    (∑ k, fiberTotal label (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
      ArithmeticPrimitive.cellClock (N + j.val) (N + j.val + 1 : ℕ)) k) =
      OpenArithmeticSuppliers.ordinaryPrimePrimitive (N + K : ℕ) -
        OpenArithmeticSuppliers.ordinaryPrimePrimitive N := by
  rw [complete_grouping_retains_total]
  simpa [NativeSuperlevelConsumer.storage, ← Fin.sum_univ_eq_sum_range] using
    (AccordionConsumer.actual_signed_work_telescope hN K).symm

end
end GRWTSK.RiemannHypothesis.Conversation.GroupedHodgeEnergy
