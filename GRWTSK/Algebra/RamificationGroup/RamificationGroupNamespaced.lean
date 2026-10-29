-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DecompositionSubgroup.Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.DecompositionSubgroup.Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/RamificationGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michail Karatarakis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michail Karatarakis
-/
import Mathlib.RingTheory.LocalRing.ResidueField.Basic
import Mathlib.RingTheory.Valuation.ValuationSubring

/-!
# Ramification groups

The decomposition subgroup and inertia subgroups.

TODO: Define higher ramification groups in lower numbering
-/



namespace GRWTSK.Algebra.DecompositionSubgroup.Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c

namespace ValuationSubring

open scoped Pointwise

variable (K : Type*) {L : Type*} [Field K] [Field L] [Algebra K L]

/-- The decomposition subgroup defined as the stabilizer of the action
on the type of all valuation subrings of the field. -/
abbrev decompositionSubgroup (A : ValuationSubring L) : Subgroup (L ≃ₐ[K] L) :=
  MulAction.stabilizer (L ≃ₐ[K] L) A

/-- The valuation subring `A` (considered as a subset of `L`)
is stable under the action of the decomposition group. -/
def subMulAction (A : ValuationSubring L) : SubMulAction (A.decompositionSubgroup K) L where
  carrier := A
  smul_mem' g _ h := Set.mem_of_mem_of_subset (Set.smul_mem_smul_set h) g.prop.le

/-- The multiplicative action of the decomposition subgroup on `A`. -/
instance decompositionSubgroupMulSemiringAction (A : ValuationSubring L) :
    MulSemiringAction (A.decompositionSubgroup K) A :=
  { SubMulAction.mulAction (A.subMulAction K) with
    smul_add := fun g k l => Subtype.ext <| smul_add (A := L) g k l
    smul_zero := fun g => Subtype.ext <| smul_zero g
    smul_one := fun g => Subtype.ext <| smul_one g
    smul_mul := fun g k l => Subtype.ext <| smul_mul' (N := L) g k l }

/-- The inertia subgroup defined as the kernel of the group homomorphism from
the decomposition subgroup to the group of automorphisms of the residue field of `A`. -/
noncomputable def inertiaSubgroup (A : ValuationSubring L) : Subgroup (A.decompositionSubgroup K) :=
  MonoidHom.ker <|
    MulSemiringAction.toRingAut (A.decompositionSubgroup K) (IsLocalRing.ResidueField A)

end ValuationSubring
