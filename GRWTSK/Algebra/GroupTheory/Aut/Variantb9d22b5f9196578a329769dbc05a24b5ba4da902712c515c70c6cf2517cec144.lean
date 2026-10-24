-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.RingAut.Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.RingAut.Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97","mathematical_subject":"Algebra.Groups","original_sha256":"2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Aut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Group.End
import Mathlib.Algebra.Ring.Equiv

/-!
# Ring automorphisms

This file defines the automorphism group structure on `RingAut R := RingEquiv R R`.

## Implementation notes

The definition of multiplication in the automorphism group agrees with function composition,
multiplication in `Equiv.Perm`, and multiplication in `CategoryTheory.End`, but not with
`CategoryTheory.comp`.

## Tags

ring aut
-/


namespace GRWTSK.Algebra.GroupTheory.RingAut.Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97

variable (R : Type*) [Mul R] [Add R]

/-- The group of ring automorphisms. -/
abbrev RingAut := RingEquiv R R

namespace RingAut

/-- The group operation on automorphisms of a ring is defined by
`fun g h => RingEquiv.trans h g`.
This means that multiplication agrees with composition, `(g*h)(x) = g (h x)`. -/
instance : Group (RingAut R) where
  mul g h := RingEquiv.trans h g
  one := RingEquiv.refl R
  inv := RingEquiv.symm
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl
  inv_mul_cancel := RingEquiv.self_trans_symm

instance : Inhabited (RingAut R) :=
  ⟨1⟩

/-- Monoid homomorphism from ring automorphisms to additive automorphisms. -/
def toAddAut : RingAut R →* AddAut R where
  toFun := RingEquiv.toAddEquiv
  map_one' := rfl
  map_mul' _ _ := rfl

/-- Monoid homomorphism from ring automorphisms to multiplicative automorphisms. -/
def toMulAut : RingAut R →* MulAut R where
  toFun := RingEquiv.toMulEquiv
  map_one' := rfl
  map_mul' _ _ := rfl

/-- Monoid homomorphism from ring automorphisms to permutations. -/
def toPerm : RingAut R →* Equiv.Perm R where
  toFun := RingEquiv.toEquiv
  map_one' := rfl
  map_mul' _ _ := rfl

end RingAut
