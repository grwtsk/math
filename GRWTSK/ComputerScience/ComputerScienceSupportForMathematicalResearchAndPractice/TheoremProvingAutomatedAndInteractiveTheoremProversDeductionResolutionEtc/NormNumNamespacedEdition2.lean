-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormNum.Variant4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NormNum.Variant4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NormNum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: euprunin
-/

import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.OfScientific
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.DivMod
import Mathlib.Data.Rat.Cast.Order

/-!
We register `norm_num` with the `hint` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormNum.Variant4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23

register_hint norm_num
