-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Measure.Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Measure.Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317","mathematical_subject":"Topology.GeneralTopology","original_sha256":"557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/Padics/Measure/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
module

public import Mathlib.NumberTheory.Padics.Measure.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.EReal.Inv
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Topology.Algebra.Module.Spaces.ContinuousLinearMap

/-!
# Topologies on spaces of measures

We define the weak and strong topologies on `D(X, E)`. These are deliberately not declared as
instances in order to avoid favouring one topology over the other.
-/


namespace GRWTSK.Topology.GeneralTopology.Measure.Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317

@[expose] public section

open ContinuousMap

variable {X R E : Type*} [TopologicalSpace X]

namespace AbstractMeasure

section Topology

section Weak

variable [NormedAddCommGroup E] [CommRing R] [Module R E] [TopologicalSpace R]
  [IsTopologicalRing R] [ContinuousSMul R E]

/--
The weak topology on `AbstractMeasure G R E` (the weakest topology such that `μ ↦ μ f` is
continuous for all `f`).
-/
@[reducible] def WeakTopology : TopologicalSpace (AbstractMeasure X R E) :=
  .induced (fun μ f ↦ μ f) inferInstance

end Weak

variable [CompactSpace X] [NontriviallyNormedField R] [NormedAddCommGroup E] [NormedSpace R E]

/-- The strong topology on `AbstractMeasure G R E` (the topology induced by the norm). -/
@[reducible] def StrongTopology : TopologicalSpace (AbstractMeasure X R E) :=
  inferInstanceAs (TopologicalSpace (C(X, R) →L[R] E))

end Topology

end AbstractMeasure

end
