-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AddMonoidEndNatCastDef.Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AddMonoidEndNatCastDef.Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Module/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Nathaniel Thomas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Hom.End
public import Mathlib.Algebra.Module.NatInt

/-!
# Module structure and endomorphisms

In this file, we define `Module.toAddMonoidEnd`, which is `(•)` as a monoid homomorphism.
We use this to prove some results on scalar multiplication by integers.
-/


namespace GRWTSK.Algebra.LinearAlgebra.AddMonoidEndNatCastDef.Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08

@[expose] public section

assert_not_exists RelIso Multiset Set.indicator Pi.single_smul₀ Field

universe u v

variable {R S M : Type*}

section AddCommMonoid

variable [Semiring R] [AddCommMonoid M] [Module R M] (r s : R) (x : M)

theorem AddMonoid.End.natCast_def (n : ℕ) :
    (↑n : AddMonoid.End M) = DistribMulAction.toAddMonoidEnd ℕ M n :=
  rfl

variable (R M)

set_option backward.isDefEq.respectTransparency false in
/-- `(•)` as an `AddMonoidHom`.

This is a stronger version of `DistribMulAction.toAddMonoidEnd` -/
@[simps! apply_apply]
def Module.toAddMonoidEnd : R →+* AddMonoid.End M :=
  { DistribMulAction.toAddMonoidEnd R M with
    map_zero' := AddMonoidHom.ext fun r => by simp
    map_add' x y :=
      AddMonoidHom.ext fun r => by simp [(AddMonoidHom.add_apply), add_smul] }

/-- A convenience alias for `Module.toAddMonoidEnd` as an `AddMonoidHom`, usually to allow the
use of `AddMonoidHom.flip`. -/
def smulAddHom : R →+ M →+ M :=
  (Module.toAddMonoidEnd R M).toAddMonoidHom

variable {R M}

@[simp]
theorem smulAddHom_apply : smulAddHom R M r x = r • x :=
  rfl

variable {x}

lemma IsAddUnit.smul_left [DistribSMul S M] (hx : IsAddUnit x) (s : S) :
    IsAddUnit (s • x) :=
  hx.map (DistribSMul.toAddMonoidHom M s)

variable {r} (x)

lemma IsAddUnit.smul_right (hr : IsAddUnit r) : IsAddUnit (r • x) :=
  hr.map (AddMonoidHom.flip (smulAddHom R M) x)

end AddCommMonoid

section AddCommGroup

variable (R M) [Semiring R] [AddCommGroup M]

theorem AddMonoid.End.intCast_def (z : ℤ) :
    (↑z : AddMonoid.End M) = DistribMulAction.toAddMonoidEnd ℤ M z :=
  rfl

end AddCommGroup
