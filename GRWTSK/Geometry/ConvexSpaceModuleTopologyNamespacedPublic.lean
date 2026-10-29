-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousOfAffineMap.Variante3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousOfAffineMap.Variante3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Convex/ConvexSpace/ModuleTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Geometry.Convex.ConvexSpace.Module
public import Mathlib.Geometry.Convex.ConvexSpace.Topology

/-!
# Continuity of affine maps from the standard simplex to modules

-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousOfAffineMap.Variante3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471

open Topology

namespace Convexity.StdSimplex

variable {R E ι : Type*} [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
  [AddCommGroup E] [Module R E] [ConvexSpace R E]
  [TopologicalSpace E] [IsTopologicalAddGroup E] [TopologicalSpace R]
  [IsTopologicalRing R] [ContinuousSMul R E] [IsModuleConvexSpace R E]

@[fun_prop]
public lemma continuous_of_affineMap (f : ConvexSpace.AffineMap R (StdSimplex R ι) E) :
    Continuous f := by
  wlog hι : Finite ι generalizing ι
  · rw [StdSimplex.continuous_iff]
    intro ι' _ g
    exact this (f.comp (affineMap g)) inferInstance
  have := Fintype.ofFinite ι
  obtain ⟨f, rfl⟩ := StdSimplex.affineMapMk_surjective f
  rw [StdSimplex.coe_affineMapMk_of_fintype]
  fun_prop

public lemma continuous_of_isAffineMap (f : StdSimplex R ι → E) (hf : IsAffineMap R f) :
    Continuous f :=
  continuous_of_affineMap ⟨f, hf⟩

end Convexity.StdSimplex
