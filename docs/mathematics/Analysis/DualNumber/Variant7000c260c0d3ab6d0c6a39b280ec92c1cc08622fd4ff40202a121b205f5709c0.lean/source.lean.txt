-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ExpEps.Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExpEps.Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/DualNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Analysis.NormedSpace.TrivSqZeroExt


namespace GRWTSK.Analysis.ExpEps.Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0

#align_import analysis.normed_space.dual_number from "leanprover-community/mathlib"@"806c0bb86f6128cfa2f702285727518eb5244390"

/-!
# Results on `DualNumber R` related to the norm

These are just restatements of similar statements about `TrivSqZeroExt R M`.

## Main results

* `exp_eps`

-/


namespace DualNumber

open TrivSqZeroExt

variable (𝕜 : Type*) {R : Type*}

variable [IsROrC 𝕜] [NormedCommRing R] [NormedAlgebra 𝕜 R]

variable [TopologicalRing R] [CompleteSpace R] [T2Space R]

@[simp]
theorem exp_eps : exp 𝕜 (eps : DualNumber R) = 1 + eps :=
  exp_inr _ _
#align dual_number.exp_eps DualNumber.exp_eps

@[simp]
theorem exp_smul_eps (r : R) : exp 𝕜 (r • eps : DualNumber R) = 1 + r • eps := by
  rw [eps, ← inr_smul, exp_inr, Nat.cast_one]
#align dual_number.exp_smul_eps DualNumber.exp_smul_eps

end DualNumber
