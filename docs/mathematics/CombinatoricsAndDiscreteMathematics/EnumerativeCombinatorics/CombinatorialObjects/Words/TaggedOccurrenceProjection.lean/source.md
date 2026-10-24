# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.TaggedOccurrenceProjection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7fa9d7f09fa74e3919f2f869bb1111073c37c8a` · SHA-256 `3540eba3e45b96521a0cd98a68e9a5c3775815d0415d9c24cc8e53cb2af5f443`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.Basic
import Mathlib.Data.List.Count

/-!
Finite contracts for governed taxonomy projection.

An occurrence retains its complete key/payload pair. Routing is not assumed
injective, and keys and payloads may repeat. These contracts do not identify
source bytes with hashes, authenticate providers, certify a filesystem inventory,
or admit mathematical results. Those are separate refinement obligations.
-/

namespace GRWTSK.TaxonomyProjection

universe u v w

structure Placement (Key : Type u) (Payload : Type v) (Directory : Type w) where
  original : Key × Payload
  directory : Directory
  deriving DecidableEq

variable {Key : Type u} {Payload : Type v} {Directory : Type w}

def place (route : Key → Directory) (entry : Key × Payload) :
    Placement Key Payload Directory := ⟨entry, route entry.1⟩

def project (route : Key → Directory) (entries : List (Key × Payload)) :
    List (Placement Key Payload Directory) := entries.map (place route)

theorem place_injective (route : Key → Directory) :
    Function.Injective (place (Payload := Payload) route) := by
  intro left right equal
  exact congrArg Placement.original equal

@[simp] theorem original_place (route : Key → Directory) (entry : Key × Payload) :
    (place route entry).original = entry := rfl

/-- Exact reconstruction preserves order, repeated keys and repeated occurrences. -/
@[simp] theorem forget_project (route : Key → Directory) (entries : List (Key × Payload)) :
    (project route entries).map Placement.original = entries := by
  simp [project, List.map_map, Function.comp_def]

@[simp] theorem project_length (route : Key → Directory) (entries : List (Key × Payload)) :
    (project route entries).length = entries.length := by
  simp [project]

@[simp] theorem project_append (route : Key → Directory)
    (left right : List (Key × Payload)) :
    project route (left ++ right) = project route left ++ project route right := by
  simp [project]

/-- The complete occurrence at every position survives the projection. -/
theorem project_position (route : Key → Directory) (entries : List (Key × Payload))
    (index : Nat) :
    (project route entries)[index]? = entries[index]?.map (place route) := by
  simp [project]

/-- Multiplicity is about occurrences, not distinct storage slots. -/
theorem project_multiplicity [DecidableEq Key] [DecidableEq Payload]
    (route : Key → Directory) (entries : List (Key × Payload)) (entry : Key × Payload) :
    ((project route entries).map Placement.original).count entry = entries.count entry := by
  rw [forget_project]

/-- The projected tagged occurrence itself retains its exact count. -/
theorem project_placed_multiplicity [DecidableEq Key] [DecidableEq Payload]
    [DecidableEq Directory] (route : Key → Directory) (entries : List (Key × Payload))
    (entry : Key × Payload) :
    (project route entries).count (place route entry) = entries.count entry := by
  exact List.count_map_of_injective entries (place route) (place_injective route) entry

/-- A projected occurrence exists for every input occurrence; no injectivity premise is needed. -/
theorem project_coverage (route : Key → Directory) (entries : List (Key × Payload))
    (entry : Key × Payload) (member : entry ∈ entries) :
    place route entry ∈ project route entries := by
  exact List.mem_map.mpr ⟨entry, member, rfl⟩

/-- Retaining the original occurrence makes the complete list projection injective. -/
theorem project_injective (route : Key → Directory) :
    Function.Injective (project (Payload := Payload) route) := by
  intro left right equal
  have := congrArg (List.map Placement.original) equal
  simpa using this

/-- A finite partial route rejects the entire batch when any required binding is absent. -/
def projectPartial (route : Key → Option Directory) :
    List (Key × Payload) → Option (List (Placement Key Payload Directory))
  | [] => some []
  | entry :: tail =>
    match route entry.1, projectPartial route tail with
    | some directory, some suffix => some (⟨entry, directory⟩ :: suffix)
    | _, _ => none

@[simp] theorem projectPartial_total (route : Key → Directory)
    (entries : List (Key × Payload)) :
    projectPartial (fun key => some (route key)) entries = some (project route entries) := by
  induction entries with
  | nil => rfl
  | cons entry tail induction => simp [projectPartial, project, place, induction]

/-- Success means every actual input occurrence has a route binding. -/
theorem projectPartial_isSome (route : Key → Option Directory)
    (entries : List (Key × Payload)) :
    (projectPartial route entries).isSome = entries.all (fun entry => (route entry.1).isSome) := by
  induction entries with
  | nil => rfl
  | cons entry tail induction =>
    simp only [projectPartial, List.all_cons]
    rw [← induction]
    cases route entry.1 <;> cases projectPartial route tail <;> rfl

/-- An absent binding for any member fails, including a repeated-key occurrence. -/
theorem projectPartial_missing (route : Key → Option Directory)
    (entries : List (Key × Payload)) (entry : Key × Payload)
    (member : entry ∈ entries) (missing : route entry.1 = none) :
    projectPartial route entries = none := by
  cases result : projectPartial route entries with
  | none => rfl
  | some output =>
    have success : entries.all (fun entry => (route entry.1).isSome) = true := by
      rw [← projectPartial_isSome, result]
      rfl
    have present := List.all_eq_true.mp success entry member
    simp [missing] at present

/-- Successful partial routing retains the exact ordered history. -/
theorem forget_projectPartial (route : Key → Option Directory)
    (entries : List (Key × Payload)) (output : List (Placement Key Payload Directory))
    (success : projectPartial route entries = some output) :
    output.map Placement.original = entries := by
  induction entries generalizing output with
  | nil =>
    simpa [projectPartial] using success.symm
  | cons entry tail induction =>
    cases head : route entry.1 with
    | none => simp [projectPartial, head] at success
    | some directory =>
      cases suffix : projectPartial route tail with
      | none => simp [projectPartial, head, suffix] at success
      | some rest =>
        simp only [projectPartial, head, suffix, Option.some.injEq] at success
        subst output
        simpa using congrArg (List.cons entry) (induction rest suffix)

theorem projectPartial_multiplicity [DecidableEq Key] [DecidableEq Payload]
    (route : Key → Option Directory) (entries : List (Key × Payload))
    (output : List (Placement Key Payload Directory)) (entry : Key × Payload)
    (success : projectPartial route entries = some output) :
    (output.map Placement.original).count entry = entries.count entry := by
  rw [forget_projectPartial route entries output success]

/-- The canonicality predicate must inspect required and actually observed paths. -/
def inventoryGuard [DecidableEq Directory] (canonical : Directory → Bool)
    (registered actual : List Directory) : Bool :=
  registered.all canonical && actual.all canonical &&
    registered.all (fun directory => decide (directory ∈ actual))

theorem inventoryGuard_spec [DecidableEq Directory] (canonical : Directory → Bool)
    (registered actual : List Directory) :
    inventoryGuard canonical registered actual = true ↔
      (∀ directory ∈ registered, canonical directory = true) ∧
      (∀ directory ∈ actual, canonical directory = true) ∧
      (∀ directory ∈ registered, directory ∈ actual) := by
  simp [inventoryGuard, List.all_eq_true, and_assoc]

/-- Even an unregistered extra path must satisfy canonicality. -/
theorem inventoryGuard_actual [DecidableEq Directory] (canonical : Directory → Bool)
    (registered actual : List Directory) (valid : inventoryGuard canonical registered actual = true)
    (directory : Directory) (member : directory ∈ actual) :
    canonical directory = true :=
  (inventoryGuard_spec canonical registered actual).mp valid |>.2.1 directory member

theorem inventoryGuard_rejects_invalid_actual [DecidableEq Directory]
    (canonical : Directory → Bool) (registered actual : List Directory)
    (directory : Directory) (member : directory ∈ actual) (invalid : canonical directory = false) :
    inventoryGuard canonical registered actual = false := by
  cases result : inventoryGuard canonical registered actual with
  | false => rfl
  | true =>
    have valid := inventoryGuard_actual canonical registered actual result directory member
    simp [invalid] at valid

/-- Checking registered paths alone misses a concrete invalid extra observation. -/
theorem registered_only_guard_is_insufficient :
    ([true] : List Bool).all id = true ∧
      inventoryGuard id [true] [true, false] = false := by
  decide

inductive SourceRole where
  | library
  | positiveCheck
  | negativeControl
  | auditDriver
  deriving DecidableEq

/-- A claimed role is checked against both original and destination path roles.
Provider authentication is an additional premise, not produced by this comparison. -/
def roleGuard (classify : Directory → SourceRole) (claimed : SourceRole)
    (original target : Directory) : Bool :=
  decide (classify original = claimed ∧ classify target = claimed)

@[simp] theorem roleGuard_spec (classify : Directory → SourceRole) (claimed : SourceRole)
    (original target : Directory) :
    roleGuard classify claimed original target = true ↔
      classify original = claimed ∧ classify target = claimed := by
  simp [roleGuard]

theorem roleGuard_original (classify : Directory → SourceRole) (claimed : SourceRole)
    (original target : Directory) (valid : roleGuard classify claimed original target = true) :
    classify original = claimed := (roleGuard_spec classify claimed original target).mp valid |>.1

/-- A destination negative-control path cannot manufacture that role for its origin. -/
theorem roleGuard_rejects_original_mismatch (classify : Directory → SourceRole)
    (claimed : SourceRole) (original target : Directory) (different : classify original ≠ claimed) :
    roleGuard classify claimed original target = false := by
  simp [roleGuard, different]

/-- A negative destination does not turn a library origin into a negative control. -/
theorem destination_role_alone_is_insufficient :
    let classify := fun path : Bool =>
      if path then SourceRole.negativeControl else SourceRole.library
    classify true = SourceRole.negativeControl ∧
      roleGuard classify SourceRole.negativeControl false true = false := by
  decide

structure Folder (Module : Type u) (Directory : Type v) where
  directLean : List Module
  childDirectories : List Directory

/-- Interior directories use exactly the same direct-file rule as leaves. -/
def planGitkeep (folder : Folder Key Directory) : Bool := folder.directLean.isEmpty

@[simp] theorem planGitkeep_iff (folder : Folder Key Directory) :
    planGitkeep folder = true ↔ folder.directLean = [] := by
  simp [planGitkeep]

theorem empty_direct_folder_requires_gitkeep (children : List Directory) :
    planGitkeep (Folder.mk ([] : List Key) children) = true := rfl

theorem child_directories_do_not_change_gitkeep (folder : Folder Key Directory)
    (children : List Directory) :
    planGitkeep { folder with childDirectories := children } = planGitkeep folder := rfl

theorem interior_folder_placeholder_example :
    planGitkeep (Folder.mk ([] : List Unit) [true]) = true := rfl

/-- Empty placeholder bytes and conditional presence are independent obligations. -/
def validGitkeep (folder : Folder Key Directory) (present : Bool) (bytes : Nat) : Prop :=
  present = planGitkeep folder ∧ (present = true → bytes = 0)

theorem validGitkeep_presence_iff (folder : Folder Key Directory) (present : Bool) (bytes : Nat)
    (valid : validGitkeep folder present bytes) :
    present = true ↔ folder.directLean = [] := by
  rw [valid.1]
  exact planGitkeep_iff folder

theorem validGitkeep_empty_bytes (folder : Folder Key Directory) (present : Bool) (bytes : Nat)
    (valid : validGitkeep folder present bytes) (required : folder.directLean = []) : bytes = 0 := by
  exact valid.2 ((validGitkeep_presence_iff folder present bytes valid).mpr required)

end GRWTSK.TaxonomyProjection
```
