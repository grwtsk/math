-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant734e1e7a8e8f246480ce12a04c08bd38594dc34ef884b4a9c486b3bf3eb3c21a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"734e1e7a8e8f246480ce12a04c08bd38594dc34ef884b4a9c486b3bf3eb3c21a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ContDiff.Variant734e1e7a8e8f246480ce12a04c08bd38594dc34ef884b4a9c486b3bf3eb3c21a","mathematical_subject":"Analysis.Calculus","original_sha256":"734e1e7a8e8f246480ce12a04c08bd38594dc34ef884b4a9c486b3bf3eb3c21a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Calculus/AffineMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.NormedSpace.ContinuousAffineMap
import Mathlib.Analysis.Calculus.ContDiff


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant734e1e7a8e8f246480ce12a04c08bd38594dc34ef884b4a9c486b3bf3eb3c21a

#align_import analysis.calculus.affine_map from "leanprover-community/mathlib"@"839b92fedff9981cf3fe1c1f623e04b0d127f57c"

/-!
# Smooth affine maps

This file contains results about smoothness of affine maps.

## Main definitions:

 * `ContinuousAffineMap.contDiff`: a continuous affine map is smooth

-/


namespace ContinuousAffineMap

variable {𝕜 V W : Type*} [NontriviallyNormedField 𝕜]

variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]

variable [NormedAddCommGroup W] [NormedSpace 𝕜 W]

/-- A continuous affine map between normed vector spaces is smooth. -/
theorem contDiff {n : ℕ∞} (f : V →A[𝕜] W) : ContDiff 𝕜 n f := by
  rw [f.decomp]
  apply f.contLinear.contDiff.add
  simp only
  exact contDiff_const
#align continuous_affine_map.cont_diff ContinuousAffineMap.contDiff

end ContinuousAffineMap
