-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PartialBit.Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PartialBit.Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/PartialBitfield/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

/-!
# Partial bitfield order

This module owns only the three-valued coordinate order, partial and full
bitfields, exact one-coordinate refinement, and complete Boolean siblings.
It has no completion, tree, symmetry, or obstruction dependency.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PartialBit.Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb

namespace Mathematics.BinaryFrontier

open scoped BigOperators

inductive PartialBit
  | unresolved
  | zero
  | one
  deriving DecidableEq, Repr, Fintype

namespace PartialBit

def LE : PartialBit → PartialBit → Prop
  | .unresolved, _ => True
  | .zero, .zero => True
  | .one, .one => True
  | _, _ => False

instance : LE PartialBit where
  le := LE

@[simp] theorem unresolved_le
    (bit : PartialBit) :
    PartialBit.unresolved ≤ bit := by
  cases bit <;> trivial

@[simp] theorem zero_le_iff
    (bit : PartialBit) :
    PartialBit.zero ≤ bit ↔
      bit = PartialBit.zero := by
  cases bit <;> simp [LE]

@[simp] theorem one_le_iff
    (bit : PartialBit) :
    PartialBit.one ≤ bit ↔
      bit = PartialBit.one := by
  cases bit <;> simp [LE]

theorem le_refl (bit : PartialBit) :
    bit ≤ bit := by
  cases bit <;> trivial

theorem le_trans
    {first second third : PartialBit} :
    first ≤ second →
    second ≤ third →
    first ≤ third := by
  cases first <;>
    cases second <;>
      cases third <;>
        simp [LE]

theorem le_antisymm
    {left right : PartialBit} :
    left ≤ right →
    right ≤ left →
    left = right := by
  cases left <;>
    cases right <;>
      simp [LE]

instance : PartialOrder PartialBit where
  le_refl := le_refl
  le_trans := le_trans
  le_antisymm := le_antisymm

def ofBool : Bool → PartialBit
  | false => .zero
  | true => .one

def isResolved : PartialBit → Bool
  | .unresolved => false
  | .zero => true
  | .one => true

@[simp] theorem ofBool_ne_unresolved
    (value : Bool) :
    ofBool value ≠ PartialBit.unresolved := by
  cases value <;> simp [ofBool]

end PartialBit

theorem partialBit_partialOrder :
    PartialOrder PartialBit :=
  inferInstance

abbrev PartialBitfield (width : Nat) :=
  Fin width → PartialBit

abbrev FullBitfield (width : Nat) :=
  Fin width → Bool

def Extends
    {width : Nat}
    (parent child : PartialBitfield width) : Prop :=
  ∀ coordinate,
    parent coordinate ≤ child coordinate

def embedFull
    {width : Nat}
    (state : FullBitfield width) :
    PartialBitfield width :=
  fun coordinate =>
    PartialBit.ofBool (state coordinate)

def ExtendsFull
    {width : Nat}
    (partial : PartialBitfield width)
    (full : FullBitfield width) : Prop :=
  Extends partial (embedFull full)

def resolvedSupport
    {width : Nat}
    (state : PartialBitfield width) :
    Finset (Fin width) :=
  Finset.univ.filter
    (fun coordinate =>
      state coordinate ≠ PartialBit.unresolved)

def IsFull
    {width : Nat}
    (state : PartialBitfield width) : Prop :=
  ∀ coordinate,
    state coordinate ≠ PartialBit.unresolved

theorem extends_refl
    {width : Nat}
    (state : PartialBitfield width) :
    Extends state state :=
  fun _ => le_rfl

theorem extends_trans
    {width : Nat}
    {first second third : PartialBitfield width}
    (firstSecond : Extends first second)
    (secondThird : Extends second third) :
    Extends first third :=
  fun coordinate =>
    le_trans
      (firstSecond coordinate)
      (secondThird coordinate)

theorem resolvedSupport_mono
    {width : Nat}
    {parent child : PartialBitfield width}
    (extends : Extends parent child) :
    resolvedSupport parent ⊆
      resolvedSupport child := by
  classical
  intro coordinate parentResolved
  simp only
    [resolvedSupport, Finset.mem_filter,
      Finset.mem_univ, true_and] at
    parentResolved ⊢
  intro childUnresolved
  have coordinateExtends :=
    extends coordinate
  rw [childUnresolved] at coordinateExtends
  cases parentValue : parent coordinate <;>
    simp [parentValue, PartialBit.LE] at
      parentResolved coordinateExtends

theorem embedded_full_is_full
    {width : Nat}
    (state : FullBitfield width) :
    IsFull (embedFull state) := by
  intro coordinate
  exact
    PartialBit.ofBool_ne_unresolved
      (state coordinate)

theorem full_extension_unique
    {width : Nat}
    {parent : PartialBitfield width}
    (parentFull : IsFull parent)
    {child : PartialBitfield width}
    (extends : Extends parent child) :
    child = parent := by
  funext coordinate
  have coordinateFull :=
    parentFull coordinate
  have coordinateExtends :=
    extends coordinate
  cases parentValue : parent coordinate <;>
    cases childValue : child coordinate <;>
      simp
        [parentValue, childValue, PartialBit.LE]
        at coordinateFull coordinateExtends ⊢

def OneCoordinateResolution
    {width : Nat}
    (parent child : PartialBitfield width) : Prop :=
  ∃ coordinate : Fin width,
    parent coordinate = PartialBit.unresolved ∧
    child coordinate ≠ PartialBit.unresolved ∧
    ∀ other : Fin width,
      other ≠ coordinate →
      child other = parent other

theorem oneCoordinateResolution_extends
    {width : Nat}
    {parent child : PartialBitfield width}
    (resolution :
      OneCoordinateResolution parent child) :
    Extends parent child := by
  rcases resolution with
    ⟨coordinate, parentUnresolved,
      _childResolved, unchanged⟩
  intro other
  by_cases same : other = coordinate
  · subst other
    rw [parentUnresolved]
    exact PartialBit.unresolved_le _
  · rw [unchanged other same]

theorem oneCoordinateResolution_support
    {width : Nat}
    {parent child : PartialBitfield width}
    (resolution :
      OneCoordinateResolution parent child) :
    ∃ coordinate,
      resolvedSupport child =
        insert coordinate
          (resolvedSupport parent) := by
  classical
  rcases resolution with
    ⟨coordinate, parentUnresolved,
      childResolved, unchanged⟩
  refine ⟨coordinate, ?_⟩
  ext other
  by_cases same : other = coordinate
  · subst other
    simp [resolvedSupport,
      parentUnresolved, childResolved]
  · simp [resolvedSupport, same,
      unchanged other same]

theorem oneCoordinateResolution_card
    {width : Nat}
    {parent child : PartialBitfield width}
    (resolution :
      OneCoordinateResolution parent child) :
    (resolvedSupport child).card =
      (resolvedSupport parent).card + 1 := by
  classical
  rcases resolution with
    ⟨coordinate, parentUnresolved,
      childResolved, unchanged⟩
  have supportEquality :
      resolvedSupport child =
        insert coordinate
          (resolvedSupport parent) := by
    ext other
    by_cases same : other = coordinate
    · subst other
      simp [resolvedSupport,
        parentUnresolved, childResolved]
    · simp [resolvedSupport, same,
        unchanged other same]
  have coordinateNotResolved :
      coordinate ∉ resolvedSupport parent := by
    simp [resolvedSupport, parentUnresolved]
  rw [supportEquality,
    Finset.card_insert_of_not_mem
      coordinateNotResolved]
  omega

theorem oneCoordinateResolution_support_increment
    {width : Nat}
    {parent child : PartialBitfield width}
    (resolution :
      OneCoordinateResolution parent child) :
    (resolvedSupport child).card =
      (resolvedSupport parent).card + 1 :=
  oneCoordinateResolution_card resolution

structure CompleteBooleanSplit
    {width : Nat}
    (parent zeroChild oneChild :
      PartialBitfield width) where
  coordinate : Fin width
  parent_unresolved :
    parent coordinate = PartialBit.unresolved
  zero_at_coordinate :
    zeroChild coordinate = PartialBit.zero
  one_at_coordinate :
    oneChild coordinate = PartialBit.one
  zero_elsewhere :
    ∀ other,
      other ≠ coordinate →
      zeroChild other = parent other
  one_elsewhere :
    ∀ other,
      other ≠ coordinate →
      oneChild other = parent other

namespace CompleteBooleanSplit

theorem zero_resolves_one
    {width : Nat}
    {parent zeroChild oneChild :
      PartialBitfield width}
    (split :
      CompleteBooleanSplit
        parent zeroChild oneChild) :
    OneCoordinateResolution parent zeroChild :=
  ⟨split.coordinate,
    split.parent_unresolved,
    by simp [split.zero_at_coordinate],
    split.zero_elsewhere⟩

theorem one_resolves_one
    {width : Nat}
    {parent zeroChild oneChild :
      PartialBitfield width}
    (split :
      CompleteBooleanSplit
        parent zeroChild oneChild) :
    OneCoordinateResolution parent oneChild :=
  ⟨split.coordinate,
    split.parent_unresolved,
    by simp [split.one_at_coordinate],
    split.one_elsewhere⟩

theorem siblings_equal_elsewhere
    {width : Nat}
    {parent zeroChild oneChild :
      PartialBitfield width}
    (split :
      CompleteBooleanSplit
        parent zeroChild oneChild)
    {other : Fin width}
    (different : other ≠ split.coordinate) :
    zeroChild other = oneChild other := by
  rw [split.zero_elsewhere other different,
    split.one_elsewhere other different]

theorem siblings_differ_exactly_once
    {width : Nat}
    {parent zeroChild oneChild :
      PartialBitfield width}
    (split :
      CompleteBooleanSplit
        parent zeroChild oneChild) :
    ∃! coordinate,
      zeroChild coordinate ≠
        oneChild coordinate := by
  refine
    ⟨split.coordinate, ?_, ?_⟩
  · rw [split.zero_at_coordinate,
      split.one_at_coordinate]
    decide
  · intro other differs
    by_contra different
    exact
      differs
        (split.siblings_equal_elsewhere
          different)

end CompleteBooleanSplit

end Mathematics.BinaryFrontier
