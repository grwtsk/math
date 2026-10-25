# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHeight.Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5977f6772134c674cfb23ef4f07eaaedba6f1afe` · SHA-256 `5c0e91891c264884ff5b73f4d6f558671d90a417a22375bf2e934dfd5b9e56e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteReducer.Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.FiniteReducer.Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Reduction/FiniteHeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Reduction.Simulation
import Mathlib.Data.List.Basic

/-!
# Finite branching heights and budgets

A complete successor list may contain duplicates and needs no equality decision
procedure on states. The height is an exact maximum over all reductions. A
catalogue budget applies to every descendant, whether or not it is listed.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteReducer.Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612

namespace FormalResearch.MathematicalTooling.Reduction

universe u

variable {X : Type u}

/-- Maximum with zero included, also for the empty list. -/
def listMax : List ℕ → ℕ
  | [] => 0
  | n :: rest => max n (listMax rest)

@[simp] theorem listMax_nil : listMax [] = 0 := rfl
@[simp] theorem listMax_cons (n : ℕ) (rest : List ℕ) :
    listMax (n :: rest) = max n (listMax rest) := rfl

/-- Every member is bounded by the zero-inclusive maximum. -/
theorem le_listMax {n : ℕ} {values : List ℕ} (member : n ∈ values) :
    n ≤ listMax values := by
  induction values with
  | nil => simp at member
  | cons value rest ih =>
    rcases List.mem_cons.mp member with rfl | member
    · exact Nat.le_max_left _ _
    · exact (ih member).trans (Nat.le_max_right _ _)

/-- A bound on every member is a bound on the zero-inclusive maximum. -/
theorem listMax_le {values : List ℕ} {bound : ℕ}
    (bounded : ∀ n ∈ values, n ≤ bound) : listMax values ≤ bound := by
  induction values with
  | nil => exact Nat.zero_le _
  | cons value rest ih =>
    exact max_le (bounded value (by simp)) (ih (fun n member => bounded n (by simp [member])))

/-- A positive maximum is attained by a member, including duplicate lists. -/
theorem listMax_mem_or_zero (values : List ℕ) :
    listMax values = 0 ∨ listMax values ∈ values := by
  induction values with
  | nil => exact Or.inl rfl
  | cons value rest ih =>
    by_cases largest : listMax rest ≤ value
    · right
      simp only [listMax_cons, max_eq_left largest]
      exact List.mem_cons_self
    · have larger : value ≤ listMax rest := by omega
      simp only [listMax_cons, max_eq_right larger]
      rcases ih with zero | member
      · exact Or.inl zero
      · exact Or.inr (List.mem_cons_of_mem _ member)

/-- Complete finite branching reduction data. -/
structure FiniteReducer (X : Type u) where
  /-- The whole admitted forward relation. -/
  step : X → X → Prop
  /-- Every successor, with repetitions allowed. -/
  next : X → List X
  /-- Exact enumeration, not a deterministic strategy's chosen successor. -/
  next_correct : ∀ x y, y ∈ next x ↔ step x y
  /-- Accessibility in the reversed execution relation. -/
  wellFounded : WellFounded (fun y x => step x y)

/-- Accessibility recursion defines the mathematical exact maximal reduction length. -/
noncomputable def FiniteReducer.height (reducer : FiniteReducer X) : X → ℕ :=
  reducer.wellFounded.fix fun x recurse =>
    listMax ((reducer.next x).attach.map fun y =>
      recurse y.val ((reducer.next_correct x y.val).mp y.property) + 1)

/-- The accessibility-recursive height obeys the finite maximum equation. -/
theorem FiniteReducer.height_eq (reducer : FiniteReducer X) (x : X) :
    reducer.height x = listMax ((reducer.next x).map fun y => reducer.height y + 1) := by
  rw [FiniteReducer.height, WellFounded.fix_eq]
  congr 1
  exact List.attach_map_val (l := reducer.next x) (f := fun y => reducer.height y + 1)

/-- Every permitted successor strictly lowers height. -/
theorem FiniteReducer.height_decreases (reducer : FiniteReducer X)
    {x y : X} (step : reducer.step x y) : reducer.height y < reducer.height x := by
  rw [reducer.height_eq x]
  have member : reducer.height y + 1 ∈
      (reducer.next x).map (fun y => reducer.height y + 1) :=
    List.mem_map.mpr ⟨y, (reducer.next_correct x y).mpr step, rfl⟩
  exact le_listMax member

/-- Height zero is equivalent to having no successor in the whole relation. -/
theorem FiniteReducer.height_zero_iff (reducer : FiniteReducer X) (x : X) :
    reducer.height x = 0 ↔ ∀ y, ¬reducer.step x y := by
  constructor
  · intro zero y step
    have := reducer.height_decreases step
    omega
  · intro normal
    rw [reducer.height_eq x]
    apply Nat.eq_zero_of_le_zero
    apply listMax_le
    intro n member
    rcases List.mem_map.mp member with ⟨y, successorMember, rfl⟩
    exact False.elim (normal y ((reducer.next_correct x y).mp successorMember))

/-- Trace length and the descendant's remaining height fit in the start height. -/
theorem FiniteReducer.trace_height_bound (reducer : FiniteReducer X)
    {n : ℕ} {x y : X} (trace : Trace reducer.step n x y) :
    n + reducer.height y ≤ reducer.height x :=
  trace_length_le_rank reducer.height reducer.height_decreases trace

/-- The exact maximum is realized by a trace ending in a normal state. -/
theorem FiniteReducer.longest_trace (reducer : FiniteReducer X) (x : X) :
    ∃ y, Trace reducer.step (reducer.height x) x y ∧ ∀ z, ¬reducer.step y z := by
  induction x using reducer.wellFounded.induction with
  | h x ih =>
    by_cases zero : reducer.height x = 0
    · exact ⟨x, zero ▸ Trace.zero x, (reducer.height_zero_iff x).mp zero⟩
    · have attained := listMax_mem_or_zero
        ((reducer.next x).map fun y => reducer.height y + 1)
      rw [← reducer.height_eq x] at attained
      rcases attained with impossible | member
      · exact False.elim (zero impossible)
      · rcases List.mem_map.mp member with ⟨y, member, equation⟩
        have step := (reducer.next_correct x y).mp member
        rcases ih y step with ⟨z, trace, normal⟩
        exact ⟨z, equation ▸ Trace.step step trace, normal⟩

/-- The finite starting catalogue has a zero-inclusive maximal height. -/
noncomputable def FiniteReducer.catalogueBudget (reducer : FiniteReducer X)
    (starts : List X) : ℕ :=
  listMax (starts.map reducer.height)

/-- The catalogue budget covers all descendants, including states outside the catalogue. -/
theorem FiniteReducer.catalogue_trace_bound (reducer : FiniteReducer X)
    {starts : List X} {x y : X} {n : ℕ} (member : x ∈ starts)
    (trace : Trace reducer.step n x y) :
    n + reducer.height y ≤ reducer.catalogueBudget starts :=
  (reducer.trace_height_bound trace).trans
    (le_listMax (List.mem_map.mpr ⟨x, member, rfl⟩))

end FormalResearch.MathematicalTooling.Reduction
```
