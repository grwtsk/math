# Complete source: GRWTSK.Algebra.GroupTheory.Actions.Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e68ace75fa748d96fed594d75f1a074ab1145efc` · SHA-256 `df56cf9acb064771a6876e479753d87b6a6aca85bd7ef330b369612adbf8da3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MkSmul.Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MkSmul.Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365","mathematical_subject":"Algebra.Groups","original_sha256":"166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Subgroup/Actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Submonoid.DistribMulAction
import Mathlib.GroupTheory.Subgroup.Center

/-!
# Actions by `Subgroup`s

These are just copies of the definitions about `Submonoid` starting from `Submonoid.mulAction`.

## Tags
subgroup, subgroups

-/



namespace GRWTSK.Algebra.GroupTheory.MkSmul.Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365

namespace Subgroup
variable {G α β : Type*} [Group G]

section MulAction
variable [MulAction G α] {S : Subgroup G}

/-- The action by a subgroup is the action by the underlying group. -/
@[to_additive "The additive action by an add_subgroup is the action by the underlying `AddGroup`. "]
instance instMulAction : MulAction S α := inferInstanceAs (MulAction S.toSubmonoid α)

@[to_additive] lemma smul_def (g : S) (m : α) : g • m = (g : G) • m := rfl

@[to_additive (attr := simp)]
lemma mk_smul (g : G) (hg : g ∈ S) (a : α) : (⟨g, hg⟩ : S) • a = g • a := rfl

end MulAction

@[to_additive]
instance smulCommClass_left [MulAction G β] [SMul α β] [SMulCommClass G α β] (S : Subgroup G) :
    SMulCommClass S α β :=
  S.toSubmonoid.smulCommClass_left

@[to_additive]
instance smulCommClass_right [SMul α β] [MulAction G β] [SMulCommClass α G β] (S : Subgroup G) :
    SMulCommClass α S β :=
  S.toSubmonoid.smulCommClass_right

/-- Note that this provides `IsScalarTower S G G` which is needed by `smul_mul_assoc`. -/
@[to_additive]
instance [SMul α β] [MulAction G α] [MulAction G β] [IsScalarTower G α β] (S : Subgroup G) :
    IsScalarTower S α β :=
  inferInstanceAs (IsScalarTower S.toSubmonoid α β)

@[to_additive]
instance [MulAction G α] [FaithfulSMul G α] (S : Subgroup G) : FaithfulSMul S α :=
  inferInstanceAs (FaithfulSMul S.toSubmonoid α)

/-- The action by a subgroup is the action by the underlying group. -/
instance [AddMonoid α] [DistribMulAction G α] (S : Subgroup G) : DistribMulAction S α :=
  inferInstanceAs (DistribMulAction S.toSubmonoid α)

/-- The action by a subgroup is the action by the underlying group. -/
instance [Monoid α] [MulDistribMulAction G α] (S : Subgroup G) : MulDistribMulAction S α :=
  inferInstanceAs (MulDistribMulAction S.toSubmonoid α)

/-- The center of a group acts commutatively on that group. -/
instance center.smulCommClass_left : SMulCommClass (center G) G G :=
  Submonoid.center.smulCommClass_left

/-- The center of a group acts commutatively on that group. -/
instance center.smulCommClass_right : SMulCommClass G (center G) G :=
  Submonoid.center.smulCommClass_right

end Subgroup
```
