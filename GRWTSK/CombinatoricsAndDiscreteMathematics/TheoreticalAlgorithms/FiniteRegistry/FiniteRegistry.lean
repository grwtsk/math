import Surface.ContinuousAssurance.WorldModel.Version

/-!
# Unique-key finite registries

Every production registry bundles a finite list, a stable key projection, and
a proof that the projected keys are duplicate-free.
-/

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- A finite registry whose stable string keys are unique by construction. -/
structure FiniteRegistry (Entry : Type u) where
  entries : List Entry
  key : Entry → String
  keys_unique :
    ∀ {left right},
      left ∈ entries →
      right ∈ entries →
      key left = key right →
      left = right

namespace FiniteRegistry

private theorem find?_mem
    (predicate : Entry → Bool)
    {entries : List Entry} {entry : Entry}
    (h : entries.find? predicate = some entry) :
    entry ∈ entries := by
  induction entries with
  | nil => simp at h
  | cons head tail ih =>
      by_cases hhead : predicate head = true
      · rw [List.find?_cons_of_pos hhead] at h
        cases h
        exact List.mem_cons_self
      · rw [List.find?_cons_of_neg hhead] at h
        exact List.mem_cons_of_mem head (ih h)

/-- Membership means membership in the finite entry list. -/
def Contains (registry : FiniteRegistry Entry) (entry : Entry) : Prop :=
  entry ∈ registry.entries

/-- Lookup by a stable key. -/
def lookup (registry : FiniteRegistry Entry) (wanted : String) : Option Entry :=
  registry.entries.find? fun entry ↦ decide (registry.key entry = wanted)

/-- The key of an entry in a valid registry occurs exactly once. -/
theorem key_injective_on_entries
    (registry : FiniteRegistry Entry)
    {left right : Entry}
    (hleft : left ∈ registry.entries)
    (hright : right ∈ registry.entries)
    (hkey : registry.key left = registry.key right) :
    left = right :=
  registry.keys_unique hleft hright hkey

/-- Lookup never returns an entry with a different key. -/
theorem lookup_key
    (registry : FiniteRegistry Entry)
    {wanted : String} {entry : Entry}
    (h : registry.lookup wanted = some entry) :
    registry.key entry = wanted := by
  unfold lookup at h
  have hp := List.find?_some
    (p := fun candidate ↦ decide (registry.key candidate = wanted)) h
  exact of_decide_eq_true hp

/-- Lookup returns only registered entries. -/
theorem lookup_mem
    (registry : FiniteRegistry Entry)
    {wanted : String} {entry : Entry}
    (h : registry.lookup wanted = some entry) :
    entry ∈ registry.entries := by
  unfold lookup at h
  exact find?_mem (fun candidate ↦ decide (registry.key candidate = wanted)) h

/-- The empty finite registry. -/
def empty (Entry : Type u) : FiniteRegistry Entry where
  entries := []
  key := fun _ ↦ ""
  keys_unique := by simp

/-- A one-entry registry, useful for finite fixtures without weakening key uniqueness. -/
def singleton (entry : Entry) (entryKey : Entry → String) : FiniteRegistry Entry where
  entries := [entry]
  key := entryKey
  keys_unique := by
    intro left right hleft hright _
    simp only [List.mem_singleton] at hleft hright
    subst left
    subst right
    rfl

end FiniteRegistry

end Surface.ContinuousAssurance.WorldModel
