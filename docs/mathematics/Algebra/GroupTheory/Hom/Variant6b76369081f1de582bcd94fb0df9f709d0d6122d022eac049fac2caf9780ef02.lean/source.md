# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `099007fe9e7da885ef31e4c22cecc69c4deaad52` · SHA-256 `b1453d839841f3ba136f530deaa2953afcbca13abdff8e9ba1ee440caf12e143`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulApply.Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulApply.Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569","mathematical_subject":"Algebra.Groups","original_sha256":"e6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Module/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Group.Hom.Instances
public import Mathlib.Algebra.GroupWithZero.Action.End
public import Mathlib.Algebra.GroupWithZero.Action.Hom
public import Mathlib.Algebra.Module.End
public import Mathlib.Algebra.Ring.Opposite
public import Mathlib.GroupTheory.GroupAction.DomAct.Basic

/-!
# Bundled Hom instances for module and multiplicative actions

This file defines instances for `Module` on bundled `Hom` types.

These are analogous to the instances in `Algebra.Module.Pi`, but for bundled instead of unbundled
functions.

We also define a bundled versions of `(· • ·)` as `AddMonoidHom.smul`.
-/


namespace GRWTSK.Algebra.GroupTheory.SmulApply.Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569

@[expose] public section

variable {R S M A B : Type*}

namespace ZeroHom

instance instModule [Semiring R] [AddMonoid A] [AddCommMonoid B] [Module R B] :
    Module R (ZeroHom A B) where
  __ : MulActionWithZero _ _ := ZeroHom.instMulActionWithZero
  add_smul _ _ _ := ext fun _ => add_smul _ _ _
  smul_add _ _ _ := ext fun _ => smul_add _ _ _

end ZeroHom

/-! ### Instances for `AddMonoidHom` -/

namespace AddMonoidHom

instance instModule [Semiring R] [AddMonoid A] [AddCommMonoid B] [Module R B] :
    Module R (A →+ B) where
  add_smul _ _ _ := ext fun _ => add_smul _ _ _
  zero_smul _ := ext fun _ => zero_smul _ _

set_option backward.isDefEq.respectTransparency false in
instance instDomMulActModule
    {S M M₂ : Type*} [Semiring S] [AddCommMonoid M] [AddCommMonoid M₂] [Module S M] :
    Module Sᵈᵐᵃ (M →+ M₂) where
  add_smul s s' f := AddMonoidHom.ext fun m ↦ by
    simp_rw [AddMonoidHom.add_apply, DomMulAct.smul_addMonoidHom_apply, ← map_add, ← add_smul]; rfl
  zero_smul _ := AddMonoidHom.ext fun _ ↦ by
    rw [DomMulAct.smul_addMonoidHom_apply]
    -- TODO there should be a simp lemma for `DomMulAct.mk.symm 0`
    simp [DomMulAct.mk, MulOpposite.opEquiv]

end AddMonoidHom

/-!
### Instances for `AddMonoid.End`

These are direct copies of the instances above.
-/

namespace AddMonoid.End

section

variable [Monoid R] [Monoid S] [AddCommMonoid A]

instance instDistribSMul [DistribSMul M A] : DistribSMul M (AddMonoid.End A) :=
  inferInstanceAs <| DistribSMul M (A →+ A)

variable [DistribMulAction R A] [DistribMulAction S A]

instance instDistribMulAction : DistribMulAction R (AddMonoid.End A) :=
  inferInstanceAs <| DistribMulAction R (A →+ A)

@[simp] theorem coe_smul (r : R) (f : AddMonoid.End A) : ⇑(r • f) = r • ⇑f := rfl

theorem smul_apply (r : R) (f : AddMonoid.End A) (x : A) : (r • f) x = r • f x :=
  rfl

instance smulCommClass [SMulCommClass R S A] : SMulCommClass R S (AddMonoid.End A) :=
  AddMonoidHom.instSMulCommClass

instance isScalarTower [SMul R S] [IsScalarTower R S A] : IsScalarTower R S (AddMonoid.End A) :=
  AddMonoidHom.instIsScalarTower

instance isCentralScalar [DistribMulAction Rᵐᵒᵖ A] [IsCentralScalar R A] :
    IsCentralScalar R (AddMonoid.End A) :=
  AddMonoidHom.instIsCentralScalar

end

instance instModule [Semiring R] [AddCommMonoid A] [Module R A] : Module R (AddMonoid.End A) :=
  inferInstanceAs <| Module R (A →+ A)

/-- The tautological action by `AddMonoid.End α` on `α`.

This generalizes `AddMonoid.End.applyDistribMulAction`. -/
instance applyModule [AddCommMonoid A] : Module (AddMonoid.End A) A where
  add_smul _ _ _ := rfl
  zero_smul _ := rfl

end AddMonoid.End

/-! ### Miscellaneous morphisms -/

namespace AddMonoidHom

/-- Scalar multiplication as a biadditive monoid homomorphism. We need `M` to be commutative
to have addition on `M →+ M`. -/
protected def smul [Semiring R] [AddCommMonoid M] [Module R M] : R →+ M →+ M :=
  (Module.toAddMonoidEnd R M).toAddMonoidHom

@[simp] theorem coe_smul' [Semiring R] [AddCommMonoid M] [Module R M] :
    ⇑(.smul : R →+ M →+ M) = DistribSMul.toAddMonoidHom _ := rfl

end AddMonoidHom
```
