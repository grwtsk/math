# Complete source: GRWTSK.Algebra.CommutativeAlgebra.FiniteDimensional.Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `545e86fcfe58f039dcdfdb1048b3ad87f7697592` · SHA-256 `9f82359c02f6ba68e4122fb1196217e73fd434b4488d49e49e17bcab97e62f1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.IsTorsionOfAevalEqZero.Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.IsTorsionOfAevalEqZero.Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5","mathematical_subject":"Algebra.Polynomials","original_sha256":"014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Module/FiniteDimensional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.FieldTheory.Minpoly.Field
import Mathlib.Algebra.Polynomial.Module.AEval
import Mathlib.Algebra.Module.Torsion

/-!
# Polynomial modules in finite dimensions

This file is a place to collect results about the `R[X]`-module structure induced on an `R`-module
by an `R`-linear endomorphism, which require the concept of finite-dimensionality.

## Main results:
* `Module.AEval.isTorsion_of_finiteDimensional`: if a vector space `M` with coefficients in a field
  `K` carries a natural `K`-linear endomorphism which belongs to a finite-dimensional algebra
  over `K`, then the induced `K[X]`-module structure on `M` is pure torsion.

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.IsTorsionOfAevalEqZero.Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5

open Polynomial

variable {R K M A : Type*} {a : A}

namespace Module.AEval

theorem isTorsion_of_aeval_eq_zero [CommSemiring R] [NoZeroDivisors R] [Semiring A] [Algebra R A]
    [AddCommMonoid M] [Module A M] [Module R M] [IsScalarTower R A M]
    {p : R[X]} (h : aeval a p = 0) (h' : p ≠ 0) :
    IsTorsion R[X] (AEval R M a) := by
  have hp : p ∈ nonZeroDivisors R[X] := fun q hq ↦ Or.resolve_right (mul_eq_zero.mp hq) h'
  exact fun x ↦ ⟨⟨p, hp⟩, (of R M a).symm.injective <| by simp [h]⟩

variable (K M a)

theorem isTorsion_of_finiteDimensional [Field K] [Ring A] [Algebra K A]
    [AddCommGroup M] [Module A M] [Module K M] [IsScalarTower K A M] [FiniteDimensional K A] :
    IsTorsion K[X] (AEval K M a) :=
  isTorsion_of_aeval_eq_zero (minpoly.aeval K a) (minpoly.ne_zero_of_finite K a)

end Module.AEval
```
