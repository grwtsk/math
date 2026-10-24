-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Divisibility/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/

import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Data.Fintype.Defs

/-!
# Divisibility in finite types
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e

variable {M : Type*} [Semigroup M]

instance [Fintype M] [DecidableEq M] (a b : M) : Decidable (a ∣ b) :=
  decidable_of_iff (∃ c, b = a * c) dvd_def

