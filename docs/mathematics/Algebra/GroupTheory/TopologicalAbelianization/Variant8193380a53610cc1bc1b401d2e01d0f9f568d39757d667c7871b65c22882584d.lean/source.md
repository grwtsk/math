# Complete source: GRWTSK.Algebra.GroupTheory.TopologicalAbelianization.Variant8193380a53610cc1bc1b401d2e01d0f9f568d39757d667c7871b65c22882584d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `190eb8244e15c4ed630da03fa6639bc1b586800f` · SHA-256 `1b0824868ffd4c0d5b795345cad380a402541b8aff103c6ac6971a47e40c039d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.TopologicalAbelianization.Variant4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.TopologicalAbelianization.Variant4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9","mathematical_subject":"Algebra.Groups","original_sha256":"4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Group/TopologicalAbelianization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
module

public import Mathlib.GroupTheory.Commutator.Basic
public import Mathlib.Tactic.Group
public import Mathlib.Topology.Algebra.Group.Subgroup

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


namespace GRWTSK.Algebra.GroupTheory.TopologicalAbelianization.Variant4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9

public section

open scoped commutatorElement

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
```
