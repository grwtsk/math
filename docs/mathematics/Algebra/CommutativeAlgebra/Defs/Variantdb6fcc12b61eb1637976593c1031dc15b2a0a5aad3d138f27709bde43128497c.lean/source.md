# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Defs.Variantdb6fcc12b61eb1637976593c1031dc15b2a0a5aad3d138f27709bde43128497c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df9f51cd15dfadbaf02dbfcab33601e5325c1041` · SHA-256 `a5265a551fb3438cc6377f113b40d1006eb0636f0b475ccc518e9f277318c79d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.RingHomIsIntegralElem.Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.RingHomIsIntegralElem.Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed","mathematical_subject":"Algebra.Polynomials","original_sha256":"4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/IntegralClosure/IsIntegral/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Algebraize

/-!
# Integral closure of a subring.

If A is an R-algebra then `a : A` is integral over R if it is a root of a monic polynomial
with coefficients in R.

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `RingHom.IsIntegralElem (f : R →+* A) (x : A)` : `x` is integral with respect to the map `f`,

* `IsIntegral (x : A)`  : `x` is integral over `R`, i.e., is a root of a monic polynomial with
                          coefficients in `R`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.RingHomIsIntegralElem.Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed

open Polynomial

section Ring

variable {R S A : Type*}
variable [CommRing R] [Ring A] [Ring S] (f : R →+* S)

/-- An element `x` of `A` is said to be integral over `R` with respect to `f`
if it is a root of a monic polynomial `p : R[X]` evaluated under `f` -/
def RingHom.IsIntegralElem (f : R →+* A) (x : A) :=
  ∃ p : R[X], Monic p ∧ eval₂ f x p = 0

/-- A ring homomorphism `f : R →+* A` is said to be integral
if every element `A` is integral with respect to the map `f` -/
@[algebraize Algebra.IsIntegral.mk, stacks 00GI "(2)"]
def RingHom.IsIntegral (f : R →+* A) :=
  ∀ x : A, f.IsIntegralElem x

variable [Algebra R A] (R)

/-- An element `x` of an algebra `A` over a commutative ring `R` is said to be *integral*,
if it is a root of some monic polynomial `p : R[X]`.
Equivalently, the element is integral over `R` with respect to the induced `algebraMap` -/
def IsIntegral (x : A) : Prop :=
  (algebraMap R A).IsIntegralElem x

end Ring
```
