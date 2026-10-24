# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triple.Variant3058b5b4a0df997867d3ac87bedb1b0fe551f616709395a149ccbe8293b0e4ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2451c80edebb0a042da19bfcfd198c77e498c326` · SHA-256 `d85c6a26a899c90fb59f70f72628a967b22e2296b6e3ea8480d2329024bbf5d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIsoUnitIffIsIsoCounit.Variant0b550a825528bcc55b0c1c0e639c304103d502b09a280cab3ae82e2ae3bc5d93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b550a825528bcc55b0c1c0e639c304103d502b09a280cab3ae82e2ae3bc5d93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsIsoUnitIffIsIsoCounit.Variant0b550a825528bcc55b0c1c0e639c304103d502b09a280cab3ae82e2ae3bc5d93","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b550a825528bcc55b0c1c0e639c304103d502b09a280cab3ae82e2ae3bc5d93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Adjunction/Triple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Adjunction.Unique
import Mathlib.CategoryTheory.Monad.Adjunction
/-!

# Adjoint triples

This file concerns adjoint triples `F ⊣ G ⊣ H` of functors `F H : C ⥤ D`, `G : D ⥤ C`.

Currently, the only result is that `F` is fully faithful if and only if `H` is fully faithful.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIsoUnitIffIsIsoCounit.Variant0b550a825528bcc55b0c1c0e639c304103d502b09a280cab3ae82e2ae3bc5d93

namespace CategoryTheory.Adjunction

variable {C D : Type*} [Category C] [Category D]
variable {F H : C ⥤ D} {G : D ⥤ C}
variable (adj₁ : F ⊣ G) (adj₂ : G ⊣ H)

lemma isIso_unit_iff_isIso_counit : IsIso adj₁.unit ↔ IsIso adj₂.counit := by
  let adj : F ⋙ G ⊣ H ⋙ G := adj₁.comp adj₂
  constructor
  · intro h
    let idAdj : 𝟭 C ⊣ H ⋙ G := adj.ofNatIsoLeft (asIso adj₁.unit).symm
    exact adj₂.isIso_counit_of_iso (idAdj.rightAdjointUniq id)
  · intro h
    let adjId : F ⋙ G ⊣ 𝟭 C := adj.ofNatIsoRight (asIso adj₂.counit)
    exact adj₁.isIso_unit_of_iso (adjId.leftAdjointUniq id)

/--
Given an adjoint triple `F ⊣ G ⊣ H`, the left adjoint `F` is fully faithful if and only if the
right adjoint `H` is fully faithful.
-/
noncomputable def fullyFaithfulEquiv : F.FullyFaithful ≃ H.FullyFaithful where
  toFun h :=
    haveI := h.full
    haveI := h.faithful
    haveI : IsIso adj₂.counit := by
      rw [← adj₁.isIso_unit_iff_isIso_counit adj₂]
      infer_instance
    adj₂.fullyFaithfulROfIsIsoCounit
  invFun h :=
    haveI := h.full
    haveI := h.faithful
    haveI : IsIso adj₁.unit := by
      rw [adj₁.isIso_unit_iff_isIso_counit adj₂]
      infer_instance
    adj₁.fullyFaithfulLOfIsIsoUnit
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _

end CategoryTheory.Adjunction
```
