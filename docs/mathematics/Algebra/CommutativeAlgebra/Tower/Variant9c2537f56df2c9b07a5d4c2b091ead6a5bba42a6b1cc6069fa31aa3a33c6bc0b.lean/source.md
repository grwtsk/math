# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Tower.Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d69afdfc8799e96f6feb3315a740a544e9d8182` · SHA-256 `d71f0e83395040ccc99a3921c9fd8879e882c3b310491172424e718b570372ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.AevalMapAlgebraMap.Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.AevalMapAlgebraMap.Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d","mathematical_subject":"Algebra.Polynomials","original_sha256":"1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Polynomial/Tower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yuyang Zhao
-/
import Mathlib.Algebra.Algebra.Tower
import Mathlib.Algebra.Polynomial.AlgebraMap

/-!
# Algebra towers for polynomial

This file proves some basic results about the algebra tower structure for the type `R[X]`.

This structure itself is provided elsewhere as `Polynomial.isScalarTower`

When you update this file, you can also try to make a corresponding update in
`RingTheory.MvPolynomial.Tower`.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.AevalMapAlgebraMap.Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d

open Polynomial

variable (R A B : Type*)

namespace Polynomial

section Semiring

variable [CommSemiring R] [CommSemiring A] [Semiring B]
variable [Algebra R A] [Algebra A B] [Algebra R B]
variable [IsScalarTower R A B]
variable {R B}

@[simp]
theorem aeval_map_algebraMap (x : B) (p : R[X]) : aeval x (map (algebraMap R A) p) = aeval x p := by
  rw [aeval_def, aeval_def, eval₂_map, IsScalarTower.algebraMap_eq R A B]

@[simp]
lemma eval_map_algebraMap (P : R[X]) (b : B) :
    (map (algebraMap R B) P).eval b = aeval b P := by
  rw [aeval_def, eval_map]

end Semiring

section CommSemiring

variable [CommSemiring R] [CommSemiring A] [Semiring B]
variable [Algebra R A] [Algebra A B] [Algebra R B] [IsScalarTower R A B]
variable {R A}

theorem aeval_algebraMap_apply (x : A) (p : R[X]) :
    aeval (algebraMap A B x) p = algebraMap A B (aeval x p) := by
  rw [aeval_def, aeval_def, hom_eval₂, ← IsScalarTower.algebraMap_eq]

@[simp]
theorem aeval_algebraMap_eq_zero_iff [NoZeroSMulDivisors A B] [Nontrivial B] (x : A) (p : R[X]) :
    aeval (algebraMap A B x) p = 0 ↔ aeval x p = 0 := by
  rw [aeval_algebraMap_apply, Algebra.algebraMap_eq_smul_one, smul_eq_zero,
    iff_false_intro (one_ne_zero' B), or_false]

variable {B}

theorem aeval_algebraMap_eq_zero_iff_of_injective {x : A} {p : R[X]}
    (h : Function.Injective (algebraMap A B)) : aeval (algebraMap A B x) p = 0 ↔ aeval x p = 0 := by
  rw [aeval_algebraMap_apply, ← (algebraMap A B).map_zero, h.eq_iff]

end CommSemiring

end Polynomial

namespace Subalgebra

open Polynomial

section CommSemiring

variable {R A} [CommSemiring R] [CommSemiring A] [Algebra R A]

@[simp]
theorem aeval_coe (S : Subalgebra R A) (x : S) (p : R[X]) : aeval (x : A) p = aeval x p :=
  aeval_algebraMap_apply A x p

end CommSemiring

end Subalgebra
```
