# Complete source: GRWTSK.Algebra.LinearAlgebra.ULift.Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f3ef8854ebb9f7c40255243e0833f27f95cead` · SHA-256 `d571f99b4f4b3e1f82e5ee20109c2c4d3880c0fd2f84f93ace94d7f3e7d19ca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SmulDef.Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SmulDef.Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.GroupWithZero.ULift
import Mathlib.Algebra.Ring.ULift
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Data.ULift

/-!
# `ULift` instances for module and multiplicative actions

This file defines instances for module, mul_action and related structures on `ULift` types.

(Recall `ULift α` is just a "copy" of a type `α` in a higher universe.)

We also provide `ULift.moduleEquiv : ULift M ≃ₗ[R] M`.
-/



namespace GRWTSK.Algebra.LinearAlgebra.SmulDef.Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da

namespace ULift

universe u v w

variable {R : Type u} {M : Type v} {N : Type w}

@[to_additive]
instance smulLeft [SMul R M] : SMul (ULift R) M :=
  ⟨fun s x => s.down • x⟩

@[to_additive (attr := simp)]
theorem smul_def [SMul R M] (s : ULift R) (x : M) : s • x = s.down • x :=
  rfl

instance isScalarTower [SMul R M] [SMul M N] [SMul R N] [IsScalarTower R M N] :
    IsScalarTower (ULift R) M N :=
  ⟨fun x y z => show (x.down • y) • z = x.down • y • z from smul_assoc _ _ _⟩

instance isScalarTower' [SMul R M] [SMul M N] [SMul R N] [IsScalarTower R M N] :
    IsScalarTower R (ULift M) N :=
  ⟨fun x y z => show (x • y.down) • z = x • y.down • z from smul_assoc _ _ _⟩

instance isScalarTower'' [SMul R M] [SMul M N] [SMul R N] [IsScalarTower R M N] :
    IsScalarTower R M (ULift N) :=
  ⟨fun x y z => show up ((x • y) • z.down) = ⟨x • y • z.down⟩ by rw [smul_assoc]⟩

instance [SMul R M] [SMul Rᵐᵒᵖ M] [IsCentralScalar R M] : IsCentralScalar R (ULift M) :=
  ⟨fun r m => congr_arg up <| op_smul_eq_smul r m.down⟩

@[to_additive]
instance mulAction [Monoid R] [MulAction R M] : MulAction (ULift R) M where
  smul := (· • ·)
  mul_smul _ _ := mul_smul _ _
  one_smul := one_smul _

@[to_additive]
instance mulAction' [Monoid R] [MulAction R M] : MulAction R (ULift M) where
  smul := (· • ·)
  mul_smul := fun _ _ _ => congr_arg ULift.up <| mul_smul _ _ _
  one_smul := fun _ => congr_arg ULift.up <| one_smul _ _

instance smulZeroClass [Zero M] [SMulZeroClass R M] : SMulZeroClass (ULift R) M :=
  { ULift.smulLeft with smul_zero := fun _ => smul_zero _ }

instance smulZeroClass' [Zero M] [SMulZeroClass R M] : SMulZeroClass R (ULift M) where
  smul_zero c := by { ext; simp [smul_zero] }

instance distribSMul [AddZeroClass M] [DistribSMul R M] : DistribSMul (ULift R) M where
  smul_add _ := smul_add _

instance distribSMul' [AddZeroClass M] [DistribSMul R M] : DistribSMul R (ULift M) where
  smul_add c f g := by
    ext
    simp [smul_add]

instance distribMulAction [Monoid R] [AddMonoid M] [DistribMulAction R M] :
    DistribMulAction (ULift R) M :=
  { ULift.mulAction, ULift.distribSMul with }

instance distribMulAction' [Monoid R] [AddMonoid M] [DistribMulAction R M] :
    DistribMulAction R (ULift M) :=
  { ULift.mulAction', ULift.distribSMul' with }

instance mulDistribMulAction [Monoid R] [Monoid M] [MulDistribMulAction R M] :
    MulDistribMulAction (ULift R) M where
  smul_one _ := smul_one _
  smul_mul _ := smul_mul' _

instance mulDistribMulAction' [Monoid R] [Monoid M] [MulDistribMulAction R M] :
    MulDistribMulAction R (ULift M) :=
  { ULift.mulAction' with
    smul_one := fun _ => by
      ext
      simp [smul_one]
    smul_mul := fun _ _ _ => by
      ext
      simp [smul_mul'] }

instance smulWithZero [Zero R] [Zero M] [SMulWithZero R M] : SMulWithZero (ULift R) M :=
  { ULift.smulLeft with
    smul_zero := fun _ => smul_zero _
    zero_smul := zero_smul _ }

instance smulWithZero' [Zero R] [Zero M] [SMulWithZero R M] : SMulWithZero R (ULift M) where
  smul_zero _ := ULift.ext _ _ <| smul_zero _
  zero_smul _ := ULift.ext _ _ <| zero_smul _ _

instance mulActionWithZero [MonoidWithZero R] [Zero M] [MulActionWithZero R M] :
    MulActionWithZero (ULift R) M :=
  { ULift.smulWithZero with
    one_smul := one_smul _
    mul_smul := mul_smul }

instance mulActionWithZero' [MonoidWithZero R] [Zero M] [MulActionWithZero R M] :
    MulActionWithZero R (ULift M) :=
  { ULift.smulWithZero' with
    one_smul := one_smul _
    mul_smul := mul_smul }

instance module [Semiring R] [AddCommMonoid M] [Module R M] : Module (ULift R) M :=
  { ULift.smulWithZero with
    add_smul := fun _ _ => add_smul _ _
    smul_add := smul_add
    one_smul := one_smul _
    mul_smul := mul_smul }

instance module' [Semiring R] [AddCommMonoid M] [Module R M] : Module R (ULift M) :=
  { ULift.smulWithZero' with
    add_smul := fun _ _ _ => ULift.ext _ _ <| add_smul _ _ _
    one_smul := one_smul _
    mul_smul := mul_smul
    smul_add := smul_add }

/-- The `R`-linear equivalence between `ULift M` and `M`.

This is a linear version of `AddEquiv.ulift`. -/
@[simps apply symm_apply]
def moduleEquiv [Semiring R] [AddCommMonoid M] [Module R M] : ULift.{w} M ≃ₗ[R] M where
  toFun := ULift.down
  invFun := ULift.up
  map_smul' _ _ := rfl
  __ := AddEquiv.ulift

end ULift
```
