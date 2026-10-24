-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FieldOfMinimalAxioms.Variantc2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FieldOfMinimalAxioms.Variantc2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Field/MinimalAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Ring.MinimalAxioms

/-!
# Minimal Axioms for a Field

This file defines constructors to define a `Field` structure on a Type, while proving
a minimum number of equalities.

## Main Definitions

* `Field.ofMinimalAxioms`: Define a `Field` structure on a Type by proving a minimal set of axioms

-/


namespace GRWTSK.Algebra.FieldOfMinimalAxioms.Variantc2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75

public section

universe u

/-- Define a `Field` structure on a Type by proving a minimal set of axioms.
Note that this uses the default definitions for `npow`, `nsmul`, `zsmul`, `div` and `sub`.
See note [reducible non-instances]. -/
abbrev Field.ofMinimalAxioms (K : Type u)
    [Add K] [Mul K] [Neg K] [Inv K] [Zero K] [One K]
    (add_assoc : ∀ a b c : K, a + b + c = a + (b + c))
    (zero_add : ∀ a : K, 0 + a = a)
    (neg_add_cancel : ∀ a : K, -a + a = 0)
    (mul_assoc : ∀ a b c : K, a * b * c = a * (b * c))
    (mul_comm : ∀ a b : K, a * b = b * a)
    (one_mul : ∀ a : K, 1 * a = a)
    (mul_inv_cancel : ∀ a : K, a ≠ 0 → a * a⁻¹ = 1)
    (inv_zero : (0 : K)⁻¹ = 0)
    (left_distrib : ∀ a b c : K, a * (b + c) = a * b + a * c)
    (exists_pair_ne : ∃ x y : K, x ≠ y) : Field K :=
  letI := CommRing.ofMinimalAxioms add_assoc zero_add
    neg_add_cancel mul_assoc mul_comm one_mul left_distrib
  { exists_pair_ne := exists_pair_ne
    mul_inv_cancel := mul_inv_cancel
    inv_zero := inv_zero
    nnqsmul := _
    nnqsmul_def := fun _ _ => rfl
    qsmul := _
    qsmul_def := fun _ _ => rfl }
