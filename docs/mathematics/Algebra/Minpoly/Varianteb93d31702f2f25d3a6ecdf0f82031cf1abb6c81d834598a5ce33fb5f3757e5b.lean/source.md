# Complete source: GRWTSK.Algebra.Minpoly.Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d3a5dfa1dfdc005003ee138dbceba2558550d9d` · SHA-256 `40bbdab6331663d42cd715def088a9af78453f38e9319a18d8973e05aa2feccc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CoeffZeroMinpoly.Variant8f7684688896d0ec9aafc62a5fd08e359306a9999cee3fcbc1458eb1499e7dd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f7684688896d0ec9aafc62a5fd08e359306a9999cee3fcbc1458eb1499e7dd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CoeffZeroMinpoly.Variant8f7684688896d0ec9aafc62a5fd08e359306a9999cee3fcbc1458eb1499e7dd7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8f7684688896d0ec9aafc62a5fd08e359306a9999cee3fcbc1458eb1499e7dd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/Minpoly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
import Mathlib.RingTheory.Valuation.Basic

/-!
# Minimal polynomials.

We prove some results about valuations of zero coefficients of minimal polynomials.

Let `K` be a field with a valuation `v` and let `L` be a field extension of `K`.

# Main Results
* `coeff_zero_minpoly` : for `x ∈ K` the valuation of the zeroth coefficient of the minimal
  polynomial of `algebra_map K L x` over `K` is equal to the valuation of `x`.
* `pow_coeff_zero_ne_zero_of_unit` : for any unit `x : Lˣ`, we prove that a certain power of the
  valuation of zeroth coefficient of the minimal polynomial of `x` over `K` is nonzero. This lemma
  is helpful for defining the valuation on `L` inducing `v`.
-/


namespace GRWTSK.Algebra.CoeffZeroMinpoly.Variant8f7684688896d0ec9aafc62a5fd08e359306a9999cee3fcbc1458eb1499e7dd7

open Module minpoly Polynomial

variable {K : Type*} [Field K] {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀]
  (v : Valuation K Γ₀) (L : Type*) [Field L] [Algebra K L]

namespace Valuation

/-- For `x ∈ K` the valuation of the zeroth coefficient of the minimal polynomial
of `algebra_map K L x` over `K` is equal to the valuation of `x`. -/
@[simp]
theorem coeff_zero_minpoly (x : K) : v ((minpoly K (algebraMap K L x)).coeff 0) = v x := by
  rw [minpoly.eq_X_sub_C, coeff_sub, coeff_X_zero, coeff_C_zero, zero_sub, Valuation.map_neg]

variable {L}

/- For any unit `x : Lˣ`, we prove that a certain power of the valuation of zeroth coefficient of
the minimal polynomial of `x` over `K` is nonzero. This lemma is helpful for defining the valuation
on `L` inducing `v`. -/
theorem pow_coeff_zero_ne_zero_of_unit [FiniteDimensional K L] (x : L) (hx : IsUnit x):
    v ((minpoly K x).coeff 0) ^ (finrank K L / (minpoly K x).natDegree) ≠ (0 : Γ₀) := by
  have h_alg : Algebra.IsAlgebraic K L := Algebra.IsAlgebraic.of_finite K L
  have hx₀ : IsIntegral K x := (Algebra.IsAlgebraic.isAlgebraic x).isIntegral
  have hdeg := Nat.div_pos (natDegree_le x) (natDegree_pos hx₀)
  rw [ne_eq, pow_eq_zero_iff hdeg.ne.symm, Valuation.zero_iff]
  exact coeff_zero_ne_zero hx₀ hx.ne_zero

end Valuation
```
