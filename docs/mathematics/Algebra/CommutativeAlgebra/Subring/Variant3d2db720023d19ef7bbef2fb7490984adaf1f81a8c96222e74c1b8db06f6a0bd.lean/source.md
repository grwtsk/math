# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Subring.Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `679870ba5f68744232b8423290ed60504a2f954b` · SHA-256 `f9c1915382587171109f2684b415d677c34dac9c828dd1508b39e83e11f6eb0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MemMapRangeS.Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MemMapRangeS.Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0","mathematical_subject":"Algebra.Polynomials","original_sha256":"14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Eval/Subring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Degree.Support
import Mathlib.Algebra.Polynomial.Eval.Coeff
import Mathlib.Algebra.Ring.Subring.Basic

/-!
# Evaluation of polynomials in subrings

## Main results

* `mem_map_rangeS`, `mem_map_range`: the range of `mapRingHom f` consists of
  polynomials with coefficients in the range of `f`

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MemMapRangeS.Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {T : Type w} {ι : Type y} {a b : R} {m n : ℕ}

variable [Semiring R] {p q r : R[X]} [Semiring S]
variable (f : R →+* S)

theorem mem_map_rangeS {p : S[X]} : p ∈ (mapRingHom f).rangeS ↔ ∀ n, p.coeff n ∈ f.rangeS := by
  constructor
  · rintro ⟨p, rfl⟩ n
    rw [coe_mapRingHom, coeff_map]
    exact Set.mem_range_self _
  · intro h
    rw [p.as_sum_range_C_mul_X_pow]
    refine (mapRingHom f).rangeS.sum_mem ?_
    intro i _hi
    rcases h i with ⟨c, hc⟩
    use C c * X ^ i
    rw [coe_mapRingHom, Polynomial.map_mul, map_C, hc, Polynomial.map_pow, map_X]

theorem mem_map_range {R S : Type*} [Ring R] [Ring S] (f : R →+* S) {p : S[X]} :
    p ∈ (mapRingHom f).range ↔ ∀ n, p.coeff n ∈ f.range :=
  mem_map_rangeS f

end Polynomial
```
