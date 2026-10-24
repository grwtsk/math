-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"b32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/PoincareConjecture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
import Mathlib.Geometry.Manifold.Diffeomorph
import Mathlib.Geometry.Manifold.Instances.Sphere
import Mathlib.Topology.Homotopy.Equiv
import Mathlib.Util.Superscript

/-!
# Statement of the generalized Poincaré conjecture

https://en.wikipedia.org/wiki/Generalized_Poincar%C3%A9_conjecture

The mathlib notation `≃ₕ` stands for a homotopy equivalence, `≃ₜ` stands for a homeomorphism,
and `≃ₘ⟮𝓡 n, 𝓡 n⟯` stands for a diffeomorphism, where `𝓡 n` is the `n`-dimensional Euclidean
space viewed as a model space.
-/


namespace GRWTSK.Topology.AlgebraicTopology.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae

open scoped Manifold ContDiff
open Metric (sphere)

local macro:max "ℝ"n:superscript(term) : term => `(EuclideanSpace ℝ (Fin $(⟨n.raw[0]⟩)))
local macro:max "𝕊"n:superscript(term) : term =>
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
proof_wanted SimplyConnectedSpace.nonempty_diffeomorph_sphere_three
    [T2Space M] [ChartedSpace ℝ³ M] [IsManifold (𝓡 3) ∞ M]
    [SimplyConnectedSpace M] [CompactSpace M] :
    Nonempty (M ≃ₘ⟮𝓡 3, 𝓡 3⟯ 𝕊³)

/-- The smooth Poincaré conjecture; true for n = 1, 2, 3, 5, 6, 12, 56, and 61,
open for n = 4, and it is conjectured that there are no other n > 4 for which it is true
(Conjecture 1.17, https://annals.math.princeton.edu/2017/186-2/p03). -/
def ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere (n : ℕ) : Prop :=
  ∀ (_ : ChartedSpace ℝⁿ M) (_ : IsManifold (𝓡 n) ∞ M),
    M ≃ₕ 𝕊ⁿ → Nonempty (M ≃ₘ⟮𝓡 n, 𝓡 n⟯ 𝕊ⁿ)

/-- The existence of an exotic 7-sphere (due to John Milnor) -/
proof_wanted exists_homeomorph_isEmpty_diffeomorph_sphere_seven :
    ∃ (M : Type) (_ : TopologicalSpace M) (_ : ChartedSpace ℝ⁷ M)
      (_ : IsManifold (𝓡 7) ∞ M) (_homeo : M ≃ₜ 𝕊⁷),
      IsEmpty (M ≃ₘ⟮𝓡 7, 𝓡 7⟯ 𝕊⁷)

/-- The existence of a small exotic ℝ⁴, i.e. an open subset of ℝ⁴ that is homeomorphic but
not diffeomorphic to ℝ⁴. See https://en.wikipedia.org/wiki/Exotic_R4. -/
proof_wanted exists_open_nonempty_homeomorph_isEmpty_diffeomorph_euclideanSpace_four :
    ∃ M : TopologicalSpace.Opens ℝ⁴, Nonempty (M ≃ₜ ℝ⁴) ∧ IsEmpty (M ≃ₘ⟮𝓡 4, 𝓡 4⟯ ℝ⁴)
