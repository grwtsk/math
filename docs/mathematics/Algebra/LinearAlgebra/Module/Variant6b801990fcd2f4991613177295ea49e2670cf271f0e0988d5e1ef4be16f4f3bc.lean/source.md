# Complete source: GRWTSK.Algebra.LinearAlgebra.Module.Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba7db9bb5a1968affdf5f99759b773c33846e2ad` · SHA-256 `01e91e7ae74592f67e38e63a0b0a6dcf07bdc3946b01b967bae68bce159c1efd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsScalarTower.Variant371a54e6d552674b738cbdfffca4152c5611739b04d4184a28b5dcee3db07038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"371a54e6d552674b738cbdfffca4152c5611739b04d4184a28b5dcee3db07038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsScalarTower.Variant371a54e6d552674b738cbdfffca4152c5611739b04d4184a28b5dcee3db07038","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"371a54e6d552674b738cbdfffca4152c5611739b04d4184a28b5dcee3db07038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/FunLike/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Data.FunLike.Group
public import Mathlib.Algebra.Module.Torsion.Pi

/-! # Module instances for `FunLike` types
In this file we define various instances related to modules for `FunLike` types.

Note that currently, these are not registered as instances, but only `abbrev`s to avoid long
typeclass searches.

## TODO:
Add definitions and API for the coercion being a linear map, similar to `FunLike.coeMonoidHom`,
and related definitions.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsScalarTower.Variant371a54e6d552674b738cbdfffca4152c5611739b04d4184a28b5dcee3db07038

public section

variable {M M' F α β : Type*} [i : FunLike F α β]

namespace FunLike

section SMulInstances

variable [SMul M β] [SMul M' β] [SMul M F] [SMul M' F] [IsSMulApply M F α β] [IsSMulApply M' F α β]

include i in
protected theorem isScalarTower [SMul M M'] [IsScalarTower M M' β] : IsScalarTower M M' F where
  smul_assoc _ _ _ := by apply DFunLike.ext; simp

include i in
protected theorem smulCommClass [SMulCommClass M M' β] : SMulCommClass M M' F where
  smul_comm _ _ _ := by apply DFunLike.ext; simp [smul_comm]

end SMulInstances

section ModuleInstance

include i in
protected theorem isCentralScalar [SMul M F] [SMul Mᵐᵒᵖ F] [SMul M β] [SMul Mᵐᵒᵖ β]
    [IsCentralScalar M β] [IsSMulApply M F α β] [IsSMulApply Mᵐᵒᵖ F α β] :
    IsCentralScalar M F where
  op_smul_eq_smul a b := by apply DFunLike.ext; simp [op_smul_eq_smul]

/-- A `FunLike` type with scalar multiplication that satisfies `(m • f) x = m • f x` and
`0 x = 0`, `(f + g) x = f x + g x` is a `DistribSMul` if `β` is a `DistribSMul`. -/
protected abbrev distribSMul [AddZeroClass β] [AddZeroClass F] [DistribSMul M β]
    [SMul M F] [IsZeroApply F α β] [IsAddApply F α β] [IsSMulApply M F α β] :
    DistribSMul M F :=
  DFunLike.coe_injective.distribSMul (coeAddMonoidHom F α β) FunLike.coe_smul

/-- A `FunLike` type with scalar multiplication that satisfies `(m • f) x = m • f x`
is a `MulAction` if `β` is a `MulAction`. -/
@[to_additive /-- A `FunLike` type with scalar multiplication that satisfies `(m • f) x = m • f x`
is an `AddAction` if `β` is an `AddAction`. -/]
protected abbrev mulAction [SMul M F] [Monoid M] [MulAction M β] [IsSMulApply M F α β] :
    MulAction M F :=
  DFunLike.coe_injective.mulAction _ FunLike.coe_smul

/-- A `FunLike` type with scalar multiplication that satisfies `(m • f) x = m • f x`, `0 x = 0`,
`(f + g) x = f x + g x` is a `DistribMulAction` if `β` is a `DistribMulAction`. -/
protected abbrev distribMulAction [Monoid M] [AddMonoid β] [AddMonoid F] [DistribMulAction M β]
    [SMul M F] [IsZeroApply F α β] [IsAddApply F α β] [IsSMulApply M F α β] :
    DistribMulAction M F :=
  DFunLike.coe_injective.distribMulAction (coeAddMonoidHom F α β) FunLike.coe_smul

variable [Semiring M] [AddCommMonoid β] [Module M β] [AddCommMonoid F]

/-- A `FunLike` type is a `Module` if `β` is a `Module`. -/
protected abbrev module [IsZeroApply F α β] [IsAddApply F α β] [SMul M F] [IsSMulApply M F α β] :
    Module M F :=
  coeAddHom_injective.module M (coeAddMonoidHom F α β) coe_smul

protected theorem moduleIsTorsionFree [Module M F] [IsSMulApply M F α β]
    [Module.IsTorsionFree M β] : Module.IsTorsionFree M F :=
  DFunLike.coe_injective.moduleIsTorsionFree _ FunLike.coe_smul

end ModuleInstance

end FunLike
```
