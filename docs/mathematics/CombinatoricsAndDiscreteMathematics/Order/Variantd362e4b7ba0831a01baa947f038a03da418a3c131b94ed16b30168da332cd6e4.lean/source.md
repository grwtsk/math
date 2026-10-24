# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0058fcbd539c6d9f549210cd4c470ac2eb1911ed` · SHA-256 `b7659bb83448ed707292f7529df1c9821d7a61cf6c19eb7dda4e6944405b3ff1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PartialBit.Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PartialBit.Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/PartialBitfield/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Basic

/-!
# Partial bitfields and their refinement order

`PartialBit` separates unresolved information from certified zero and one.
Refinement may resolve an unresolved value, but it may not change a resolved
value.  The coordinate type is `Fin n`, so every theorem in this module has an
explicit finite boundary.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PartialBit.Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102

namespace Mathematics.BinaryFrontier

inductive PartialBit
  | unresolved
  | zero
  | one
  deriving DecidableEq, BEq, Repr

def PartialBit.refines : PartialBit → PartialBit → Prop
  | .unresolved, _ => True
  | .zero, .zero => True
  | .one, .one => True
  | _, _ => False

instance : LE PartialBit where
  le := PartialBit.refines

theorem PartialBit.le_refl (bit : PartialBit) : bit ≤ bit := by
  cases bit <;> trivial

theorem PartialBit.le_trans
    {left middle right : PartialBit}
    (leftMiddle : left ≤ middle)
    (middleRight : middle ≤ right) :
    left ≤ right := by
  cases left <;> cases middle <;> cases right <;> trivial

theorem PartialBit.le_antisymm
    {left right : PartialBit}
    (leftRight : left ≤ right)
    (rightLeft : right ≤ left) :
    left = right := by
  cases left <;> cases right <;> trivial

instance partialBitPartialOrder : PartialOrder PartialBit where
  le_refl := PartialBit.le_refl
  le_trans := fun _ _ _ => PartialBit.le_trans
  le_antisymm := fun _ _ => PartialBit.le_antisymm

@[reducible] def partialBit_partialOrder : PartialOrder PartialBit :=
  inferInstance

def PartialBit.Resolved : PartialBit → Prop
  | .unresolved => False
  | .zero => True
  | .one => True

theorem PartialBit.resolved_le_eq
    {left right : PartialBit}
    (leftResolved : left.Resolved)
    (leftRight : left ≤ right) :
    left = right := by
  cases left <;> cases right <;> trivial

def PartialBit.ofBool : Bool → PartialBit
  | false => .zero
  | true => .one

def PartialBitfield (n : Nat) :=
  Fin n → PartialBit

instance {n : Nat} : LE (PartialBitfield n) where
  le := fun left right =>
    ∀ coordinate, left coordinate ≤ right coordinate

def ResolvedSupport {n : Nat} (field : PartialBitfield n) : Finset (Fin n) :=
  Finset.univ.filter fun coordinate =>
    field coordinate ≠ .unresolved

structure OneCoordinateResolution
    {n : Nat}
    (parent child : PartialBitfield n) where
  coordinate : Fin n
  value : Bool
  parentUnresolved :
    parent coordinate = .unresolved
  childResolved :
    child coordinate = PartialBit.ofBool value
  unchanged :
    ∀ other, other ≠ coordinate →
      child other = parent other

theorem oneCoordinateResolution_extends
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    parent ≤ child := by
  intro coordinate
  by_cases isResolvedCoordinate :
      coordinate = resolution.coordinate
  · subst coordinate
    rw [resolution.parentUnresolved]
    trivial
  · rw [resolution.unchanged coordinate isResolvedCoordinate]

theorem oneCoordinateResolution_support
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    ResolvedSupport child =
      insert resolution.coordinate (ResolvedSupport parent) := by
  apply Finset.ext
  intro coordinate
  simp only [
    ResolvedSupport,
    Finset.mem_filter,
    Finset.mem_univ,
    true_and,
    Finset.mem_insert
  ]
  by_cases isResolvedCoordinate :
      coordinate = resolution.coordinate
  · subst coordinate
    have childResolved :
        child resolution.coordinate ≠ .unresolved := by
      rw [resolution.childResolved]
      cases resolution.value <;> decide
    simp [
      childResolved,
      resolution.parentUnresolved
    ]
  · rw [resolution.unchanged coordinate isResolvedCoordinate]
    simp [isResolvedCoordinate]

theorem oneCoordinateResolution_support_increment
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    (ResolvedSupport child).card =
      (ResolvedSupport parent).card + 1 := by
  rw [oneCoordinateResolution_support resolution]
  apply Finset.card_insert_of_notMem
  simp [ResolvedSupport, resolution.parentUnresolved]

end Mathematics.BinaryFrontier
```
