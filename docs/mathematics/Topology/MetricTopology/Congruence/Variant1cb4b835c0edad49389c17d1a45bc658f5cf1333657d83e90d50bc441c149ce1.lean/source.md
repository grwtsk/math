# Complete source: GRWTSK.Topology.MetricTopology.Congruence.Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bcf001da9bb53ca7c590508a2fbf33c149e7bcf` · SHA-256 `7efee64102305d2c005a9ff9998c302a3e285f2b4fdfc3e01a9d6040d99db906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Congruent.Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Congruent.Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a","mathematical_subject":"Topology.MetricSpaces","original_sha256":"5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Congruence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid, Newell Jensen
-/
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Congruences

This file defines `Congruent`, i.e., the equivalence between indexed families of points in a metric
space where all corresponding pairwise distances are the same. The motivating example are
triangles in the plane.

## Implementation notes

After considering two possible approaches to defining congruence — either based on equal pairwise
distances or the existence of an isometric equivalence — we have opted for the broader concept of
equal pairwise distances. This notion is commonly employed in the literature across various metric
spaces that lack an isometric equivalence.

For more details see the [Zulip discussion](https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there-code-for-X.3F/topic/Euclidean.20Geometry).

## Notation

* `v₁ ≅ v₂`: for `Congruent v₁ v₂`.
-/


namespace GRWTSK.Topology.MetricTopology.Congruent.Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a

variable {ι ι' : Type*} {P₁ P₂ P₃ : Type*} {v₁ : ι → P₁} {v₂ : ι → P₂} {v₃ : ι → P₃}

section PseudoEMetricSpace

variable [PseudoEMetricSpace P₁] [PseudoEMetricSpace P₂] [PseudoEMetricSpace P₃]

/-- A congruence between indexed sets of vertices v₁ and v₂.
Use `open scoped Congruent` to access the `v₁ ≅ v₂` notation. -/
def Congruent (v₁ : ι → P₁) (v₂ : ι → P₂) : Prop :=
  ∀ i₁ i₂, edist (v₁ i₁) (v₁ i₂) = edist (v₂ i₁) (v₂ i₂)

@[inherit_doc]
scoped[Congruent] infixl:25 " ≅ " => Congruent

/-- Congruence holds if and only if all extended distances are the same. -/
lemma congruent_iff_edist_eq :
    Congruent v₁ v₂ ↔ ∀ i₁ i₂, edist (v₁ i₁) (v₁ i₂) = edist (v₂ i₁) (v₂ i₂) :=
  Iff.rfl

/-- Congruence holds if and only if all extended distances between points with different
indices are the same. -/
lemma congruent_iff_pairwise_edist_eq :
    Congruent v₁ v₂ ↔ Pairwise fun i₁ i₂ ↦ edist (v₁ i₁) (v₁ i₂) = edist (v₂ i₁) (v₂ i₂) := by
  refine ⟨fun h ↦ fun _ _ _ ↦ h _ _, fun h ↦ fun i₁ i₂ ↦ ?_⟩
  by_cases hi : i₁ = i₂
  · simp [hi]
  · exact h hi

namespace Congruent

/-- A congruence preserves extended distance. Forward direction of `congruent_iff_edist_eq`. -/
alias ⟨edist_eq, _⟩ := congruent_iff_edist_eq

/-- Congruence follows from preserved extended distance. Backward direction of
`congruent_iff_edist_eq`. -/
alias ⟨_, of_edist_eq⟩ := congruent_iff_edist_eq

/-- A congruence pairwise preserves extended distance. Forward direction of
`congruent_iff_pairwise_edist_eq`. -/
alias ⟨pairwise_edist_eq, _⟩ := congruent_iff_pairwise_edist_eq

/-- Congruence follows from pairwise preserved extended distance. Backward direction of
`congruent_iff_pairwise_edist_eq`. -/
alias ⟨_, of_pairwise_edist_eq⟩ := congruent_iff_pairwise_edist_eq

@[refl] protected lemma refl (v₁ : ι → P₁): v₁ ≅ v₁ := fun _ _ ↦ rfl

@[symm] protected lemma symm (h : v₁ ≅ v₂) : v₂ ≅ v₁ := fun i₁ i₂ ↦ (h i₁ i₂).symm

lemma _root_.GRWTSK.Topology.MetricTopology.Congruent.Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.congruent_comm : v₁ ≅ v₂ ↔ v₂ ≅ v₁ :=
  ⟨Congruent.symm, Congruent.symm⟩

@[trans] protected lemma trans (h₁₂ : v₁ ≅ v₂) (h₂₃ : v₂ ≅ v₃) : v₁ ≅ v₃ :=
  fun i₁ i₂ ↦ (h₁₂ i₁ i₂).trans (h₂₃ i₁ i₂)

/-- Change the index set ι to an index ι' that maps to ι. -/
lemma index_map (h : v₁ ≅ v₂) (f : ι' → ι) : (v₁ ∘ f) ≅ (v₂ ∘ f) :=
  fun i₁ i₂ ↦ edist_eq h (f i₁) (f i₂)

/-- Change between equivalent index sets ι and ι'. -/
@[simp] lemma index_equiv {E : Type*} [EquivLike E ι' ι] (f : E) (v₁ : ι → P₁) (v₂ : ι → P₂) :
    v₁ ∘ f ≅ v₂ ∘ f ↔ v₁ ≅ v₂ := by
  refine ⟨fun h i₁ i₂ ↦ ?_, fun h ↦ index_map h f⟩
  simpa [(EquivLike.toEquiv f).right_inv i₁, (EquivLike.toEquiv f).right_inv i₂]
    using edist_eq h ((EquivLike.toEquiv f).symm i₁) ((EquivLike.toEquiv f).symm i₂)

end Congruent

end PseudoEMetricSpace

section PseudoMetricSpace

variable [PseudoMetricSpace P₁] [PseudoMetricSpace P₂]

/-- Congruence holds if and only if all non-negative distances are the same. -/
lemma congruent_iff_nndist_eq :
    Congruent v₁ v₂ ↔ ∀ i₁ i₂, nndist (v₁ i₁) (v₁ i₂) = nndist (v₂ i₁) (v₂ i₂) :=
  forall₂_congr (fun _ _ ↦ by rw [edist_nndist, edist_nndist]; norm_cast)

/-- Congruence holds if and only if all non-negative distances between points with different
indices are the same. -/
lemma congruent_iff_pairwise_nndist_eq :
    Congruent v₁ v₂ ↔ Pairwise fun i₁ i₂ ↦ nndist (v₁ i₁) (v₁ i₂) = nndist (v₂ i₁) (v₂ i₂) := by
  simp_rw [congruent_iff_pairwise_edist_eq, edist_nndist]
  exact_mod_cast Iff.rfl

/-- Congruence holds if and only if all distances are the same. -/
lemma congruent_iff_dist_eq :
    Congruent v₁ v₂ ↔ ∀ i₁ i₂, dist (v₁ i₁) (v₁ i₂) = dist (v₂ i₁) (v₂ i₂) :=
  congruent_iff_nndist_eq.trans
    (forall₂_congr (fun _ _ ↦ by rw [dist_nndist, dist_nndist]; norm_cast))

/-- Congruence holds if and only if all non-negative distances between points with different
indices are the same. -/
lemma congruent_iff_pairwise_dist_eq :
    Congruent v₁ v₂ ↔ Pairwise fun i₁ i₂ ↦ dist (v₁ i₁) (v₁ i₂) = dist (v₂ i₁) (v₂ i₂) := by
  simp_rw [congruent_iff_pairwise_nndist_eq, dist_nndist]
  exact_mod_cast Iff.rfl

namespace Congruent

/-- A congruence preserves non-negative distance. Forward direction of `congruent_iff_nndist_eq`. -/
alias ⟨nndist_eq, _⟩ := congruent_iff_nndist_eq

/-- Congruence follows from preserved non-negative distance. Backward direction of
`congruent_iff_nndist_eq`. -/
alias ⟨_, of_nndist_eq⟩ := congruent_iff_nndist_eq

/-- A congruence preserves distance. Forward direction of `congruent_iff_dist_eq`. -/
alias ⟨dist_eq, _⟩ := congruent_iff_dist_eq

/-- Congruence follows from preserved distance. Backward direction of `congruent_iff_dist_eq`. -/
alias ⟨_, of_dist_eq⟩ := congruent_iff_dist_eq

/-- A congruence pairwise preserves non-negative distance. Forward direction of
`congruent_iff_pairwise_nndist_eq`. -/
alias ⟨pairwise_nndist_eq, _⟩ := congruent_iff_pairwise_nndist_eq

/-- Congruence follows from pairwise preserved non-negative distance. Backward direction of
`congruent_iff_pairwise_nndist_eq`. -/
alias ⟨_, of_pairwise_nndist_eq⟩ := congruent_iff_pairwise_nndist_eq

/-- A congruence pairwise preserves distance. Forward direction of
`congruent_iff_pairwise_dist_eq`. -/
alias ⟨pairwise_dist_eq, _⟩ := congruent_iff_pairwise_dist_eq

/-- Congruence follows from pairwise preserved distance. Backward direction of
`congruent_iff_pairwise_dist_eq`. -/
alias ⟨_, of_pairwise_dist_eq⟩ := congruent_iff_pairwise_dist_eq

end Congruent

end PseudoMetricSpace
```
