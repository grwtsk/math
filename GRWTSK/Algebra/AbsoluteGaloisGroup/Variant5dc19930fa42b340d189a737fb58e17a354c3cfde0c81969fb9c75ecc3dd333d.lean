-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AbsoluteGaloisGroup.Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AbsoluteGaloisGroup.Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/FieldTheory/AbsoluteGaloisGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.FieldTheory.KrullTopology
import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
import Mathlib.Topology.Algebra.Group.TopologicalAbelianization

/-!
# The topological abelianization of the absolute Galois group.

We define the absolute Galois group of a field `K` and its topological abelianization.

## Main definitions
- `Field.absoluteGaloisGroup` : The Galois group of the field extension `K^al/K`, where `K^al` is an
  algebraic closure of `K`.
- `Field.absoluteGaloisGroupAbelianization` : The topological abelianization of
  `Field.absoluteGaloisGroup K`, that is, the quotient of `Field.absoluteGaloisGroup K` by the
  topological closure of its commutator subgroup.

## Main results
- `Field.absoluteGaloisGroup.commutator_closure_isNormal` : the topological closure of the
  commutator of `absoluteGaloisGroup` is a normal subgroup.

## Tags
field, algebraic closure, galois group, abelianization

-/


namespace GRWTSK.Algebra.AbsoluteGaloisGroup.Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254

namespace Field

variable (K : Type*) [Field K]

/-! ### The absolute Galois group -/

/-- The absolute Galois group of `K`, defined as the Galois group of the field extension `K^al/K`,
  where `K^al` is an algebraic closure of `K`. -/
def absoluteGaloisGroup := AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K

local notation "G_K" => absoluteGaloisGroup

noncomputable instance : Group (G_K K) := AlgEquiv.aut

/-- `absoluteGaloisGroup` is a topological space with the Krull topology. -/
noncomputable instance : TopologicalSpace (G_K K) := krullTopology K (AlgebraicClosure K)

/-! ### The topological abelianization of the absolute Galois group -/

instance absoluteGaloisGroup.commutator_closure_isNormal :
    (commutator (G_K K)).topologicalClosure.Normal :=
  Subgroup.is_normal_topologicalClosure (commutator (G_K K))

/-- The topological abelianization of `absoluteGaloisGroup`, that is, the quotient of
  `absoluteGaloisGroup` by the topological closure of its commutator subgroup. -/
abbrev absoluteGaloisGroupAbelianization := TopologicalAbelianization (G_K K)

local notation "G_K_ab" => absoluteGaloisGroupAbelianization

end Field
