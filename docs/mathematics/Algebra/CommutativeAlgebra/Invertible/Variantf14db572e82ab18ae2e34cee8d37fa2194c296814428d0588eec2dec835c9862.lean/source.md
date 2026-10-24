# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Invertible.Variantf14db572e82ab18ae2e34cee8d37fa2194c296814428d0588eec2dec835c9862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `765b3f447fb497ef351588a4c9e2be3d60973acd` · SHA-256 `00cefa3cbef25d7fcd1ca00a30ea86d56fed4f30434480fcb932bdd889d8bfe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MvPolynomial.Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5","mathematical_subject":"Algebra.Polynomials","original_sha256":"5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Invertible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin, Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Robert Y. Lewis
-/
import Mathlib.Algebra.MvPolynomial.Basic
import Mathlib.RingTheory.AlgebraTower

/-!
# Invertible polynomials

This file is a stub containing some basic facts about
invertible elements in the ring of polynomials.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5

open MvPolynomial

noncomputable instance MvPolynomial.invertibleC (σ : Type*) {R : Type*} [CommSemiring R] (r : R)
    [Invertible r] : Invertible (C r : MvPolynomial σ R) :=
  Invertible.map (C : R →+* MvPolynomial σ R) _

/-- A natural number that is invertible when coerced to a commutative semiring `R`
is also invertible when coerced to any polynomial ring with rational coefficients.

Short-cut for typeclass resolution. -/
noncomputable instance MvPolynomial.invertibleCoeNat (σ R : Type*) (p : ℕ) [CommSemiring R]
    [Invertible (p : R)] : Invertible (p : MvPolynomial σ R) :=
  IsScalarTower.invertibleAlgebraCoeNat R _ _
```
