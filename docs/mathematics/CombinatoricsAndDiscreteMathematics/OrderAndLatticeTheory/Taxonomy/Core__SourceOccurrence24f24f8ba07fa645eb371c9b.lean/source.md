# Complete source: GRWTSK.Order.Taxonomy.Core

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe702c2a0701127e60846aa3097a89f22af76b9a` · SHA-256 `1f08969bcd1a1febac5adfee3eba3eb97b83fe3934e0f40a2db515baf686db51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import GRWTSK.Order.Taxonomy.Address

/-! # Prefix-closed taxonomies, finite presentations, and exact representation -/

set_option autoImplicit false

namespace GRWTSK.Order.Taxonomy

/-- A finite-depth rooted taxonomy. The set of nodes may itself be infinite. -/
structure Taxonomy where
  id : String := "anonymous"
  revision : String := "unversioned"
  present : Address → Prop
  root_present : present []
  prefix_closed : ∀ {a b : Address}, Prefix a b → present b → present a

/-- Indexed by the WHOLE taxonomy, including identity and revision.
This is not a subtype abbreviation that erases catalogue identity. -/
@[ext] structure Taxonomy.Node (T : Taxonomy) where
  val : Address
  property : T.present val

theorem Taxonomy.Node.eq_of_val_eq {T : Taxonomy} {a b : T.Node}
    (h : a.val = b.val) : a = b := by
  cases a with
  | mk av ap =>
    cases b with
    | mk bv bp =>
      cases h
      rfl

instance (T : Taxonomy) : PartialOrder T.Node where
  le a b := Prefix a.val b.val
  le_refl a := prefix_refl a.val
  le_trans _ _ _ := prefix_trans
  le_antisymm a b hab hba := Taxonomy.Node.eq_of_val_eq (prefix_antisymm hab hba)

instance (T : Taxonomy) : OrderBot T.Node where
  bot := ⟨[], T.root_present⟩
  bot_le _ := True.intro

/-- The LCA is present because the taxonomy is prefix-closed. -/
def Taxonomy.lca (T : Taxonomy) (a b : T.Node) : T.Node :=
  ⟨commonPrefix a.val b.val, T.prefix_closed (commonPrefix_left a.val b.val) a.property⟩

instance (T : Taxonomy) : SemilatticeInf T.Node where
  toPartialOrder := inferInstance
  inf := T.lca
  inf_le_left a b := commonPrefix_left a.val b.val
  inf_le_right a b := commonPrefix_right a.val b.val
  le_inf _ _ _ := commonPrefix_greatest

/-- A non-tree diamond is ruled out: every ancestral cone is a chain. -/
theorem Taxonomy.ancestors_chain (T : Taxonomy) {a b c : T.Node}
    (ha : a ≤ c) (hb : b ≤ c) : a ≤ b ∨ b ≤ a :=
  ancestors_comparable ha hb

/-- All prefixes of supplied addresses, together with the administrative root. -/
def ofPaths (paths : List Address) (id : String := "anonymous")
    (revision : String := "unversioned") : Taxonomy where
  id := id
  revision := revision
  present a := a = [] ∨ ∃ b, b ∈ paths ∧ Prefix a b
  root_present := Or.inl rfl
  prefix_closed := by
    intro a b hab hb
    rcases hb with hb | ⟨c, hc, hbc⟩
    · subst b
      cases a with
      | nil => exact Or.inl rfl
      | cons x xs => exact False.elim hab
    · exact Or.inr ⟨c, hc, prefix_trans hab hbc⟩

/-- A finite input already contains its root and every structural prefix. -/
def ClosedPaths (paths : List Address) : Prop :=
  [] ∈ paths ∧ ∀ a b, b ∈ paths → Prefix a b → a ∈ paths

/-- Executable finite certificate; accepted by ordinary kernel `decide`. -/
def checkClosed (paths : List Address) : Bool :=
  decide ([] ∈ paths) &&
    paths.all (fun b => (prefixes b).all (fun a => decide (a ∈ paths)))

theorem checkClosed_sound (paths : List Address) (h : checkClosed paths = true) :
    ClosedPaths paths := by
  have hh : [] ∈ paths ∧ ∀ b ∈ paths, ∀ a ∈ prefixes b, a ∈ paths := by
    simpa [checkClosed, List.all_eq_true] using h
  exact ⟨hh.1, fun a b hb hab => hh.2 b hb a ((prefix_iff_mem_prefixes a b).mp hab)⟩

/-- Exactness: closing a conforming finite input invents no extra node. -/
theorem ofPaths_exact (paths : List Address) (h : ClosedPaths paths) (a : Address) :
    (ofPaths paths).present a ↔ a ∈ paths := by
  constructor
  · intro ha
    rcases ha with rfl | ⟨b, hb, hab⟩
    · exact h.1
    · exact h.2 a b hb hab
  · intro ha
    exact Or.inr ⟨a, ha, prefix_refl a⟩

/-- A concrete list completely enumerates an existing taxonomy. -/
structure FinitePresentation (T : Taxonomy) where
  paths : List Address
  exact_membership : ∀ a, a ∈ paths ↔ T.present a

/-- Representation theorem for every finitely presented prefix taxonomy. -/
theorem finite_representation (T : Taxonomy) (P : FinitePresentation T)
    (a : Address) : (ofPaths P.paths T.id T.revision).present a ↔ T.present a := by
  constructor
  · intro ha
    rcases ha with rfl | ⟨b, hb, hab⟩
    · exact T.root_present
    · exact T.prefix_closed hab ((P.exact_membership b).mp hb)
  · intro ha
    exact Or.inr ⟨a, (P.exact_membership a).mpr ha, prefix_refl a⟩

/-- The representation preserves the entire ancestry order, not merely labels. -/
def representationOrderIso (T : Taxonomy) (P : FinitePresentation T) :
    T.Node ≃o (ofPaths P.paths T.id T.revision).Node where
  toFun a := ⟨a.val, (finite_representation T P a.val).mpr a.property⟩
  invFun a := ⟨a.val, (finite_representation T P a.val).mp a.property⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' := Iff.rfl

/-- An optional digit-by-digit profile; segmented decimal paths need no arity bound. -/
def RadixBounded (radix : Nat) (T : Taxonomy) : Prop :=
  ∀ a, T.present a → ∀ digit ∈ a, digit < radix

/-- The empty path is a virtual/administrative root, not a mathematical object. -/
def rootAddress : Address := []

end GRWTSK.Order.Taxonomy
```
