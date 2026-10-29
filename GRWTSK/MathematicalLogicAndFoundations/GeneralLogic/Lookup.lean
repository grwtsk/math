import Think.SourceTree.Legacy.Compression.Lattice
import Think.SourceTree.Legacy.Compression.NormalForm

set_option autoImplicit false

namespace Think.Compression.Syntax

structure LookupPath {α : Type} (s : CompressedString α) where
  index : Nat
  inBounds : index < (decode s).length

def listGet? {α : Type} : List α → Nat → Option α
  | [], _ => none
  | x :: _, 0 => some x
  | _ :: xs, n + 1 => listGet? xs n

def pathIndex {α : Type} {s : CompressedString α}
    (path : LookupPath s) : Nat :=
  path.index

inductive LookupPathAt {α : Type}
    (_s : CompressedString α) (_i : Fin (decode _s).length) : Type
  | canonical : LookupPathAt _s _i

def canonicalLookupPathAt {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    LookupPathAt s i :=
  LookupPathAt.canonical

def lookupPathAtToPath {α : Type}
    {s : CompressedString α} {i : Fin (decode s).length}
    (_path : LookupPathAt s i) : LookupPath s :=
  { index := i.val
    inBounds := i.isLt }

theorem lookup_fiber_subsingleton {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    Subsingleton (LookupPathAt s i) := by
  constructor
  intro left right
  cases left
  cases right
  rfl

instance lookupPathAtSubsingleton {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    Subsingleton (LookupPathAt s i) :=
  lookup_fiber_subsingleton s i

theorem lookup_fiber_inhabited {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    Nonempty (LookupPathAt s i) :=
  ⟨canonicalLookupPathAt s i⟩

theorem lookup_fiber_unique {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃! _path : LookupPathAt s i, True := by
  refine ⟨canonicalLookupPathAt s i, trivial, ?_⟩
  intro other _
  exact Subsingleton.elim _ _

def lookupPathsByValueFrom {α : Type} [DecidableEq α]
    (s : CompressedString α) (target : α)
    (offset fuel : Nat) :
    List (Σ i : Fin (decode s).length, LookupPathAt s i) :=
  match fuel with
  | 0 => []
  | fuel + 1 =>
      if h : offset < (decode s).length then
        let rest := lookupPathsByValueFrom s target (offset + 1) fuel
        match listGet? (decode s) offset with
        | some value =>
            if value = target then
              ⟨⟨offset, h⟩, canonicalLookupPathAt s ⟨offset, h⟩⟩ :: rest
            else
              rest
        | none => rest
      else
        []

def lookupPathsByValue {α : Type} [DecidableEq α]
    (s : CompressedString α) (target : α) :
    List (Σ i : Fin (decode s).length, LookupPathAt s i) :=
  lookupPathsByValueFrom s target 0 (decode s).length

theorem lookupPathsByValue_empty {α : Type} [DecidableEq α]
    (target : α) :
    lookupPathsByValue (encode ([] : List α)) target = [] := rfl

theorem lookup_fiber_unique_by_value_requires_no_dup_surface {α : Type}
    [DecidableEq α] (s : CompressedString α) (target : α) :
    lookupPathsByValue s target =
      lookupPathsByValueFrom s target 0 (decode s).length := rfl

theorem lookupPathAt_complete {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃ _ : LookupPathAt s i, True :=
  ⟨canonicalLookupPathAt s i, trivial⟩

def LookupSection {α : Type}
    (s : CompressedString α) (slice : Slice (decode s)) : Type :=
  ∀ i : Fin (decode s).length,
    Slice.containsFin slice i → LookupPathAt s i

def canonicalLookupSection {α : Type}
    (s : CompressedString α) (slice : Slice (decode s)) :
    LookupSection s slice :=
  fun i _ => canonicalLookupPathAt s i

theorem lookupSection_subsingleton {α : Type}
    (s : CompressedString α) (slice : Slice (decode s)) :
    Subsingleton (LookupSection s slice) := by
  constructor
  intro left right
  funext i hcontains
  exact Subsingleton.elim _ _

theorem lookupSection_inhabited {α : Type}
    (s : CompressedString α) (slice : Slice (decode s)) :
    Nonempty (LookupSection s slice) :=
  ⟨canonicalLookupSection s slice⟩

structure Cover {α : Type} {xs : List α} (slice : Slice xs) where
  pieces : List (Slice xs)
  coversTarget : Prop

structure CompatibleFamily {α : Type}
    (s : CompressedString α) {slice : Slice (decode s)}
    (cover : Cover slice) where
  sectionAt :
    ∀ piece : Slice (decode s),
      piece ∈ cover.pieces → LookupSection s piece
  compatibleOnOverlaps :
    ∀ (left : Slice (decode s)) (hleft : left ∈ cover.pieces)
      (right : Slice (decode s)) (hright : right ∈ cover.pieces)
      (i : Fin (decode s).length)
      (hleftContains : Slice.containsFin left i)
      (hrightContains : Slice.containsFin right i),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains

def RestrictsTo {α : Type}
    {s : CompressedString α} {slice : Slice (decode s)}
    {cover : Cover slice}
    (global : LookupSection s slice)
    (family : CompatibleFamily s cover) : Prop :=
  ∀ (piece : Slice (decode s)) (hpiece : piece ∈ cover.pieces)
    (i : Fin (decode s).length)
    (hpieceContains : Slice.containsFin piece i)
    (htargetContains : Slice.containsFin slice i),
    global i htargetContains =
      family.sectionAt piece hpiece i hpieceContains

theorem lookup_sections_glue_unique {α : Type}
    (s : CompressedString α)
    (slice : Slice (decode s))
    (cover : Cover slice)
    (family : CompatibleFamily s cover) :
    ∃! global : LookupSection s slice,
      RestrictsTo global family := by
  refine ⟨canonicalLookupSection s slice, ?_, ?_⟩
  · intro piece hpiece i hpieceContains htargetContains
    exact Subsingleton.elim _ _
  intro other _
  exact @Subsingleton.elim
    (LookupSection s slice)
    (lookupSection_subsingleton s slice)
    other
    (canonicalLookupSection s slice)

def LookupPathFor {α : Type}
    (s : CompressedString α) (i : Nat) : Prop :=
  i < (decode s).length

def lookupPath? {α : Type}
    (s : CompressedString α) (i : Nat) : Option (LookupPath s) :=
  if h : i < (decode s).length then
    some { index := i, inBounds := h }
  else
    none

def followPath? {α : Type}
    (s : CompressedString α) (path : LookupPath s) : Option α :=
  listGet? (decode s) path.index

theorem lookupPath?_sound {α : Type}
    (s : CompressedString α) (i : Nat) (path : LookupPath s)
    (hlookup : lookupPath? s i = some path) :
    followPath? s path = listGet? (decode s) i := by
  unfold lookupPath? at hlookup
  unfold followPath?
  by_cases hi : i < (decode s).length
  · simp [hi] at hlookup
    cases hlookup
    rfl
  · simp [hi] at hlookup

theorem lookupPath_complete {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃ path : LookupPath s, pathIndex path = i.val :=
  ⟨{ index := i.val, inBounds := i.isLt }, rfl⟩

theorem lookupPath_unique_by_index {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃ path : LookupPath s,
      pathIndex path = i.val ∧
        ∀ other : LookupPath s,
          pathIndex other = i.val → other = path := by
  refine ⟨{ index := i.val, inBounds := i.isLt }, rfl, ?_⟩
  intro path hpath
  cases path with
  | mk index inBounds =>
      dsimp [pathIndex] at hpath
      subst index
      have hproof : inBounds = i.isLt := Subsingleton.elim _ _
      cases hproof
      rfl

theorem lookupPath?_complete_some {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃ path : LookupPath s, lookupPath? s i.val = some path := by
  unfold lookupPath?
  simp [i.isLt]

end Think.Compression.Syntax
