-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MkSmul.Varianta84e6bf2b643d942c3fd010395ac0dea9de3fdfb3a73e6471ac5a3cba6a6e11d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a84e6bf2b643d942c3fd010395ac0dea9de3fdfb3a73e6471ac5a3cba6a6e11d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MkSmul.Varianta84e6bf2b643d942c3fd010395ac0dea9de3fdfb3a73e6471ac5a3cba6a6e11d","mathematical_subject":"Algebra.Groups","original_sha256":"a84e6bf2b643d942c3fd010395ac0dea9de3fdfb3a73e6471ac5a3cba6a6e11d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Subgroup/Actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Group.Submonoid.DistribMulAction
public import Mathlib.GroupTheory.Subgroup.Center

/-!
# Actions by `Subgroup`s

These are just copies of the definitions about `Submonoid` starting from `Submonoid.mulAction`.

## Tags
subgroup, subgroups

-/


namespace GRWTSK.Algebra.GroupTheory.MkSmul.Varianta84e6bf2b643d942c3fd010395ac0dea9de3fdfb3a73e6471ac5a3cba6a6e11d

public section


namespace Subgroup
variable {G α β : Type*} [Group G]

section MulAction
variable [MulAction G α] {S : Subgroup G}

/-- This shortcut instance provides a speedup. -/
@[to_additive /-- This shortcut instance provides a speedup. -/]
instance : MulAction S α := inferInstance

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

open MonoidHom in
lemma MonoidWithZeroHom.comap_mker {M N P : Type*} [MulZeroOneClass M] [MulZeroOneClass N]
    [MulZeroOneClass P] (g : N →*₀ P) (f : M →*₀ N) :
    Submonoid.comap f (mker g) = mker (g.comp f) := rfl
