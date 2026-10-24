-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AlgebraMapMonotone.Variant40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AlgebraMapMonotone.Variant40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Order.Module.OrderedSMul

/-!
# Ordered algebras

An ordered algebra is an ordered semiring, which is an algebra over an ordered commutative semiring,
for which scalar multiplication is "compatible" with the two orders.

The prototypical example is 2x2 matrices over the reals or complexes (or indeed any C^* algebra)
where the ordering the one determined by the positive cone of positive operators,
i.e. `A ≤ B` iff `B - A = star R * R` for some `R`.
(We don't yet have this example in mathlib.)

## Implementation

Because the axioms for an ordered algebra are exactly the same as those for the underlying
module being ordered, we don't actually introduce a new class, but just use the `OrderedSMul`
mixin.

## Tags

ordered algebra
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AlgebraMapMonotone.Variant40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303

section OrderedAlgebra

variable {R A : Type*} [CommRing R] [PartialOrder R] [IsOrderedRing R]
  [Ring A] [PartialOrder A] [IsOrderedRing A] [Algebra R A] [OrderedSMul R A]

theorem algebraMap_monotone : Monotone (algebraMap R A) := fun a b h => by
  rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, ← sub_nonneg, ← sub_smul]
  trans (b - a) • (0 : A)
  · simp
  · exact smul_le_smul_of_nonneg_left zero_le_one (sub_nonneg.mpr h)

end OrderedAlgebra
