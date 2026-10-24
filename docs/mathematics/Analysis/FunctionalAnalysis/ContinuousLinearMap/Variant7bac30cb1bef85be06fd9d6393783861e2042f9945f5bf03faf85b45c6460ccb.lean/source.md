# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearMap.Variant7bac30cb1bef85be06fd9d6393783861e2042f9945f5bf03faf85b45c6460ccb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f39122158a1f260cbe59d5242615ad77d05c6606` · SHA-256 `9679e2a244edec8beafa411cbd0f1c86ceede0208e19a9870b891424e0c60268`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Classes.Variant736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Classes.Variant736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/CStarAlgebra/ContinuousLinearMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-! # `E →L[ℂ] E` as a C⋆-algebra

We place this here because, for reasons related to the import hierarchy, it should not be placed
in earlier files.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.Classes.Variant736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
noncomputable
instance {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E] :
    CStarAlgebra (E →L[ℂ] E) where
  norm_mul_self_le := CStarRing.norm_mul_self_le
```
