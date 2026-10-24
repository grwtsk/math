# Complete source: GRWTSK.Algebra.UniversalAlgebra.Subobject.Variant1daa1af2d04f0d2f07e7bb142e74fbfd6ff12bbab20aca3c46c9cf4190651bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d5bc646c1698df6f99e4e6a658c3a10953ce8cf` · SHA-256 `af27492af54852d8447ea8ce73237fe7f79934ac7583f577cf60ad9b51502eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ZModuleEquivalence.Varianta73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ZModuleEquivalence.Varianta73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Subobject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.ZModuleEquivalence
import Mathlib.Algebra.Category.ModuleCat.Subobject

/-!
# The category of abelian groups is well-powered
-/



namespace GRWTSK.Algebra.UniversalAlgebra.ZModuleEquivalence.Varianta73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8

open CategoryTheory

universe u

namespace AddCommGrp

instance wellPowered_addCommGrp : WellPowered.{u} AddCommGrp.{u} :=
  wellPowered_of_equiv (forget₂ (ModuleCat.{u} ℤ) AddCommGrp.{u}).asEquivalence

end AddCommGrp
```
