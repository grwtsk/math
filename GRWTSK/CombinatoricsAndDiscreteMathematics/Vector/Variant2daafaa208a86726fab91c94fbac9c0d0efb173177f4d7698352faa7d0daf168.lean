-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variante21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Vector.Variante21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finite/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.Vector

/-!
# Finiteness of vector types
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variante21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec

variable {α : Type*}

instance List.Vector.finite [Finite α] {n : ℕ} : Finite (Vector α n) := by
  haveI := Fintype.ofFinite α
  infer_instance

instance [Finite α] {n : ℕ} : Finite (Sym α n) := by
  classical
  haveI := Fintype.ofFinite α
  infer_instance
