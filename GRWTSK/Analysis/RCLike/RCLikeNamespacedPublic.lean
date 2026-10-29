-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeromorphicExistsMeromorphicOrderAtNeTopIffForall.Variant08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.MeromorphicExistsMeromorphicOrderAtNeTopIffForall.Variant08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Meromorphic/RCLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
module

public import Mathlib.Analysis.Meromorphic.Order
public import Mathlib.Analysis.RCLike.Basic

/-!
# Meromorphic Functions over the Real and Complex Numbers

This file gathers results on meromorphic functions specifict to the real and complex numbers.
-/


namespace GRWTSK.Analysis.MeromorphicExistsMeromorphicOrderAtNeTopIffForall.Variant08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb

public section

open Set

variable
  {𝕜 : Type*} [RCLike 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/--
If `f` is meromorphic function on `ℝ` or `ℂ`, then there exists a point where a meromorphic function
`f` has finite order iff `f` has finite order at every point.
-/
theorem Meromorphic.exists_meromorphicOrderAt_ne_top_iff_forall {f : 𝕜 → E} (hf : Meromorphic f) :
    (∃ u, meromorphicOrderAt f u ≠ ⊤) ↔ (∀ u, meromorphicOrderAt f u ≠ ⊤) := by
  simpa using (meromorphicOn_univ.2 hf).exists_meromorphicOrderAt_ne_top_iff_forall isConnected_univ
