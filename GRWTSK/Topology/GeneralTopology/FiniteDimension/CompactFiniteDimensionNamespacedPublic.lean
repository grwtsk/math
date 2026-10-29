-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompactOperatorIdIffFiniteDimensional.Variant5388a8f51e0d86541f75d694a2d25b055ab37239edf50490fde88f86c42af5a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5388a8f51e0d86541f75d694a2d25b055ab37239edf50490fde88f86c42af5a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompactOperatorIdIffFiniteDimensional.Variant5388a8f51e0d86541f75d694a2d25b055ab37239edf50490fde88f86c42af5a8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5388a8f51e0d86541f75d694a2d25b055ab37239edf50490fde88f86c42af5a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Operator/Compact/FiniteDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Bhavik Mehta, Thomas Browning
-/
module

public import Mathlib.Analysis.Normed.Operator.Compact.Basic
public import Mathlib.Topology.Algebra.Module.FiniteDimension

/-!
# Compact operators and finite dimensional spaces

This file contains results linking `IsCompactOperator` with `FiniteDimensional`.

The motivation for not including this in the same file as the definition of compact operators
is that `Mathlib.Topology.Algebra.Module.FiniteDimension` is quite a heavy import to add there.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCompactOperatorIdIffFiniteDimensional.Variant5388a8f51e0d86541f75d694a2d25b055ab37239edf50490fde88f86c42af5a8

public section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
  {E : Type*} [AddCommGroup E] [Module 𝕜 E]
  [TopologicalSpace E] [T2Space E] [IsTopologicalAddGroup E] [ContinuousSMul 𝕜 E]

theorem isCompactOperator_id_iff_finiteDimensional [LocallyCompactSpace 𝕜] :
    IsCompactOperator (_root_.id : E → E) ↔ FiniteDimensional 𝕜 E :=
  isCompactOperator_id_iff_locallyCompactSpace.trans
    ⟨fun _ ↦ .of_locallyCompactSpace 𝕜, fun _ ↦ .of_finiteDimensional_of_complete 𝕜 E⟩

/-- If the identity operator of a Banach space over a nontrivially normed field is compact,
then the space is finite dimensional. -/
lemma FiniteDimensional.of_isCompactOperator_id (h : IsCompactOperator (id : E → E)) :
    FiniteDimensional 𝕜 E := by
  have := LocallyCompactSpace.of_isCompactOperator_id h
  exact FiniteDimensional.of_locallyCompactSpace 𝕜

@[deprecated (since := "2026-03-05")] alias IsCompactOperator.finiteDimensional :=
  FiniteDimensional.of_isCompactOperator_id
