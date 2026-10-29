-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormCastReal.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/

import Mathlib.Analysis.Normed.Group.Int
import Mathlib.Topology.Instances.Rat

/-! # ℚ as a normed group -/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690

namespace Rat

instance instNormedAddCommGroup : NormedAddCommGroup ℚ where
  norm r := ‖(r : ℝ)‖
  dist_eq r₁ r₂ := by simp only [Rat.dist_eq, norm, Rat.cast_sub]

@[norm_cast, simp 1001]
-- Porting note: increase priority to prevent the left-hand side from simplifying
theorem norm_cast_real (r : ℚ) : ‖(r : ℝ)‖ = ‖r‖ :=
  rfl

@[norm_cast, simp]
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690.Int.norm_cast_rat (m : ℤ) : ‖(m : ℚ)‖ = ‖m‖ := by
  rw [← Rat.norm_cast_real, ← Int.norm_cast_real]; congr 1

end Rat
