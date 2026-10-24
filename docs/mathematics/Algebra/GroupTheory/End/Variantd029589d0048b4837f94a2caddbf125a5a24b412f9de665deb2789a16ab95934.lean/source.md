# Complete source: GRWTSK.Algebra.GroupTheory.End.Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65262c3361564a1ea8f0c05d5c3673aff8b79a90` · SHA-256 `64a26ac6acdb1fcf0dd1b021c3055315dac9e13d95b884577ac6689e13d7ec5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.NatCastApply.Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.NatCastApply.Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5","mathematical_subject":"Algebra.Groups","original_sha256":"67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Hom/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Kevin Buzzard, Kim Morrison, Johan Commelin, Chris Hughes,
  Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Hom.Instances
import Mathlib.Algebra.Ring.Defs

/-!
# Instances on spaces of monoid and group morphisms

This file does two things involving `AddMonoid.End` and `Ring`.
They are separate, and if someone would like to split this file in two that may be helpful.

* We provide the `Ring` structure on `AddMonoid.End`.
* Results about `AddMonoid.End R` when `R` is a ring.
-/



namespace GRWTSK.Algebra.GroupTheory.NatCastApply.Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5

universe uM

variable {M : Type uM}

namespace AddMonoid.End

instance instAddMonoidWithOne (M) [AddCommMonoid M] : AddMonoidWithOne (AddMonoid.End M) where
  natCast n := n • (1 : AddMonoid.End M)
  natCast_zero := AddMonoid.nsmul_zero _
  natCast_succ n := AddMonoid.nsmul_succ n 1

/-- See also `AddMonoid.End.natCast_def`. -/
@[simp]
lemma natCast_apply [AddCommMonoid M] (n : ℕ) (m : M) : (↑n : AddMonoid.End M) m = n • m := rfl

@[simp] lemma ofNat_apply [AddCommMonoid M] (n : ℕ) [n.AtLeastTwo] (m : M) :
    (ofNat(n) : AddMonoid.End M) m = n • m := rfl

instance instSemiring [AddCommMonoid M] : Semiring (AddMonoid.End M) :=
  { AddMonoid.End.instMonoid M,
    AddMonoidHom.instAddCommMonoid,
    AddMonoid.End.instAddMonoidWithOne M with
    zero_mul := fun _ => AddMonoidHom.ext fun _ => rfl,
    mul_zero := fun _ => AddMonoidHom.ext fun _ => AddMonoidHom.map_zero _,
    left_distrib := fun _ _ _ => AddMonoidHom.ext fun _ => AddMonoidHom.map_add _ _ _,
    right_distrib := fun _ _ _ => AddMonoidHom.ext fun _ => rfl }

instance instRing [AddCommGroup M] : Ring (AddMonoid.End M) :=
  { AddMonoid.End.instSemiring, AddMonoid.End.instAddCommGroup with
    intCast := fun z => z • (1 : AddMonoid.End M),
    intCast_ofNat := natCast_zsmul _,
    intCast_negSucc := negSucc_zsmul _ }

end AddMonoid.End
```
