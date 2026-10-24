-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Init
import Aesop
import Qq

/-!
# Aesop rule set for finsets

This file defines `finsetNonempty`, an aesop rule set to prove that a given finset is nonempty.
-/

-- `finsetNonempty` rules try to prove that a given finset is nonempty,
-- for use in positivity extensions.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5

declare_aesop_rule_sets [finsetNonempty] (default := true)

open Qq Lean Meta
