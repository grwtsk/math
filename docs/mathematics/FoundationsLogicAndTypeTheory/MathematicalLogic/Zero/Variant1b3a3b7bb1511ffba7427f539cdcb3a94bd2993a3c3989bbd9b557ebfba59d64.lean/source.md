# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `999ee742a383344864ee93f801ebc5edb65aa3cf` · SHA-256 `103313a93afe6d45d5876d1afcd490363821b3788e702b6b56056af31193a282`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsZeroOfSubsingleton.Variantdf61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsZeroOfSubsingleton.Variantdf61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655","mathematical_subject":"Logic.Foundations","original_sha256":"df61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Zero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.Grp.Basic
import Mathlib.CategoryTheory.Limits.Shapes.ZeroObjects

/-!
# The category of (commutative) (additive) groups has a zero object.

`AddCommGroup` also has zero morphisms. For definitional reasons, we infer this from preadditivity
rather than from the existence of a zero object.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsZeroOfSubsingleton.Variantdf61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655

open CategoryTheory

open CategoryTheory.Limits

universe u

namespace Grp

@[to_additive]
theorem isZero_of_subsingleton (G : Grp) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddGrp.hasZeroObject]
instance : HasZeroObject Grp :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

end Grp

namespace CommGrp

@[to_additive]
theorem isZero_of_subsingleton (G : CommGrp) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddCommGrp.hasZeroObject]
instance : HasZeroObject CommGrp :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

end CommGrp
```
