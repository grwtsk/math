# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Norm.Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d18ea0a55e939e474a64148de3c451734b32199` · SHA-256 `2877a0c4f14f54ead4c894ef6c7eeffed4a1e2538fba56e89e5c249da7e6c59a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.SupNorm.Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.SupNorm.Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a","mathematical_subject":"Algebra.Polynomials","original_sha256":"2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Polynomial/Norm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kevin H. Wilson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin H. Wilson
-/
module

public import Mathlib.RingTheory.Polynomial.GaussNorm
public import Mathlib.Analysis.Normed.Unbundled.RingSeminorm
public import Mathlib.Algebra.Order.Hom.Basic


/-!
# Sup Norm of Polynomials

In this file we define the sup norm on `Polynomial`s based on their coefficients as well as several
basic results about this norm. We note that this is often called the _(naive) height_ of the
polynomial in the literature.

The sup norm is related to the Mahler measure of the polynomial. See
`Mathlib/Analysis/Polynomial/MahlerMeasure.lean`.

## Main definitions

- `Polynomial.supNorm p`: the sup norm of the coefficients of the polynomial, equal to the
  maximum of the norm of its coefficients (or zero for the zero polynomial)

## A Note on Naming

In the literature, the sup norm is often called the _(naive) height_ of a polynomial and the
`l^1` norm is often called the _length_ of the polynomial. Unfortunately, these terms are
extremely overloaded and Mathlib defines _height_ differently.

### TODOs

All other `l^p` norms can be defined on Polynomials as well. In the literature, the `l^1` norm is
sometimes called the polynomial's _length_. The `l^2` norm sometimes arises due to Parseval's
theorem implying that the squared `l^2` norm of a complex polynomial is the integral of the norm of
the polynomial's value on the unit circle.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.SupNorm.Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a

@[expose] public section supnorm_seminorm

variable {A : Type*} [SeminormedRing A] (p : Polynomial A)

namespace Polynomial

/-- The sup norm of a polynomial on a semi-normed ring, defined as the maximum of its coefficients.
Often called the _(naive) height_ of the polynomial.

This is defined in terms of `Polynomial.gaussNorm`. -/
noncomputable def supNorm : ℝ := p.gaussNorm (SeminormedRing.toRingSeminorm A) 1

/-- The direct definition of the supNorm -/
lemma supNorm_def' : p.supNorm =
    if hp : p.support.Nonempty then p.support.sup' hp (norm ∘ p.coeff) else 0 := by
  split_ifs with h
  · simp only [supNorm, gaussNorm, h, ↓reduceDIte, one_pow, mul_one, Function.comp_apply]
    congr
  · simp [supNorm, gaussNorm, h]

@[simp]
lemma supNorm_zero : (0 : A[X]).supNorm = 0 := gaussNorm_zero ..

lemma supNorm_nonneg : 0 ≤ p.supNorm := by
  apply gaussNorm_nonneg
  norm_num

@[simp]
lemma supNorm_C {a : A} : (C a).supNorm = ‖a‖ := gaussNorm_C ..

@[simp]
lemma supNorm_monomial (n : ℕ) {a : A} : (monomial n a).supNorm = ‖a‖ := by
  by_cases ha : a = 0
  · simp [ha]
  · simp [supNorm, gaussNorm, support_monomial n ha]

@[simp]
lemma supNorm_X [NormOneClass A] : (X : A[X]).supNorm = 1 := by
  rw [← monomial_one_one_eq_X, supNorm_monomial, norm_one]

lemma le_supNorm (i : ℕ) : ‖p.coeff i‖ ≤ p.supNorm := by
  simpa using! le_gaussNorm (SeminormedRing.toRingSeminorm A) p (by norm_num : (0 : ℝ) ≤ 1) i

lemma exists_eq_supNorm : ∃ i : ℕ, p.supNorm = ‖p.coeff i‖ := by
  simpa using! p.exists_eq_gaussNorm (SeminormedRing.toRingSeminorm A) 1

lemma isGreatest_supNorm : IsGreatest (Set.range (‖p.coeff ·‖)) p.supNorm :=
  ⟨by simpa [eq_comm] using exists_eq_supNorm p, by simpa [mem_upperBounds] using le_supNorm p⟩

/-- The supNorm can also be defined with an iSup. Note that this uses the fact that `norm` is both
a `ZeroHom` and `NonnegHom` so is not _a priori_ true from the `gaussNorm` definition. -/
lemma supNorm_eq_iSup : p.supNorm = ⨆ i, ‖p.coeff i‖ := p.isGreatest_supNorm.csSup_eq.symm

end Polynomial
end supnorm_seminorm

public section supnorm_norm

namespace Polynomial

variable {A : Type*} [NormedRing A] (p : Polynomial A)

lemma supNorm_eq_zero_iff : p.supNorm = 0 ↔ p = 0 := gaussNorm_eq_zero_iff _ _ (by simp) (by simp)

end Polynomial

end supnorm_norm
```
