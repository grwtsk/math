-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.TopologicalAbelianization.Variant165a39b2c72bee1ef3964e1b1de1dde6969559eeb710c01014cee82b5980b0d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"165a39b2c72bee1ef3964e1b1de1dde6969559eeb710c01014cee82b5980b0d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.TopologicalAbelianization.Variant165a39b2c72bee1ef3964e1b1de1dde6969559eeb710c01014cee82b5980b0d9","mathematical_subject":"Algebra.Groups","original_sha256":"165a39b2c72bee1ef3964e1b1de1dde6969559eeb710c01014cee82b5980b0d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Group/TopologicalAbelianization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.GroupTheory.Abelianization
import Mathlib.Tactic.Group
import Mathlib.Topology.Algebra.Group.Basic

/-!
# The topological abelianization of a group.

This file defines the topological abelianization of a topological group.

## Main definitions

* `TopologicalAbelianization`: defines the topological abelianization of a group `G` as the quotient
  of `G` by the topological closure of its commutator subgroup..

## Main results
- `instNormalCommutatorClosure` : the topological closure of the commutator of a topological group
  `G` is a normal subgroup.

## Tags
group, topological abelianization

-/


namespace GRWTSK.Algebra.GroupTheory.TopologicalAbelianization.Variant165a39b2c72bee1ef3964e1b1de1dde6969559eeb710c01014cee82b5980b0d9

variable (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

instance instNormalCommutatorClosure : (commutator G).topologicalClosure.Normal :=
  Subgroup.is_normal_topologicalClosure (commutator G)

/-- The topological abelianization of `absoluteGaloisGroup`, that is, the quotient of
  `absoluteGaloisGroup` by the topological closure of its commutator subgroup. -/
abbrev TopologicalAbelianization := G ⧸ Subgroup.topologicalClosure (commutator G)

local notation "G_ab" => TopologicalAbelianization

namespace TopologicalAbelianization

instance commGroup : CommGroup (G_ab G) where
  mul_comm := fun x y =>
    Quotient.inductionOn₂' x y fun a b =>
      Quotient.sound' <|
        QuotientGroup.leftRel_apply.mpr <| by
          have h : (a * b)⁻¹ * (b * a) = ⁅b⁻¹, a⁻¹⁆ := by group
          rw [h]
          exact Subgroup.le_topologicalClosure _ (Subgroup.commutator_mem_commutator
            (Subgroup.mem_top b⁻¹) (Subgroup.mem_top a⁻¹))
  __ : Group (G_ab G) := inferInstance

end TopologicalAbelianization
