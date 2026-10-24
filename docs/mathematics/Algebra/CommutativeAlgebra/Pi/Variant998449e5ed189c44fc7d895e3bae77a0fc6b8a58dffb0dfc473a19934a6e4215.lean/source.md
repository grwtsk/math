# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Pi.Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c0165dd378b87f53e8126e5d115d5bbf6ad47d8` · SHA-256 `beb8a1870ba47f4f5d8aaf16956e5bb56b2a0636c64de78719add3672896c148`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialHasSMulPi.Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialHasSMulPi.Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72","mathematical_subject":"Algebra.Polynomials","original_sha256":"8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Algebraic/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Polynomial.AlgebraMap

/-!
# Algebraic functions

This file defines algebraic functions as the image of the `algebraMap R[X] (R → S)`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialHasSMulPi.Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72

assert_not_exists IsIntegralClosure LinearIndependent LocalRing MvPolynomial

open Polynomial

section Pi

variable (R S T : Type*)

/-- This is not an instance as it forms a diamond with `Pi.instSMul`.

See the `instance_diamonds` test for details. -/
def Polynomial.hasSMulPi [Semiring R] [SMul R S] : SMul R[X] (R → S) :=
  ⟨fun p f x => eval x p • f x⟩

/-- This is not an instance as it forms a diamond with `Pi.instSMul`.

See the `instance_diamonds` test for details. -/
noncomputable def Polynomial.hasSMulPi' [CommSemiring R] [Semiring S] [Algebra R S]
    [SMul S T] : SMul R[X] (S → T) :=
  ⟨fun p f x => aeval x p • f x⟩

attribute [local instance] Polynomial.hasSMulPi Polynomial.hasSMulPi'

@[simp]
theorem polynomial_smul_apply [Semiring R] [SMul R S] (p : R[X]) (f : R → S) (x : R) :
    (p • f) x = eval x p • f x :=
  rfl

@[simp]
theorem polynomial_smul_apply' [CommSemiring R] [Semiring S] [Algebra R S] [SMul S T]
    (p : R[X]) (f : S → T) (x : S) : (p • f) x = aeval x p • f x :=
  rfl

variable [CommSemiring R] [CommSemiring S] [CommSemiring T] [Algebra R S] [Algebra S T]

-- Porting note: the proofs in this definition used `funext` in term-mode, but I was not able
-- to get them to work anymore.
/-- This is not an instance for the same reasons as `Polynomial.hasSMulPi'`. -/
noncomputable def Polynomial.algebraPi : Algebra R[X] (S → T) where
  __ := Polynomial.hasSMulPi' R S T
  algebraMap :=
  { toFun := fun p z => algebraMap S T (aeval z p)
    map_one' := by
      funext z
      simp only [Polynomial.aeval_one, Pi.one_apply, map_one]
    map_mul' := fun f g => by
      funext z
      simp only [Pi.mul_apply, map_mul]
    map_zero' := by
      funext z
      simp only [Polynomial.aeval_zero, Pi.zero_apply, map_zero]
    map_add' := fun f g => by
      funext z
      simp only [Polynomial.aeval_add, Pi.add_apply, map_add] }
  commutes' := fun p f => by
    funext z
    exact mul_comm _ _
  smul_def' := fun p f => by
    funext z
    simp only [polynomial_smul_apply', Algebra.algebraMap_eq_smul_one, RingHom.coe_mk,
      MonoidHom.coe_mk, OneHom.coe_mk, Pi.mul_apply, Algebra.smul_mul_assoc, one_mul]

attribute [local instance] Polynomial.algebraPi

@[simp]
theorem Polynomial.algebraMap_pi_eq_aeval :
    (algebraMap R[X] (S → T) : R[X] → S → T) = fun p z => algebraMap _ _ (aeval z p) :=
  rfl

@[simp]
theorem Polynomial.algebraMap_pi_self_eq_eval :
    (algebraMap R[X] (R → R) : R[X] → R → R) = fun p z => eval z p :=
  rfl

end Pi
```
