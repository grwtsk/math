# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SMul.Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79f4cc4f59d8df96566987987c3f2657d03683a8` · SHA-256 `0d874723a9043b5db7ce7b3a46852dc40d740cf350d8e82bcdee4dbc183c940f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EvalSmul.Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EvalSmul.Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c","mathematical_subject":"Algebra.Polynomials","original_sha256":"d429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Eval/SMul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Degree.Support
import Mathlib.Algebra.Polynomial.Eval.Defs

/-!
# Evaluating polynomials and scalar multiplication

## Main results
* `eval₂_smul`, `eval_smul`, `map_smul`, `comp_smul`: the functions preserve scalar multiplication
* `Polynomial.leval`: `Polynomial.eval` as linear map

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.EvalSmul.Variantd429e3eb8cbe7c6b73baa9ea38eb18a2710c843a3377b02a1d148c78143d293c

noncomputable section

open Finset AddMonoidAlgebra

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {T : Type w} {ι : Type y} {a b : R} {m n : ℕ}

section Semiring

variable [Semiring R] {p q r : R[X]}

section

variable [Semiring S]
variable (f : R →+* S) (x : S)

@[simp]
theorem eval₂_smul (g : R →+* S) (p : R[X]) (x : S) {s : R} :
    eval₂ g x (s • p) = g s * eval₂ g x p := by
  have A : p.natDegree < p.natDegree.succ := Nat.lt_succ_self _
  have B : (s • p).natDegree < p.natDegree.succ := (natDegree_smul_le _ _).trans_lt A
  rw [eval₂_eq_sum, eval₂_eq_sum, sum_over_range' _ _ _ A, sum_over_range' _ _ _ B] <;>
    simp [mul_sum, mul_assoc]

end

section Eval

variable {x : R}

@[simp]
theorem eval_smul [SMulZeroClass S R] [IsScalarTower S R R] (s : S) (p : R[X])
    (x : R) : (s • p).eval x = s • p.eval x := by
  rw [← smul_one_smul R s p, eval, eval₂_smul, RingHom.id_apply, smul_one_mul]

/-- `Polynomial.eval` as linear map -/
@[simps]
def leval {R : Type*} [Semiring R] (r : R) : R[X] →ₗ[R] R where
  toFun f := f.eval r
  map_add' _f _g := eval_add
  map_smul' c f := eval_smul c f r

end Eval

section Comp

@[simp]
theorem smul_comp [SMulZeroClass S R] [IsScalarTower S R R] (s : S) (p q : R[X]) :
    (s • p).comp q = s • p.comp q := by
  rw [← smul_one_smul R s p, comp, comp, eval₂_smul, ← smul_eq_C_mul, smul_assoc, one_smul]

end Comp

section Map

variable [Semiring S]
variable (f : R →+* S)

@[simp]
protected theorem map_smul (r : R) : (r • p).map f = f r • p.map f := by
  rw [map, eval₂_smul, RingHom.comp_apply, C_mul']

end Map

end Semiring

end Polynomial
```
