# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Funext.Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3347eb8a34b7da3b464b80f1b4f8359bdaa1dd22` · SHA-256 `b5c7f69ee0ebda49d8bd611556118c43cb325e913765a58790a721829970e1c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.FunextFin.Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.FunextFin.Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537","mathematical_subject":"Algebra.Polynomials","original_sha256":"e0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Funext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Polynomial.RingDivision
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Algebra.MvPolynomial.Polynomial
import Mathlib.Algebra.MvPolynomial.Rename
import Mathlib.RingTheory.Polynomial.Basic

/-!
## Function extensionality for multivariate polynomials

In this file we show that two multivariate polynomials over an infinite integral domain are equal
if they are equal upon evaluating them on an arbitrary assignment of the variables.

# Main declaration

* `MvPolynomial.funext`: two polynomials `φ ψ : MvPolynomial σ R`
  over an infinite integral domain `R` are equal if `eval x φ = eval x ψ` for all `x : σ → R`.

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.FunextFin.Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537

namespace MvPolynomial

variable {R : Type*} [CommRing R] [IsDomain R] [Infinite R]

private theorem funext_fin {n : ℕ} {p : MvPolynomial (Fin n) R}
    (h : ∀ x : Fin n → R, eval x p = 0) : p = 0 := by
  induction n with
  | zero =>
    apply (MvPolynomial.isEmptyRingEquiv R (Fin 0)).injective
    rw [RingEquiv.map_zero]
    convert h finZeroElim
  | succ n ih =>
    apply (finSuccEquiv R n).injective
    simp only [map_zero]
    refine Polynomial.funext fun q => ?_
    rw [Polynomial.eval_zero]
    apply ih fun x => ?_
    calc _ = _ := eval_polynomial_eval_finSuccEquiv p _
         _ = 0 := h _

/-- Two multivariate polynomials over an infinite integral domain are equal
if they are equal upon evaluating them on an arbitrary assignment of the variables. -/
theorem funext {σ : Type*} {p q : MvPolynomial σ R} (h : ∀ x : σ → R, eval x p = eval x q) :
    p = q := by
  suffices ∀ p, (∀ x : σ → R, eval x p = 0) → p = 0 by
    rw [← sub_eq_zero, this (p - q)]
    simp only [h, RingHom.map_sub, forall_const, sub_self]
  clear h p q
  intro p h
  obtain ⟨n, f, hf, p, rfl⟩ := exists_fin_rename p
  suffices p = 0 by rw [this, map_zero]
  apply funext_fin
  intro x
  classical
    convert h (Function.extend f x 0)
    simp only [eval, eval₂Hom_rename, Function.extend_comp hf]

theorem funext_iff {σ : Type*} {p q : MvPolynomial σ R} :
    p = q ↔ ∀ x : σ → R, eval x p = eval x q :=
  ⟨by rintro rfl; simp only [forall_const, eq_self_iff_true], funext⟩

end MvPolynomial
```
