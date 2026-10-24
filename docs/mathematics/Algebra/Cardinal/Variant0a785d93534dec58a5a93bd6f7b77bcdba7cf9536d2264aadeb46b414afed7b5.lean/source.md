# Complete source: GRWTSK.Algebra.Cardinal.Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53475c66b72673367dc2a4474305ac9c89a44b06` · SHA-256 `a6ffd57c2df6f80f882c6e81144ba49f16ad2d6a5e7dbecdf78651067e93da0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CardinalMkEqMaxLift.Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CardinalMkEqMaxLift.Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
import Mathlib.Algebra.MvPolynomial.Equiv
import Mathlib.Data.Finsupp.Fintype
import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of Multivariate Polynomial Ring

The main result in this file is `MvPolynomial.cardinalMk_le_max`, which says that
the cardinality of `MvPolynomial σ R` is bounded above by the maximum of `#R`, `#σ`
and `ℵ₀`.
-/



namespace GRWTSK.Algebra.CardinalMkEqMaxLift.Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc

universe u v

open Cardinal

namespace MvPolynomial

section TwoUniverses

variable {σ : Type u} {R : Type v} [CommSemiring R]

@[simp]
theorem cardinalMk_eq_max_lift [Nonempty σ] [Nontrivial R] :
    #(MvPolynomial σ R) = max (max (Cardinal.lift.{u} #R) <| Cardinal.lift.{v} #σ) ℵ₀ :=
  (mk_finsupp_lift_of_infinite _ R).trans <| by
    rw [mk_finsupp_nat, max_assoc, lift_max, lift_aleph0, max_comm]

@[deprecated (since := "2024-11-10")] alias cardinal_mk_eq_max_lift := cardinalMk_eq_max_lift

@[simp]
theorem cardinalMk_eq_lift [IsEmpty σ] : #(MvPolynomial σ R) = Cardinal.lift.{u} #R :=
  ((isEmptyRingEquiv R σ).toEquiv.trans Equiv.ulift.{u}.symm).cardinal_eq

@[deprecated (since := "2024-11-10")] alias cardinal_mk_eq_lift := cardinalMk_eq_lift

@[nontriviality]
theorem cardinalMk_eq_one [Subsingleton R] : #(MvPolynomial σ R) = 1 := mk_eq_one _

theorem cardinalMk_le_max_lift {σ : Type u} {R : Type v} [CommSemiring R] : #(MvPolynomial σ R) ≤
    max (max (Cardinal.lift.{u} #R) <| Cardinal.lift.{v} #σ) ℵ₀ := by
  cases subsingleton_or_nontrivial R
  · exact (mk_eq_one _).trans_le (le_max_of_le_right one_le_aleph0)
  cases isEmpty_or_nonempty σ
  · exact cardinalMk_eq_lift.trans_le (le_max_of_le_left <| le_max_left _ _)
  · exact cardinalMk_eq_max_lift.le

@[deprecated (since := "2024-11-21")] alias cardinal_lift_mk_le_max := cardinalMk_le_max_lift

end TwoUniverses

variable {σ R : Type u} [CommSemiring R]

theorem cardinalMk_eq_max [Nonempty σ] [Nontrivial R] :
    #(MvPolynomial σ R) = max (max #R #σ) ℵ₀ := by simp

@[deprecated (since := "2024-11-10")] alias cardinal_mk_eq_max := cardinalMk_eq_max

theorem cardinalMk_eq [IsEmpty σ] : #(MvPolynomial σ R) = #R := by simp

/-- The cardinality of the multivariate polynomial ring, `MvPolynomial σ R` is at most the maximum
of `#R`, `#σ` and `ℵ₀` -/
theorem cardinalMk_le_max : #(MvPolynomial σ R) ≤ max (max #R #σ) ℵ₀ :=
  cardinalMk_le_max_lift.trans <| by rw [lift_id, lift_id]

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_max := cardinalMk_le_max

end MvPolynomial
```
