# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7279ac8ead3deb7f26053a4a2450460836db43ac` · SHA-256 `0325af5c5ed62f31498199321f4e49a715f6372a84348bf385b06cf1f18dd51e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Expand.Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545","mathematical_subject":"Algebra.Polynomials","original_sha256":"508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Expand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Robert Y. Lewis
-/
import Mathlib.Algebra.MvPolynomial.Monad

/-!
## Expand multivariate polynomials

Given a multivariate polynomial `φ`, one may replace every occurrence of `X i` by `X i ^ n`,
for some natural number `n`.
This operation is called `MvPolynomial.expand` and it is an algebra homomorphism.

### Main declaration

* `MvPolynomial.expand`: expand a polynomial by a factor of p, so `∑ aₙ xⁿ` becomes `∑ aₙ xⁿᵖ`.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545

namespace MvPolynomial

variable {σ τ R S : Type*} [CommSemiring R] [CommSemiring S]

/-- Expand the polynomial by a factor of p, so `∑ aₙ xⁿ` becomes `∑ aₙ xⁿᵖ`.

See also `Polynomial.expand`. -/
noncomputable def expand (p : ℕ) : MvPolynomial σ R →ₐ[R] MvPolynomial σ R :=
  { (eval₂Hom C fun i ↦ X i ^ p : MvPolynomial σ R →+* MvPolynomial σ R) with
    commutes' := fun _ ↦ eval₂Hom_C _ _ _ }

theorem expand_C (p : ℕ) (r : R) : expand p (C r : MvPolynomial σ R) = C r :=
  eval₂Hom_C _ _ _

@[simp]
theorem expand_X (p : ℕ) (i : σ) : expand p (X i : MvPolynomial σ R) = X i ^ p :=
  eval₂Hom_X' _ _ _

@[simp]
theorem expand_monomial (p : ℕ) (d : σ →₀ ℕ) (r : R) :
    expand p (monomial d r) = C r * ∏ i ∈ d.support, (X i ^ p) ^ d i :=
  bind₁_monomial _ _ _

theorem expand_one_apply (f : MvPolynomial σ R) : expand 1 f = f := by
  simp only [expand, pow_one, eval₂Hom_eq_bind₂, bind₂_C_left, RingHom.toMonoidHom_eq_coe,
    RingHom.coe_monoidHom_id, AlgHom.coe_mk, RingHom.coe_mk, MonoidHom.id_apply, RingHom.id_apply]

@[simp]
theorem expand_one : expand 1 = AlgHom.id R (MvPolynomial σ R) := by
  ext1 f
  rw [expand_one_apply, AlgHom.id_apply]

theorem expand_comp_bind₁ (p : ℕ) (f : σ → MvPolynomial τ R) :
    (expand p).comp (bind₁ f) = bind₁ fun i ↦ expand p (f i) := by
  apply algHom_ext
  intro i
  simp only [AlgHom.comp_apply, bind₁_X_right]

theorem expand_bind₁ (p : ℕ) (f : σ → MvPolynomial τ R) (φ : MvPolynomial σ R) :
    expand p (bind₁ f φ) = bind₁ (fun i ↦ expand p (f i)) φ := by
  rw [← AlgHom.comp_apply, expand_comp_bind₁]

@[simp]
theorem map_expand (f : R →+* S) (p : ℕ) (φ : MvPolynomial σ R) :
    map f (expand p φ) = expand p (map f φ) := by simp [expand, map_bind₁]

@[simp]
theorem rename_expand (f : σ → τ) (p : ℕ) (φ : MvPolynomial σ R) :
    rename f (expand p φ) = expand p (rename f φ) := by
  simp [expand, bind₁_rename, rename_bind₁, Function.comp_def]

@[simp]
theorem rename_comp_expand (f : σ → τ) (p : ℕ) :
    (rename f).comp (expand p) =
      (expand p).comp (rename f : MvPolynomial σ R →ₐ[R] MvPolynomial τ R) := by
  ext1 φ
  simp only [rename_expand, AlgHom.comp_apply]

end MvPolynomial
```
