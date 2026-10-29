-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant67d068d1b39b8281a0734d54e799c5fb87ecbd591362a1a4543d36cc9ce66bf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67d068d1b39b8281a0734d54e799c5fb87ecbd591362a1a4543d36cc9ce66bf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SimplyConnected.Variant67d068d1b39b8281a0734d54e799c5fb87ecbd591362a1a4543d36cc9ce66bf8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"67d068d1b39b8281a0734d54e799c5fb87ecbd591362a1a4543d36cc9ce66bf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Geometry/Manifold/PoincareConjecture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
public import Mathlib.Geometry.Manifold.PoincareConjecture


namespace GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant67d068d1b39b8281a0734d54e799c5fb87ecbd591362a1a4543d36cc9ce66bf8

open scoped Manifold ContDiff
open Metric (sphere)

local macro:max "ℝ" noWs n:superscript(term) : term => `(EuclideanSpace ℝ (Fin $(⟨n.raw[0]⟩)))
local macro:max "𝕊" noWs n:superscript(term) : term =>
  `(sphere (0 : EuclideanSpace ℝ (Fin ($(⟨n.raw[0]⟩) + 1))) 1)

variable (M : Type*) [TopologicalSpace M]

open ContinuousMap

/-- The generalized topological Poincaré conjecture.
- For n = 2 it follows from the classification of surfaces.
- For n ≥ 5 it was proven by Stephen Smale in 1961 assuming M admits a smooth structure;
  Newman (1966) and Connell (1967) proved it without the condition.
- For n = 4 it was proven by Michael Freedman in 1982.
- For n = 3 it was proven by Grigori Perelman in 2003. -/
proof_wanted ContinuousMap.HomotopyEquiv.nonempty_homeomorph_sphere [T2Space M]
    (n : ℕ) [ChartedSpace ℝⁿ M] : M ≃ₕ 𝕊ⁿ → Nonempty (M ≃ₜ 𝕊ⁿ)

/-- The 3-dimensional topological Poincaré conjecture (proven by Perelman) -/
proof_wanted SimplyConnectedSpace.nonempty_homeomorph_sphere_three
    [T2Space M] [ChartedSpace ℝ³ M] [SimplyConnectedSpace M] [CompactSpace M] :
    Nonempty (M ≃ₜ 𝕊³)

/-- The 3-dimensional smooth Poincaré conjecture (proven by Perelman) -/
proof_wanted SimplyConnectedSpace.nonempty_sdiffeomorph_sphere_three
    [T2Space M] [ChartedSpace ℝ³ M] [IsManifold (𝓡 3) ∞ M]
    [SimplyConnectedSpace M] [CompactSpace M] :
    Nonempty (M ≃ₘ⟮𝓡 3, 𝓡 3⟯ 𝕊³)

/-- The existence of an exotic 7-sphere (due to John Milnor) -/
proof_wanted exists_homeomorph_isEmpty_diffeomorph_sphere_seven :
    ∃ (M : Type) (_ : TopologicalSpace M) (_ : ChartedSpace ℝ⁷ M)
      (_ : IsManifold (𝓡 7) ∞ M) (_homeo : M ≃ₜ 𝕊⁷),
      IsEmpty (M ≃ₘ⟮𝓡 7, 𝓡 7⟯ 𝕊⁷)

/-- The existence of a small exotic ℝ⁴, i.e. an open subset of ℝ⁴ that is homeomorphic but
not diffeomorphic to ℝ⁴. See https://en.wikipedia.org/wiki/Exotic_R4. -/
proof_wanted exists_open_nonempty_homeomorph_isEmpty_diffeomorph_euclideanSpace_four :
    ∃ M : TopologicalSpace.Opens ℝ⁴, Nonempty (M ≃ₜ ℝ⁴) ∧ IsEmpty (M ≃ₘ⟮𝓡 4, 𝓡 4⟯ ℝ⁴)
