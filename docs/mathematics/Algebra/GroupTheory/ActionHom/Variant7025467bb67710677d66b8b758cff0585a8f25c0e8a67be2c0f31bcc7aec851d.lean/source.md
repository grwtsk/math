# Complete source: GRWTSK.Algebra.GroupTheory.ActionHom.Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `378be8c21cf9088cc89c91deb09f52c1c8221504` · SHA-256 `acf00fdfbe7461c215cbbd5e315378fd450ebddc8be9790369b3acef92cfb639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulMulActionHomApply.Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulMulActionHomApply.Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a","mathematical_subject":"Algebra.Groups","original_sha256":"fbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/GroupAction/DomAct/ActionHom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.GroupTheory.GroupAction.DomAct.Basic
import Mathlib.GroupTheory.GroupAction.Hom
/-!
# Action of `Mᵈᵐᵃ` on `α →[N] β` and `A →+[N] B`

In this file we define action of `DomMulAct M = Mᵈᵐᵃ` on `α →[N] β` and on `A →+[N] B`. At the
time of writing, these homomorphisms are not widely used in the library, so we put these instances
into a separate file, not with the definition of `DomMulAct`.

## TODO

Add left actions of, e.g., `M` on `α →[N] β` to `Mathlib/Algebra/Hom/GroupAction.lean` and
`SMulCommClass` instances saying that left and right actions commute.
-/


namespace GRWTSK.Algebra.GroupTheory.SmulMulActionHomApply.Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a

namespace DomMulAct

section MulActionSemiHom

section SMul

variable {M α N β : Type*}
variable [SMul M α] [SMul N α] [SMulCommClass M N α] [SMul N β]

instance : SMul Mᵈᵐᵃ (α →[N] β) where
  smul c f := f.comp (SMulCommClass.toMulActionHom _ _ (mk.symm c))

instance {M' : Type*} [SMul M' α] [SMulCommClass M' N α] [SMulCommClass M M' α] :
    SMulCommClass Mᵈᵐᵃ M'ᵈᵐᵃ (α →[N] β) :=
  DFunLike.coe_injective.smulCommClass (fun _ _ ↦ rfl) (fun _ _ ↦ rfl)

theorem smul_mulActionHom_apply (c : Mᵈᵐᵃ) (f : α →[N] β) (a : α) :
    (c • f) a = f (mk.symm c • a) :=
  rfl

@[simp]
theorem mk_smul_mulActionHom_apply (c : M) (f : α →[N] β) (a : α) : (mk c • f) a = f (c • a) := rfl

end SMul

instance {M α N β : Type*} [Monoid M] [MulAction M α] [SMul N α] [SMulCommClass M N α] [SMul N β] :
    MulAction Mᵈᵐᵃ (α →[N] β) :=
  DFunLike.coe_injective.mulAction _ fun _ _ ↦ rfl

end MulActionSemiHom

section DistribMulActionHom

section SMul

variable {M N A B : Type*} [AddMonoid A] [DistribSMul M A] [Monoid N] [AddMonoid B]
  [DistribMulAction N A] [SMulCommClass M N A] [DistribMulAction N B]

instance : SMul Mᵈᵐᵃ (A →+[N] B) where
  smul c f := f.comp (SMulCommClass.toDistribMulActionHom _ _ (mk.symm c))

instance {M' : Type*} [DistribSMul M' A] [SMulCommClass M' N A] [SMulCommClass M M' A] :
    SMulCommClass Mᵈᵐᵃ M'ᵈᵐᵃ (A →+[N] B) :=
  DFunLike.coe_injective.smulCommClass (fun _ _ ↦ rfl) (fun _ _ ↦ rfl)

theorem smul_mulDistribActionHom_apply (c : Mᵈᵐᵃ) (f : A →+[N] B) (a : A) :
    (c • f) a = f (mk.symm c • a) :=
  rfl

@[simp]
theorem mk_smul_mulDistribActionHom_apply (c : M) (f : A →+[N] B) (a : A) :
    (mk c • f) a = f (c • a) := rfl

end SMul

instance {M N A B : Type*} [Monoid M] [AddMonoid A] [DistribMulAction M A] [Monoid N] [AddMonoid B]
    [DistribMulAction N A] [SMulCommClass M N A] [DistribMulAction N B] :
    MulAction Mᵈᵐᵃ (A →+[N] B) :=
  DFunLike.coe_injective.mulAction _ fun _ _ ↦ rfl

end DistribMulActionHom

end DomMulAct
```
