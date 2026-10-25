# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lattice.Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a02de2374f8e63656a3bdb9403e999c9fcc2f204` · SHA-256 `45f80d24c1687a4c97026381237f69f4bc9df7d579c93ad2dde983c39a815456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Slice.Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Semantics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
A finite decoded-position interval over a list.

This is the base object for lookup sections. It is only a finite interval
surface over decoded positions, not an order-completeness or sheafification
claim.
-/
structure Slice {α : Type} (xs : List α) where
  start : Nat
  len : Nat
  valid : start + len ≤ xs.length
deriving Repr

namespace Slice

def endExclusive {α : Type} {xs : List α} (slice : Slice xs) : Nat :=
  slice.start + slice.len

def containsNat {α : Type} {xs : List α}
    (slice : Slice xs) (i : Nat) : Prop :=
  slice.start ≤ i ∧ i < slice.endExclusive

def containsFin {α : Type} {xs : List α}
    (slice : Slice xs) (i : Fin xs.length) : Prop :=
  slice.containsNat i.val

theorem containsFin_iff_containsNat {α : Type} {xs : List α}
    (slice : Slice xs) (i : Fin xs.length) :
    slice.containsFin i ↔ slice.containsNat i.val := by
  rfl

/--
Extensional containment of decoded positions.

For nonempty intervals this agrees with the usual endpoint containment test.
The extensional form keeps empty intersections sound: disjoint intervals have
an empty meet, and the empty decoded-position set is contained in both inputs.
-/
def le {α : Type} {xs : List α} (left right : Slice xs) : Prop :=
  ∀ i : Nat, left.containsNat i → right.containsNat i

theorem le_refl {α : Type} {xs : List α} (slice : Slice xs) :
    le slice slice := by
  intro i hi
  exact hi

theorem le_trans {α : Type} {xs : List α}
    {left middle right : Slice xs}
    (hleft : le left middle)
    (hright : le middle right) :
    le left right := by
  intro i hi
  exact hright i (hleft i hi)

def boundsLe {α : Type} {xs : List α} (left right : Slice xs) : Prop :=
  right.start ≤ left.start ∧ left.endExclusive ≤ right.endExclusive

theorem boundsLe_implies_le {α : Type} {xs : List α}
    {left right : Slice xs}
    (h : boundsLe left right) :
    le left right := by
  intro i hi
  simp [boundsLe, endExclusive, containsNat] at h hi ⊢
  omega

theorem start_le_length {α : Type} {xs : List α}
    (slice : Slice xs) :
    slice.start ≤ xs.length := by
  have hvalid := slice.valid
  omega

theorem endExclusive_le_length {α : Type} {xs : List α}
    (slice : Slice xs) :
    slice.endExclusive ≤ xs.length := by
  simpa [endExclusive] using slice.valid

def intersectStart {α : Type} {xs : List α}
    (left right : Slice xs) : Nat :=
  max left.start right.start

def intersectEnd {α : Type} {xs : List α}
    (left right : Slice xs) : Nat :=
  min left.endExclusive right.endExclusive

def intersect {α : Type} {xs : List α}
    (left right : Slice xs) : Slice xs :=
  if h : intersectStart left right ≤ intersectEnd left right then
    { start := intersectStart left right
      len := intersectEnd left right - intersectStart left right
      valid := by
        have hfinish : intersectEnd left right ≤ xs.length := by
          unfold intersectEnd
          exact Nat.le_trans
            (Nat.min_le_left left.endExclusive right.endExclusive)
            (endExclusive_le_length left)
        rw [Nat.add_sub_of_le h]
        exact hfinish }
  else
    { start := intersectStart left right
      len := 0
      valid := by
        unfold intersectStart
        have hleft := start_le_length left
        have hright := start_le_length right
        omega }

theorem containsNat_intersect {α : Type} {xs : List α}
    (left right : Slice xs) (i : Nat) :
    (intersect left right).containsNat i ↔
      left.containsNat i ∧ right.containsNat i := by
  by_cases h :
      intersectStart left right ≤ intersectEnd left right
  · simp [intersect, h, containsNat, endExclusive]
    unfold intersectStart intersectEnd endExclusive at h ⊢
    constructor
    · intro hi
      constructor <;> omega
    · intro hi
      omega
  · simp [intersect, h, containsNat, endExclusive]
    simp [intersectStart, intersectEnd, endExclusive] at h ⊢
    constructor
    · intro hi
      omega
    · intro hi
      exfalso
      omega

theorem intersect_le_left {α : Type} {xs : List α}
    (left right : Slice xs) :
    le (intersect left right) left := by
  intro i hi
  exact (containsNat_intersect left right i).mp hi |>.left

theorem intersect_le_right {α : Type} {xs : List α}
    (left right : Slice xs) :
    le (intersect left right) right := by
  intro i hi
  exact (containsNat_intersect left right i).mp hi |>.right

def hullStart {α : Type} {xs : List α}
    (left right : Slice xs) : Nat :=
  min left.start right.start

def hullEnd {α : Type} {xs : List α}
    (left right : Slice xs) : Nat :=
  max left.endExclusive right.endExclusive

theorem hullStart_le_hullEnd {α : Type} {xs : List α}
    (left right : Slice xs) :
    hullStart left right ≤ hullEnd left right := by
  unfold hullStart hullEnd endExclusive
  omega

def hull {α : Type} {xs : List α}
    (left right : Slice xs) : Slice xs :=
  { start := hullStart left right
    len := hullEnd left right - hullStart left right
    valid := by
      have hfinish : hullEnd left right ≤ xs.length := by
        unfold hullEnd
        have hleft := endExclusive_le_length left
        have hright := endExclusive_le_length right
        omega
      rw [Nat.add_sub_of_le (hullStart_le_hullEnd left right)]
      exact hfinish }

theorem containsNat_hull_left {α : Type} {xs : List α}
    (left right : Slice xs) (i : Nat)
    (hi : left.containsNat i) :
    (hull left right).containsNat i := by
  simp [hull, containsNat, endExclusive, hullStart, hullEnd] at hi ⊢
  omega

theorem containsNat_hull_right {α : Type} {xs : List α}
    (left right : Slice xs) (i : Nat)
    (hi : right.containsNat i) :
    (hull left right).containsNat i := by
  simp [hull, containsNat, endExclusive, hullStart, hullEnd] at hi ⊢
  omega

theorem le_hull_left {α : Type} {xs : List α}
    (left right : Slice xs) :
    le left (hull left right) := by
  intro i hi
  exact containsNat_hull_left left right i hi

theorem le_hull_right {α : Type} {xs : List α}
    (left right : Slice xs) :
    le right (hull left right) := by
  intro i hi
  exact containsNat_hull_right left right i hi

def hasGap {α : Type} {xs : List α}
    (left right : Slice xs) : Prop :=
  left.endExclusive < right.start ∨ right.endExclusive < left.start

instance decidableHasGap {α : Type} {xs : List α}
    (left right : Slice xs) : Decidable (hasGap left right) := by
  unfold hasGap
  infer_instance

structure UnionGapResidue {α : Type} {xs : List α}
    (left right : Slice xs) : Prop where
  gap : hasGap left right
  requiresHullResidue : True

theorem containsNat_zero_len_false {α : Type} {xs : List α}
    (slice : Slice xs) (hlen : slice.len = 0) (i : Nat) :
    ¬ slice.containsNat i := by
  intro hi
  unfold containsNat endExclusive at hi
  omega

theorem containsNat_hull_no_gap {α : Type} {xs : List α}
    (left right : Slice xs)
    (_hleft : left.len ≠ 0)
    (_hright : right.len ≠ 0)
    (hgap : ¬ hasGap left right)
    (i : Nat) :
    (hull left right).containsNat i ↔
      left.containsNat i ∨ right.containsNat i := by
  simp [hull, containsNat, endExclusive, hullStart, hullEnd, hasGap] at hgap ⊢
  constructor
  · intro hi
    by_cases hleftSide : i < left.start
    · right
      omega
    · by_cases hrightSide : i < right.start
      · left
        omega
      · by_cases hleftEnd : i < left.start + left.len
        · left
          omega
        · right
          omega
  · intro hi
    rcases hi with hi | hi <;> omega

/--
Exact finite union of two slices when the union is still representable as one
slice. A failed result records a genuine gap; callers may use `hull` only as
convex closure, with the gap retained as residue.
-/
def compatibleUnion? {α : Type} {xs : List α}
    (left right : Slice xs) : Option (Slice xs) :=
  if _hleft : left.len = 0 then
    some right
  else if _hright : right.len = 0 then
    some left
  else if _hgap : hasGap left right then
    none
  else
    some (hull left right)

theorem compatibleUnion?_sound {α : Type} {xs : List α}
    (left right union : Slice xs)
    (hunion : compatibleUnion? left right = some union) :
    ∀ i : Nat,
      union.containsNat i ↔
        left.containsNat i ∨ right.containsNat i := by
  intro i
  unfold compatibleUnion? at hunion
  split at hunion
  · rename_i hleft
    cases hunion
    constructor
    · intro hi
      exact Or.inr hi
    · intro hi
      rcases hi with hi | hi
      · exfalso
        exact containsNat_zero_len_false left hleft i hi
      · exact hi
  · rename_i hleft
    split at hunion
    · rename_i hright
      cases hunion
      constructor
      · intro hi
        exact Or.inl hi
      · intro hi
        rcases hi with hi | hi
        · exact hi
        · exfalso
          exact containsNat_zero_len_false right hright i hi
    · rename_i hright
      split at hunion
      · contradiction
      · rename_i hgap
        cases hunion
        exact containsNat_hull_no_gap left right hleft hright hgap i

theorem compatibleUnion?_none_gap {α : Type} {xs : List α}
    (left right : Slice xs)
    (hunion : compatibleUnion? left right = none) :
    UnionGapResidue left right := by
  unfold compatibleUnion? at hunion
  split at hunion
  · contradiction
  · split at hunion
    · contradiction
    · split at hunion
      · exact { gap := ‹hasGap left right›, requiresHullResidue := trivial }
      · contradiction

end Slice

end Think.Compression.Syntax
```
