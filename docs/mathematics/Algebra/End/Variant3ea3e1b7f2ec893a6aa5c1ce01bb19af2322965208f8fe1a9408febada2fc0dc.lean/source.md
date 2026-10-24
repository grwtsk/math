# Complete source: GRWTSK.Algebra.End.Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1566356482d446eef0ae539904cd53629fb40564` · SHA-256 `9619f7b418fbfee438ad150d084a1f94b2d5f9c0ee483c9c3d4f668dc3f02247`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SmulDef.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"effb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SmulDef.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"effb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Ring.Action.Group
import Mathlib.Algebra.Ring.Aut

/-!
# Ring automorphisms

This file defines the automorphism group structure on `RingAut R := RingEquiv R R`.

## Implementation notes

The definition of multiplication in the automorphism group agrees with function composition,
multiplication in `Equiv.Perm`, and multiplication in `CategoryTheory.End`, but not with
`CategoryTheory.comp`.

This file is kept separate from `Mathlib/Algebra/Ring/Equiv.lean` so that
`Mathlib/GroupTheory/Perm.lean` is free to use equivalences (and other files that use them) before
the group structure is defined.

## Tags

ring aut
-/


namespace GRWTSK.Algebra.SmulDef.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b

namespace RingAut
variable {G R : Type*} [Group G] [Semiring R]

/-- The tautological action by the group of automorphism of a ring `R` on `R`. -/
instance applyMulSemiringAction :
    MulSemiringAction (RingAut R) R where
  smul := (· <| ·)
  smul_zero := RingEquiv.map_zero
  smul_add := RingEquiv.map_add
  smul_one := RingEquiv.map_one
  smul_mul := RingEquiv.map_mul
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp]
protected theorem smul_def (f : RingAut R) (r : R) : f • r = f r :=
  rfl

instance apply_faithfulSMul : FaithfulSMul (RingAut R) R :=
  ⟨RingEquiv.ext⟩

variable (G R)

/-- Each element of the group defines a ring automorphism.

This is a stronger version of `DistribMulAction.toAddAut` and
`MulDistribMulAction.toMulAut`. -/
@[simps]
def _root_.GRWTSK.Algebra.SmulDef.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.MulSemiringAction.toRingAut [MulSemiringAction G R] :
    G →* RingAut R where
  toFun := MulSemiringAction.toRingEquiv G R
  map_mul' g h := RingEquiv.ext <| mul_smul g h
  map_one' := RingEquiv.ext <| one_smul _

end RingAut
```
