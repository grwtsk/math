-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variantc309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeprecatedModule.Variantc309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
This is the `Linter`s file: it imports files defining linters.
Most syntax linters, in particular the ones enabled by default, are imported in `Mathlib.Init`;
this file contains all linters not imported in that file.

This file is ignored by `shake`:
* it is in `ignoreAll`, meaning that all its imports are considered necessary;
* it is in `ignoreImport`, meaning that where it is imported, it is considered necessary.
-/

import Mathlib.Tactic.Linter.DeprecatedModule
import Mathlib.Tactic.Linter.HaveLetLinter
import Mathlib.Tactic.Linter.MinImports
import Mathlib.Tactic.Linter.PPRoundtrip
import Mathlib.Tactic.Linter.UpstreamableDecl

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variantc309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740

