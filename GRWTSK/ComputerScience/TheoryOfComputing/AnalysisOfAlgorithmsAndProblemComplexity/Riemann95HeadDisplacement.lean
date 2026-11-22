/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

/-!
# Exact constraints on the signed head position of the prime interpreter

The original tape is pointed. The absolute position is explicit in the prime
interpreter and has translation symmetry. A successful step contributes one
signed unit, regardless of what symbol was read or written.
-/

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine

/-- Change the origin without moving the head relative to its stored tape. -/
def translateHead {window : ℕ} (offset : ℤ) (c : Configuration window) :
    Configuration window :=
  { c with position := c.position + offset }

theorem project_translateHead {window : ℕ} (offset : ℤ) (c : Configuration window) :
    project (translateHead offset c) = project c := rfl

theorem step_translateHead {window : ℕ} (offset : ℤ) (c : Configuration window) :
    step (translateHead offset c) = (step c).map (translateHead offset) := by
  unfold step
  change ((ConjectureMachines.Riemann95.machine.transition
    (decodeAddress c.address) c.scanned).map _) = (_ : Option (Configuration window))
  cases ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned with
  | none => rfl
  | some instruction =>
    rcases instruction with ⟨symbol, direction, next⟩
    cases direction
    · change some (⟨encodeAddress window next, c.position + offset - 1,
        c.left.headI, c.left.tail, symbol :: c.right⟩ : Configuration window) =
        some ⟨encodeAddress window next, c.position - 1 + offset,
          c.left.headI, c.left.tail, symbol :: c.right⟩
      have hp : c.position + offset - 1 = c.position - 1 + offset := by omega
      rw [hp]
    · change some (⟨encodeAddress window next, c.position + offset + 1,
        c.right.headI, symbol :: c.left, c.right.tail⟩ : Configuration window) =
        some ⟨encodeAddress window next, c.position + 1 + offset,
          c.right.headI, symbol :: c.left, c.right.tail⟩
      have hp : c.position + offset + 1 = c.position + 1 + offset := by omega
      rw [hp]

theorem run_translateHead {window : ℕ} (offset : ℤ) (n : ℕ) (c : Configuration window) :
    run n (translateHead offset c) = (run n c).map (translateHead offset) := by
  induction n generalizing c with
  | zero => rfl
  | succ n ih =>
    rw [run, run, step_translateHead]
    cases step c with
    | none => rfl
    | some d => exact ih d

/-- Every successful translated run retains the same pointed configuration,
while a nonzero shift of origin persists at the endpoint. -/
theorem translated_run_collision {window n : ℕ} {c d : Configuration window}
    (h : run n c = some d) {offset : ℤ} (hne : offset ≠ 0) :
    run n (translateHead offset c) = some (translateHead offset d) ∧
      project (translateHead offset d) = project d ∧
      (translateHead offset d).position ≠ d.position := by
  refine ⟨by rw [run_translateHead, h]; rfl, rfl, ?_⟩
  change d.position + offset ≠ d.position
  omega

theorem step_head_unit {window : ℕ} {c d : Configuration window} (h : step c = some d) :
    d.position = c.position - 1 ∨ d.position = c.position + 1 := by
  unfold step at h
  cases ht : ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned with
  | none => simp [ht] at h
  | some instruction =>
    rcases instruction with ⟨symbol, direction, next⟩
    simp only [ht, Option.map_some, Option.some.injEq] at h
    subst d
    cases direction
    · exact Or.inl rfl
    · exact Or.inr rfl

/-- Every run of n successful instructions has signed displacement 2r−n,
where r counts right moves. This imposes both speed and parity constraints. -/
theorem run_head_displacement {window n : ℕ} {c d : Configuration window}
    (h : run n c = some d) :
    ∃ r : ℕ, r ≤ n ∧ d.position = c.position + 2 * (r : ℤ) - (n : ℤ) := by
  induction n generalizing c with
  | zero =>
    simp only [run, Option.some.injEq] at h
    subst d
    exact ⟨0, Nat.le_refl _, by simp⟩
  | succ n ih =>
    rw [run] at h
    cases hm : step c with
    | none => simp [hm] at h
    | some e =>
      rw [hm] at h
      change run n e = some d at h
      obtain ⟨r, hr, hd⟩ := ih h
      rcases step_head_unit hm with hl | hp
      · exact ⟨r, by omega, by omega⟩
      · exact ⟨r + 1, by omega, by omega⟩

/-- Bounded movement and the exact parity are necessary at a proposed
successful handoff. -/
theorem run_head_bounds {window n : ℕ} {c d : Configuration window}
    (h : run n c = some d) :
    |d.position - c.position| ≤ (n : ℤ) ∧
      (d.position - c.position) % 2 = (n : ℤ) % 2 := by
  obtain ⟨r, hr, he⟩ := run_head_displacement h
  rw [abs_le]
  omega

/-- Erasing the origin identifies two blank tapes at distinct head positions. -/
theorem blank_origin_collision (window : ℕ) :
    project (translateHead 1 (blank window)) = project (blank window) ∧
      (translateHead 1 (blank window)).position ≠ (blank window).position := by
  exact ⟨rfl, by change (1 : ℤ) ≠ 0; decide⟩

end GRWTSK.ComputerScience.Riemann95PrimeMachine
