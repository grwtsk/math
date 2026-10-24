-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CoeStar.Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CoeStar.Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/Bounded/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Mario Carneiro, Yury Kudryashov, Heather Macbeth
-/
import Mathlib.Analysis.CStarAlgebra.Basic
import Mathlib.Topology.ContinuousMap.Bounded.Normed
import Mathlib.Topology.ContinuousMap.Star

/-!
# Star structures on bounded continuous functions

-/


namespace GRWTSK.Topology.GeneralTopology.CoeStar.Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5

noncomputable section

open Topology Bornology NNReal uniformity UniformConvergence RCLike BoundedContinuousFunction

open Set Filter Metric Function

universe u v w

variable {F : Type*} {α : Type u} {β : Type v} {γ : Type w}

namespace BoundedContinuousFunction

/-!
### Star structures

In this section, if `β` is a normed ⋆-group, then so is the space of bounded
continuous functions from `α` to `β`, by using the star operation pointwise.

If `𝕜` is normed field and a ⋆-ring over which `β` is a normed algebra and a
star module, then the space of bounded continuous functions from `α` to `β`
is a star module.

If `β` is a ⋆-ring in addition to being a normed ⋆-group, then `α →ᵇ β`
inherits a ⋆-ring structure.

In summary, if `β` is a C⋆-algebra over `𝕜`, then so is `α →ᵇ β`; note that
completeness is guaranteed when `β` is complete (see
`BoundedContinuousFunction.complete`). -/


section NormedAddCommGroup

variable {𝕜 : Type*} [NormedField 𝕜] [StarRing 𝕜] [TopologicalSpace α] [SeminormedAddCommGroup β]
  [StarAddMonoid β] [NormedStarGroup β]

variable [NormedSpace 𝕜 β] [StarModule 𝕜 β]

instance instStarAddMonoid : StarAddMonoid (α →ᵇ β) where
  star f := f.comp star starNormedAddGroupHom.lipschitz
  star_involutive f := ext fun x => star_star (f x)
  star_add f g := ext fun x => star_add (f x) (g x)

/-- The right-hand side of this equality can be parsed `star ∘ ⇑f` because of the
instance `Pi.instStarForAll`. Upon inspecting the goal, one sees `⊢ ↑(star f) = star ↑f`. -/
@[simp]
theorem coe_star (f : α →ᵇ β) : ⇑(star f) = star (⇑f) := rfl

@[simp]
theorem star_apply (f : α →ᵇ β) (x : α) : star f x = star (f x) := rfl

instance instNormedStarGroup : NormedStarGroup (α →ᵇ β) where
  norm_star_le f := by simp only [norm_eq, star_apply, norm_star, le_of_eq]

instance instStarModule : StarModule 𝕜 (α →ᵇ β) where
  star_smul k f := ext fun x => star_smul k (f x)

end NormedAddCommGroup

section CStarRing

variable [TopologicalSpace α]
variable [NonUnitalNormedRing β] [StarRing β]

instance instStarRing [NormedStarGroup β] : StarRing (α →ᵇ β) where
  __ := instStarAddMonoid
  star_mul f g := ext fun x ↦ star_mul (f x) (g x)

variable [CStarRing β]

instance instCStarRing : CStarRing (α →ᵇ β) where
  norm_mul_self_le f := by
    rw [← sq, ← Real.le_sqrt (norm_nonneg _) (norm_nonneg _), norm_le (Real.sqrt_nonneg _)]
    intro x
    rw [Real.le_sqrt (norm_nonneg _) (norm_nonneg _), sq, ← CStarRing.norm_star_mul_self]
    exact norm_coe_le_norm (star f * f) x

end CStarRing

section NormedAlgebra

variable (𝕜 : Type*) [NormedField 𝕜] [TopologicalSpace α]
  [NormedRing β] [NormedAlgebra 𝕜 β] [StarAddMonoid β] [NormedStarGroup β]

/-- The ⋆-algebra-homomorphism forgetting that a bounded continuous function is bounded. -/
@[simps!]
def toContinuousMapStarₐ : (α →ᵇ β) →⋆ₐ[𝕜] C(α, β) := { toContinuousMapₐ 𝕜 with
  map_star' _ := rfl }

@[simp]
theorem coe_toContinuousMapStarₐ (f : α →ᵇ β) : (f.toContinuousMapStarₐ 𝕜 : α → β) = f := rfl

end NormedAlgebra

end BoundedContinuousFunction
