-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/Core/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Core.Extensions

/-!
# Core extension family for the `inclusion` tactic

This file initializes the `core` family of inclusion and hypothesis extensions which are generally
useful and type independent.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf

public meta section

namespace Inclusion

/-- Initialize the `core` inclusion family. -/
initialize coreFamily : InclusionFamily ← registerInclusionFamily `core

end Inclusion
