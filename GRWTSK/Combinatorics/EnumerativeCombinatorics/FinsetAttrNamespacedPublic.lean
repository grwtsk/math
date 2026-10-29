-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantf6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Frontend.Variantf6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Init
public import Aesop.Frontend
public import Aesop.Frontend.Basic

/-!
# Aesop rule set for finsets

This file defines `finsetNonempty`, an aesop rule set to prove that a given finset is nonempty.
-/

-- `finsetNonempty` rules try to prove that a given finset is nonempty,
-- for use in positivity extensions.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantf6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281

declare_aesop_rule_sets [finsetNonempty] (default := true)
