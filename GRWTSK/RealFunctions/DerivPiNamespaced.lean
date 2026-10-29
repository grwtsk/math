-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtUpdate.Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivAtUpdate.Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f","mathematical_subject":"Analysis.Calculus","original_sha256":"50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Deriv/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Heather Macbeth
-/
import Mathlib.Analysis.Calculus.FDeriv.Pi
import Mathlib.Analysis.Calculus.Deriv.Basic

/-!
# One-dimensional derivatives on pi-types.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtUpdate.Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f

variable {𝕜 ι : Type*} [DecidableEq ι] [Fintype ι] [NontriviallyNormedField 𝕜]

theorem hasDerivAt_update (x : ι → 𝕜) (i : ι) (y : 𝕜) :
    HasDerivAt (Function.update x i) (Pi.single i (1 : 𝕜)) y := by
  convert (hasFDerivAt_update x y).hasDerivAt
  ext z j
  rw [Pi.single, Function.update_apply]
  split_ifs with h
  · simp [h]
  · simp [Pi.single_eq_of_ne h]

theorem hasDerivAt_single (i : ι) (y : 𝕜) :
    HasDerivAt (Pi.single (M := fun _ ↦ 𝕜) i) (Pi.single i (1 : 𝕜)) y :=
  hasDerivAt_update 0 i y

theorem deriv_update (x : ι → 𝕜) (i : ι) (y : 𝕜) :
    deriv (Function.update x i) y = Pi.single i (1 : 𝕜) :=
  (hasDerivAt_update x i y).deriv

theorem deriv_single (i : ι) (y : 𝕜) :
    deriv (Pi.single (M := fun _ ↦ 𝕜) i) y = Pi.single i (1 : 𝕜) :=
  deriv_update 0 i y
