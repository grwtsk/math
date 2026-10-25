# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.ConstructiveList

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcf215013572aef296345cce70a270690c10770a` · SHA-256 `6b68e0353d5a209ad521191440580bbd84b0c4c8570aa769b14e2406b491f466`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction and authorship: grwtsk contributors.
Formalization and source development with AI assistance. -/
import Init

/-!
# Constructive finite-list facts

These direct proofs concern Lean's existing `List` operations and membership,
including its existing ordered-prefix relation. The natural-number extrema are
the actual `List.min?` and `List.max?`, with their actual left folds. Recursive
membership decisions retain witnesses or refutations in their dependent type.

The declarations use induction, constructor elimination, and equality transport.
They do not assume propositional extensionality, choice, or quotient soundness.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.ConstructiveList

universe u v

variable {α : Type u} {β : Type v}

/-- Decide actual list membership by equality and recursive constructor analysis. -/
def decidableMem [DecidableEq α] (a : α) : (xs : List α) → Decidable (a ∈ xs)
  | [] => .isFalse (fun member => nomatch member)
  | b :: bs =>
      match decEq a b with
      | .isTrue same => .isTrue (by cases same; exact List.Mem.head bs)
      | .isFalse different =>
          match decidableMem a bs with
          | .isTrue member => .isTrue (List.Mem.tail b member)
          | .isFalse absent => .isFalse (by
              intro member
              cases member with
              | head => exact different rfl
              | tail _ member => exact absent member)

theorem mem_cons_iff {a b : α} {xs : List α} :
    a ∈ b :: xs ↔ a = b ∨ a ∈ xs := by
  constructor
  · intro member
    cases member with
    | head => exact Or.inl rfl
    | tail _ member => exact Or.inr member
  · intro member
    cases member with
    | inl same => cases same; exact List.Mem.head xs
    | inr member => exact List.Mem.tail b member

theorem mem_singleton_iff {a b : α} : a ∈ [b] ↔ a = b := by
  constructor
  · intro member
    cases member with
    | head => rfl
    | tail _ member => cases member
  · intro same
    cases same
    exact List.Mem.head []

theorem mem_append_iff {a : α} {xs ys : List α} :
    a ∈ xs ++ ys ↔ a ∈ xs ∨ a ∈ ys := by
  induction xs with
  | nil =>
      constructor
      · exact Or.inr
      · intro member
        cases member with
        | inl impossible => cases impossible
        | inr member => exact member
  | cons b xs ih =>
      constructor
      · intro member
        cases member with
        | head => exact Or.inl (List.Mem.head xs)
        | tail _ member =>
            cases ih.mp member with
            | inl member => exact Or.inl (List.Mem.tail b member)
            | inr member => exact Or.inr member
      · intro member
        cases member with
        | inl member =>
            cases member with
            | head => exact List.Mem.head (xs ++ ys)
            | tail _ member => exact List.Mem.tail b (ih.mpr (Or.inl member))
        | inr member => exact List.Mem.tail b (ih.mpr (Or.inr member))

theorem eq_nil_iff_forall_not_mem {xs : List α} :
    xs = [] ↔ ∀ a, a ∉ xs := by
  constructor
  · intro empty a member
    cases empty
    cases member
  · intro absent
    cases xs with
    | nil => rfl
    | cons a xs => exact False.elim (absent a (List.Mem.head xs))

theorem mem_map_iff {b : β} {f : α → β} {xs : List α} :
    b ∈ xs.map f ↔ ∃ a, a ∈ xs ∧ f a = b := by
  induction xs with
  | nil =>
      constructor
      · intro member
        cases member
      · intro member
        obtain ⟨a, impossible, _same⟩ := member
        cases impossible
  | cons a xs ih =>
      constructor
      · intro member
        cases member with
        | head => exact ⟨a, List.Mem.head xs, rfl⟩
        | tail _ member =>
            obtain ⟨x, old, same⟩ := ih.mp member
            exact ⟨x, List.Mem.tail a old, same⟩
      · intro member
        obtain ⟨x, old, same⟩ := member
        cases old with
        | head => cases same; exact List.Mem.head (xs.map f)
        | tail _ old => exact List.Mem.tail (f a) (ih.mpr ⟨x, old, same⟩)

theorem map_eq_nil_iff {f : α → β} {xs : List α} :
    xs.map f = [] ↔ xs = [] := by
  cases xs with
  | nil => exact ⟨fun _ => rfl, fun _ => rfl⟩
  | cons a xs =>
      constructor
      · intro impossible
        cases impossible
      · intro impossible
        cases impossible

theorem mem_filter_iff {a : α} {p : α → Bool} {xs : List α} :
    a ∈ xs.filter p ↔ a ∈ xs ∧ p a = true := by
  induction xs with
  | nil =>
      constructor
      · intro member
        cases member
      · intro member
        cases member.1
  | cons b xs ih =>
      cases test : p b with
      | false =>
          rw [List.filter, test]
          constructor
          · intro member
            have selected := ih.mp member
            exact ⟨List.Mem.tail b selected.1, selected.2⟩
          · intro selected
            cases selected.1 with
            | head =>
                have impossible : false = true := test.symm.trans selected.2
                cases impossible
            | tail _ member => exact ih.mpr ⟨member, selected.2⟩
      | true =>
          rw [List.filter, test]
          constructor
          · intro member
            cases member with
            | head => exact ⟨List.Mem.head xs, test⟩
            | tail _ member =>
                have selected := ih.mp member
                exact ⟨List.Mem.tail b selected.1, selected.2⟩
          · intro selected
            cases selected.1 with
            | head => exact List.Mem.head (xs.filter p)
            | tail _ member => exact List.Mem.tail b (ih.mpr ⟨member, selected.2⟩)

theorem filter_append {xs ys : List α} {p : α → Bool} :
    (xs ++ ys).filter p = xs.filter p ++ ys.filter p := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
      change (match p a with
        | true => a :: (xs ++ ys).filter p
        | false => (xs ++ ys).filter p) = (a :: xs).filter p ++ ys.filter p
      cases test : p a with
      | false =>
          rw [List.filter, test]
          exact ih
      | true =>
          rw [List.filter, test]
          exact congrArg (List.cons a) ih

theorem append_nil (xs : List α) : xs ++ [] = xs := by
  induction xs with
  | nil => rfl
  | cons a xs ih => exact congrArg (List.cons a) ih

theorem append_assoc (xs ys zs : List α) :
    (xs ++ ys) ++ zs = xs ++ (ys ++ zs) := by
  induction xs with
  | nil => rfl
  | cons a xs ih => exact congrArg (List.cons a) ih

theorem prefix_refl (xs : List α) : xs <+: xs :=
  ⟨[], append_nil xs⟩

theorem prefix_append (xs ys : List α) : xs <+: xs ++ ys :=
  ⟨ys, rfl⟩

theorem prefix_trans {xs ys zs : List α} (first : xs <+: ys)
    (second : ys <+: zs) : xs <+: zs := by
  obtain ⟨firstTail, firstEq⟩ := first
  obtain ⟨secondTail, secondEq⟩ := second
  exact ⟨firstTail ++ secondTail,
    (append_assoc xs firstTail secondTail).symm.trans
      ((congrArg (fun list => list ++ secondTail) firstEq).trans secondEq)⟩

theorem length_le_append (xs ys : List α) : xs.length ≤ (xs ++ ys).length := by
  induction xs with
  | nil => exact Nat.zero_le ys.length
  | cons a xs ih => exact Nat.succ_le_succ ih

theorem prefix_length_le {xs ys : List α} (isPrefix : xs <+: ys) :
    xs.length ≤ ys.length := by
  obtain ⟨suffix, same⟩ := isPrefix
  cases same
  exact length_le_append xs suffix

theorem append_getElem_of_lt (xs ys : List α) (i : Nat) (h : i < xs.length) :
    getElem (xs ++ ys) i (Nat.lt_of_lt_of_le h (length_le_append xs ys)) =
      getElem xs i h := by
  induction xs generalizing i with
  | nil => exact False.elim (Nat.not_lt_zero i h)
  | cons a xs ih =>
      cases i with
      | zero => rfl
      | succ i => exact ih i (Nat.lt_of_succ_lt_succ h)

theorem prefix_getElem_of_lt {xs ys : List α} (isPrefix : xs <+: ys)
    (i : Nat) (h : i < xs.length) :
    getElem ys i (Nat.lt_of_lt_of_le h (prefix_length_le isPrefix)) =
      getElem xs i h := by
  obtain ⟨suffix, same⟩ := isPrefix
  cases same
  exact append_getElem_of_lt xs suffix i h

/-- The actual minimum fold selects a member and bounds all its inputs. -/
theorem foldl_min_spec (xs : List Nat) (a : Nat) :
    xs.foldl min a ∈ a :: xs ∧
      ∀ b, b ∈ a :: xs → xs.foldl min a ≤ b := by
  induction xs generalizing a with
  | nil =>
      refine ⟨List.Mem.head [], ?_⟩
      intro b member
      cases member with
      | head => exact Nat.le_refl a
      | tail _ member => cases member
  | cons b xs ih =>
      change xs.foldl min (min a b) ∈ a :: b :: xs ∧
        ∀ c, c ∈ a :: b :: xs → xs.foldl min (min a b) ≤ c
      by_cases ordered : a ≤ b
      · have chosen : min a b = a := if_pos ordered
        rw [chosen]
        have selected := ih a
        refine ⟨?_, ?_⟩
        · cases mem_cons_iff.mp selected.1 with
          | inl same => exact mem_cons_iff.mpr (Or.inl same)
          | inr member => exact List.Mem.tail a (List.Mem.tail b member)
        · intro c member
          cases member with
          | head => exact selected.2 a (List.Mem.head xs)
          | tail _ member =>
              cases member with
              | head => exact Nat.le_trans (selected.2 a (List.Mem.head xs)) ordered
              | tail _ member => exact selected.2 c (List.Mem.tail a member)
      · have chosen : min a b = b := if_neg ordered
        rw [chosen]
        have selected := ih b
        refine ⟨List.Mem.tail a selected.1, ?_⟩
        intro c member
        cases member with
        | head =>
            exact Nat.le_trans (selected.2 b (List.Mem.head xs))
              (Nat.le_of_lt (Nat.lt_of_not_ge ordered))
        | tail _ member => exact selected.2 c member

/-- The actual maximum fold selects a member and bounds all its inputs. -/
theorem foldl_max_spec (xs : List Nat) (a : Nat) :
    xs.foldl max a ∈ a :: xs ∧
      ∀ b, b ∈ a :: xs → b ≤ xs.foldl max a := by
  induction xs generalizing a with
  | nil =>
      refine ⟨List.Mem.head [], ?_⟩
      intro b member
      cases member with
      | head => exact Nat.le_refl a
      | tail _ member => cases member
  | cons b xs ih =>
      change xs.foldl max (max a b) ∈ a :: b :: xs ∧
        ∀ c, c ∈ a :: b :: xs → c ≤ xs.foldl max (max a b)
      by_cases ordered : a ≤ b
      · have chosen : max a b = b := if_pos ordered
        rw [chosen]
        have selected := ih b
        refine ⟨List.Mem.tail a selected.1, ?_⟩
        intro c member
        cases member with
        | head => exact Nat.le_trans ordered (selected.2 b (List.Mem.head xs))
        | tail _ member => exact selected.2 c member
      · have chosen : max a b = a := if_neg ordered
        rw [chosen]
        have selected := ih a
        refine ⟨?_, ?_⟩
        · cases mem_cons_iff.mp selected.1 with
          | inl same => exact mem_cons_iff.mpr (Or.inl same)
          | inr member => exact List.Mem.tail a (List.Mem.tail b member)
        · intro c member
          cases member with
          | head => exact selected.2 a (List.Mem.head xs)
          | tail _ member =>
              cases member with
              | head =>
                  exact Nat.le_trans (Nat.le_of_lt (Nat.lt_of_not_ge ordered))
                    (selected.2 a (List.Mem.head xs))
              | tail _ member => exact selected.2 c (List.Mem.tail a member)

theorem min?_eq_none_iff {xs : List Nat} : xs.min? = none ↔ xs = [] := by
  cases xs with
  | nil => exact ⟨fun _ => rfl, fun _ => rfl⟩
  | cons a xs =>
      constructor
      · intro impossible
        cases impossible
      · intro impossible
        cases impossible

theorem max?_eq_none_iff {xs : List Nat} : xs.max? = none ↔ xs = [] := by
  cases xs with
  | nil => exact ⟨fun _ => rfl, fun _ => rfl⟩
  | cons a xs =>
      constructor
      · intro impossible
        cases impossible
      · intro impossible
        cases impossible

theorem min?_eq_some_iff {xs : List Nat} {a : Nat} :
    xs.min? = some a ↔ a ∈ xs ∧ ∀ b, b ∈ xs → a ≤ b := by
  cases xs with
  | nil =>
      constructor
      · intro impossible
        cases impossible
      · intro minimum
        cases minimum.1
  | cons b xs =>
      constructor
      · intro result
        have same := Option.some.inj result
        exact same ▸ foldl_min_spec xs b
      · intro minimum
        have selected := foldl_min_spec xs b
        exact congrArg some (Nat.le_antisymm (selected.2 a minimum.1)
          (minimum.2 (xs.foldl min b) selected.1))

theorem max?_eq_some_iff {xs : List Nat} {a : Nat} :
    xs.max? = some a ↔ a ∈ xs ∧ ∀ b, b ∈ xs → b ≤ a := by
  cases xs with
  | nil =>
      constructor
      · intro impossible
        cases impossible
      · intro maximum
        cases maximum.1
  | cons b xs =>
      constructor
      · intro result
        have same := Option.some.inj result
        exact same ▸ foldl_max_spec xs b
      · intro maximum
        have selected := foldl_max_spec xs b
        exact congrArg some (Nat.le_antisymm
          (maximum.2 (xs.foldl max b) selected.1) (selected.2 a maximum.1))

end GRWTSK.Logic.FiniteSequences.ConstructiveList
```
