# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Funext.Variant4899de8aa7fd86a714353aabbb028c39ab1e486cec5971a6e79b0be5bf2e8009

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db1faa098813c21b76ea2f192760edbf2ca75c40` · SHA-256 `f81fa5d0c0cc61419c8e53a4596a7e988ac57bde41b6ce78a95a47daea3a6ada`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.FunextFin.Variant621f469cc1ad1369621482a33ae2ecc440d329e369709276af207cd638795e87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"621f469cc1ad1369621482a33ae2ecc440d329e369709276af207cd638795e87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.FunextFin.Variant621f469cc1ad1369621482a33ae2ecc440d329e369709276af207cd638795e87","mathematical_subject":"Algebra.Polynomials","original_sha256":"621f469cc1ad1369621482a33ae2ecc440d329e369709276af207cd638795e87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/MvPolynomial/Funext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.Polynomial.RingDivision
public import Mathlib.Algebra.Polynomial.Roots
public import Mathlib.Algebra.MvPolynomial.Polynomial
public import Mathlib.Algebra.MvPolynomial.Rename

/-!
# Function extensionality for multivariate polynomials

In this file we show that two multivariate polynomials over an infinite integral domain are equal
if they are equal upon evaluating them on an arbitrary assignment of the variables.

## Main declaration

* `MvPolynomial.funext`: two polynomials `φ ψ : MvPolynomial σ R`
  over an infinite integral domain `R` are equal if `eval x φ = eval x ψ` for all `x : σ → R`.

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.FunextFin.Variant621f469cc1ad1369621482a33ae2ecc440d329e369709276af207cd638795e87

public section

namespace MvPolynomial

variable {R : Type*} [CommRing R] [IsDomain R]

private theorem funext_fin {n : ℕ} {p : MvPolynomial (Fin n) R}
    (s : Fin n → Set R) (hs : ∀ i, (s i).Infinite)
    (h : ∀ x ∈ Set.pi .univ s, eval x p = 0) : p = 0 := by
  induction n with
  | zero =>
    apply (MvPolynomial.isEmptyRingEquiv R (Fin 0)).injective
    simpa [constantCoeff] using h 0 finZeroElim
  | succ n ih =>
    apply (finSuccEquiv R n).injective
    rw [map_zero]
    apply Polynomial.eq_zero_of_infinite_isRoot
    apply ((hs 0).image (C_injective ..).injOn).mono
    rintro _ ⟨r, hr, rfl⟩
    refine ih (s ·.succ) (fun _ ↦ hs _) fun x hx ↦ ?_
    rw [eval_polynomial_eval_finSuccEquiv]
    exact h _ fun i _ ↦ i.cases (by simpa [eval_C] using hr) (by simpa using hx)

section

variable {σ : Type*} {p q : MvPolynomial σ R} (s : σ → Set R) (hs : ∀ i, (s i).Infinite)
include hs

/-- Two multivariate polynomials over an integral domain are equal
if they are equal when evaluated anywhere in a box with infinite sides. -/
theorem funext_set (h : ∀ x ∈ Set.pi .univ s, eval x p = eval x q) :
    p = q := by
  suffices ∀ p, (∀ x ∈ Set.pi .univ s, eval x p = 0) → p = 0 by
    rw [← sub_eq_zero, this (p - q)]
    intro x hx
    simp_rw [map_sub, h x hx, sub_self]
  intro p h
  obtain ⟨n, f, hf, p, rfl⟩ := exists_fin_rename p
  suffices p = 0 by rw [this, map_zero]
  refine funext_fin (s ∘ f) (fun _ ↦ hs _) fun x hx ↦ ?_
  choose g hg using fun i ↦ (hs i).nonempty
  convert! h (Function.extend f x g) fun i _ ↦ ?_
  · simp only [eval, eval₂Hom_rename, Function.extend_comp hf]
  obtain ⟨i, rfl⟩ | nex := em (∃ x, f x = i)
  · rw [hf.extend_apply]; exact hx _ ⟨⟩
  · simp_rw [Function.extend, dite_eq_right nex, hg]

theorem funext_set_iff : p = q ↔ (∀ x ∈ Set.pi .univ s, eval x p = eval x q) :=
  ⟨by rintro rfl _ _; rfl, funext_set s hs⟩

end

variable [Infinite R]

/-- Two multivariate polynomials over an infinite integral domain are equal
if they are equal upon evaluating them on an arbitrary assignment of the variables. -/
theorem funext {σ : Type*} {p q : MvPolynomial σ R}
    (h : ∀ x : σ → R, eval x p = eval x q) :
    p = q :=
  funext_set _ (fun _ ↦ Set.infinite_univ) fun _ _ ↦ h _

theorem funext_iff {σ : Type*} {p q : MvPolynomial σ R} :
    p = q ↔ ∀ x : σ → R, eval x p = eval x q :=
  ⟨by rintro rfl; simp only [forall_const], funext⟩

end MvPolynomial
```
