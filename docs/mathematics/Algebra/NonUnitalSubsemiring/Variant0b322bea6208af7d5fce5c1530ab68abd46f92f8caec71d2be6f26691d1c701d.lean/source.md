# Complete source: GRWTSK.Algebra.NonUnitalSubsemiring.Variant0b322bea6208af7d5fce5c1530ab68abd46f92f8caec71d2be6f26691d1c701d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c03941f81a0ebb4645e5858102d17e43b3a9875` · SHA-256 `7f2f10b1efbf7b267c5dbcadef26be591c221cdfd898fb8bd92f30b13d0720f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SubStarSemigroup.Variant8bcaee7a2be5572da5a5442e18f1a212a482a0b5a70129b87778568133c63dc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bcaee7a2be5572da5a5442e18f1a212a482a0b5a70129b87778568133c63dc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SubStarSemigroup.Variant8bcaee7a2be5572da5a5442e18f1a212a482a0b5a70129b87778568133c63dc3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8bcaee7a2be5572da5a5442e18f1a212a482a0b5a70129b87778568133c63dc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Star/NonUnitalSubsemiring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
module

public import Mathlib.Algebra.Ring.Defs
public import Mathlib.Algebra.Group.Subsemigroup.Basic
public import Mathlib.RingTheory.NonUnitalSubsemiring.Basic
public import Mathlib.Algebra.Star.Center

/-!
# Non-unital Star Subsemirings

In this file we define `NonUnitalStarSubsemiring`s and the usual operations on them.

## Implementation

This file is heavily inspired by `Mathlib/Algebra/Star/NonUnitalSubalgebra.lean`.

-/


namespace GRWTSK.Algebra.SubStarSemigroup.Variant8bcaee7a2be5572da5a5442e18f1a212a482a0b5a70129b87778568133c63dc3

@[expose] public section

universe v w w'

variable {A : Type v}

/-- A sub star semigroup is a subset of a magma which is closed under the `star`. -/
structure SubStarSemigroup (M : Type v) [Mul M] [Star M] : Type v
    extends Subsemigroup M where
  /-- The `carrier` of a `StarSubset` is closed under the `star` operation. -/
  star_mem' : ∀ {a : M} (_ha : a ∈ carrier), star a ∈ carrier

/-- Reinterpret a `SubStarSemigroup` as a `Subsemigroup`. -/
add_decl_doc SubStarSemigroup.toSubsemigroup

/-- A non-unital star subsemiring is a non-unital subsemiring which also is closed under the
`star` operation. -/
structure NonUnitalStarSubsemiring (R : Type v) [NonUnitalNonAssocSemiring R] [Star R] : Type v
    extends NonUnitalSubsemiring R where
  /-- The `carrier` of a `NonUnitalStarSubsemiring` is closed under the `star` operation. -/
  star_mem' : ∀ {a : R} (_ha : a ∈ carrier), star a ∈ carrier

/-- Reinterpret a `NonUnitalStarSubsemiring` as a `NonUnitalSubsemiring`. -/
add_decl_doc NonUnitalStarSubsemiring.toNonUnitalSubsemiring

section NonUnitalStarSubsemiring

namespace NonUnitalStarSubsemiring

instance instSetLike {R : Type v} [NonUnitalNonAssocSemiring R] [Star R] :
    SetLike (NonUnitalStarSubsemiring R) R where
  coe {s} := s.carrier
  coe_injective p q h := by cases p; cases q; congr; exact SetLike.coe_injective h

initialize_simps_projections NonUnitalStarSubsemiring (carrier → coe, as_prefix coe)

variable {R : Type v} [NonUnitalNonAssocSemiring R] [StarRing R]

/-- The actual `NonUnitalStarSubsemiring` obtained from an element of a type satisfying
`NonUnitalSubsemiringClass` and `StarMemClass`. -/
@[simps]
def ofClass {S R : Type*} [NonUnitalNonAssocSemiring R] [StarRing R] [SetLike S R]
    [NonUnitalSubsemiringClass S R] [StarMemClass S R] (s : S) : NonUnitalStarSubsemiring R where
  carrier := s
  add_mem' := add_mem
  zero_mem' := zero_mem _
  mul_mem' := mul_mem
  star_mem' := star_mem

instance (priority := 100) : CanLift (Set R) (NonUnitalStarSubsemiring R) (↑)
    (fun s ↦ 0 ∈ s ∧ (∀ {x y}, x ∈ s → y ∈ s → x + y ∈ s) ∧ (∀ {x y}, x ∈ s → y ∈ s → x * y ∈ s) ∧
      ∀ {x}, x ∈ s → star x ∈ s)
    where
  prf s h :=
    ⟨ { carrier := s
        zero_mem' := h.1
        add_mem' := h.2.1
        mul_mem' := h.2.2.1
        star_mem' := h.2.2.2 },
      rfl ⟩

instance instNonUnitalSubsemiringClass :
    NonUnitalSubsemiringClass (NonUnitalStarSubsemiring R) R where
  add_mem {s} := s.add_mem'
  mul_mem {s} := s.mul_mem'
  zero_mem {s} := s.zero_mem'

instance instStarMemClass : StarMemClass (NonUnitalStarSubsemiring R) R where
  star_mem {s} := s.star_mem'

theorem mem_carrier {s : NonUnitalStarSubsemiring R} {x : R} : x ∈ s.carrier ↔ x ∈ s :=
  Iff.rfl

/-- Copy of a non-unital star subsemiring with a new `carrier` equal to the old one.
Useful to fix definitional equalities. -/
protected def copy (S : NonUnitalStarSubsemiring R) (s : Set R) (hs : s = ↑S) :
    NonUnitalStarSubsemiring R :=
  { S.toNonUnitalSubsemiring.copy s hs with
    star_mem' := fun {x} (hx : x ∈ s) => by
      change star x ∈ s
      rw [hs] at hx ⊢
      exact S.star_mem' hx }

@[simp, norm_cast]
theorem coe_copy (S : NonUnitalStarSubsemiring R) (s : Set R) (hs : s = ↑S) :
    (S.copy s hs : Set R) = s :=
  rfl

theorem copy_eq (S : NonUnitalStarSubsemiring R) (s : Set R) (hs : s = ↑S) : S.copy s hs = S :=
  SetLike.coe_injective hs

section Center

variable (R)

/-- The center of a non-unital non-associative semiring `R` is the set of elements that
commute and associate with everything in `R`, here realized as a non-unital star
subsemiring. -/
def center (R) [NonUnitalNonAssocSemiring R] [StarRing R] : NonUnitalStarSubsemiring R where
  toNonUnitalSubsemiring := NonUnitalSubsemiring.center R
  star_mem' := Set.star_mem_center

end Center

end NonUnitalStarSubsemiring

end NonUnitalStarSubsemiring
```
