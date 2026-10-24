# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Subring.Variantd2bd2917f40826c47da85edc2123d539c888e80f14cbeca7ec503fcea254acf6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01056ce3d64e5fd31579aa4b117107543bffb439` · SHA-256 `7d94116b45f36f20bff47d55076cf4c3a8ee2c33108db8937f6e81aeaaa8f81c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MemMapRangeS.Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MemMapRangeS.Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093","mathematical_subject":"Algebra.Polynomials","original_sha256":"0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Polynomial/Eval/Subring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Polynomial.Degree.Support
public import Mathlib.Algebra.Polynomial.Eval.Coeff
public import Mathlib.Algebra.Ring.Subring.Basic

/-!
# Evaluation of polynomials in subrings

## Main results

* `mem_map_rangeS`, `mem_map_range`: the range of `mapRingHom f` consists of
  polynomials with coefficients in the range of `f`

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MemMapRangeS.Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093

public section

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {n : ℕ}

variable [Semiring R] {p : R[X]} [Semiring S]
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

theorem notMem_map_rangeS {p : S[X]} : p ∉ (mapRingHom f).rangeS ↔ ∃ n, p.coeff n ∉ f.rangeS :=
  (mem_map_rangeS f (p := p)).not.trans not_forall

theorem mem_map_range {R S : Type*} [Ring R] [Ring S] (f : R →+* S) {p : S[X]} :
    p ∈ (mapRingHom f).range ↔ ∀ n, p.coeff n ∈ f.range :=
  mem_map_rangeS f

theorem notMem_map_range {R S : Type*} [Ring R] [Ring S] (f : R →+* S) {p : S[X]} :
    p ∉ (mapRingHom f).range ↔ ∃ n, p.coeff n ∉ f.range :=
  notMem_map_rangeS f

end Polynomial
```
