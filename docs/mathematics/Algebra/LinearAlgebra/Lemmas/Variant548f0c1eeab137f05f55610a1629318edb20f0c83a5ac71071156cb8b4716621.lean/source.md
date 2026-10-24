# Complete source: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4321f4dc9829dcf0bab933761c83f55eb218fec1` · SHA-256 `96b0cb176cb1c17d13c7fe968a5f114e24449997544d2dc3acd626b6fd8615a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RingHomKerIsRadicalIffReducedOfSurjective.Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RingHomKerIsRadicalIffReducedOfSurjective.Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Nilpotent/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.RingTheory.Ideal.Maps
import Mathlib.RingTheory.Nilpotent.Defs

/-!
# Nilpotent elements

This file contains results about nilpotent elements that involve ring theory.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RingHomKerIsRadicalIffReducedOfSurjective.Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b

universe u v

open Function Set

variable {R S : Type*} {x y : R}

theorem RingHom.ker_isRadical_iff_reduced_of_surjective {S F} [CommSemiring R] [Semiring S]
    [FunLike F R S] [RingHomClass F R S] {f : F} (hf : Function.Surjective f) :
    (RingHom.ker f).IsRadical ↔ IsReduced S := by
  simp_rw [isReduced_iff, hf.forall, IsNilpotent, ← map_pow, ← RingHom.mem_ker]
  rfl

theorem isRadical_iff_span_singleton [CommSemiring R] :
    IsRadical y ↔ (Ideal.span ({y} : Set R)).IsRadical := by
  simp_rw [IsRadical, ← Ideal.mem_span_singleton]
  exact forall_swap.trans (forall_congr' fun r => exists_imp.symm)

theorem isNilpotent_iff_zero_mem_powers [Monoid R] [Zero R] {x : R} :
    IsNilpotent x ↔ 0 ∈ Submonoid.powers x := Iff.rfl

section CommSemiring

variable [CommSemiring R] {x y : R}

/-- The nilradical of a commutative semiring is the ideal of nilpotent elements. -/
def nilradical (R : Type*) [CommSemiring R] : Ideal R :=
  (0 : Ideal R).radical

theorem mem_nilradical : x ∈ nilradical R ↔ IsNilpotent x :=
  Iff.rfl

theorem nilradical_eq_sInf (R : Type*) [CommSemiring R] :
    nilradical R = sInf { J : Ideal R | J.IsPrime } :=
  (Ideal.radical_eq_sInf ⊥).trans <| by simp_rw [and_iff_right bot_le]

theorem nilpotent_iff_mem_prime : IsNilpotent x ↔ ∀ J : Ideal R, J.IsPrime → x ∈ J := by
  rw [← mem_nilradical, nilradical_eq_sInf, Submodule.mem_sInf]
  rfl

theorem nilradical_le_prime (J : Ideal R) [H : J.IsPrime] : nilradical R ≤ J :=
  (nilradical_eq_sInf R).symm ▸ sInf_le H

@[simp]
theorem nilradical_eq_zero (R : Type*) [CommSemiring R] [IsReduced R] : nilradical R = 0 :=
  Ideal.ext fun _ => isNilpotent_iff_eq_zero

theorem nilradical_eq_bot_iff {R : Type*} [CommSemiring R] : nilradical R = ⊥ ↔ IsReduced R := by
  simp_rw [eq_bot_iff, SetLike.le_def, Submodule.mem_bot, mem_nilradical, isReduced_iff]

end CommSemiring

namespace LinearMap

variable (R) {A : Type v} [CommSemiring R] [Semiring A] [Algebra R A]

@[simp]
theorem isNilpotent_mulLeft_iff (a : A) : IsNilpotent (mulLeft R a) ↔ IsNilpotent a := by
  constructor <;> rintro ⟨n, hn⟩ <;> use n <;>
      simp only [mulLeft_eq_zero_iff, pow_mulLeft] at hn ⊢ <;>
    exact hn

@[simp]
theorem isNilpotent_mulRight_iff (a : A) : IsNilpotent (mulRight R a) ↔ IsNilpotent a := by
  constructor <;> rintro ⟨n, hn⟩ <;> use n <;>
      simp only [mulRight_eq_zero_iff, pow_mulRight] at hn ⊢ <;>
    exact hn

variable {R}
variable {ι M : Type*} [Fintype ι] [DecidableEq ι] [AddCommMonoid M] [Module R M]

@[simp]
lemma isNilpotent_toMatrix_iff (b : Basis ι R M) (f : M →ₗ[R] M) :
    IsNilpotent (toMatrix b b f) ↔ IsNilpotent f := by
  refine exists_congr fun k ↦ ?_
  rw [toMatrix_pow]
  exact (toMatrix b b).map_eq_zero_iff

end LinearMap

namespace Module.End

section

variable {M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

lemma isNilpotent_restrict_of_le {f : End R M} {p q : Submodule R M}
    {hp : MapsTo f p p} {hq : MapsTo f q q} (h : p ≤ q) (hf : IsNilpotent (f.restrict hq)) :
    IsNilpotent (f.restrict hp) := by
  obtain ⟨n, hn⟩ := hf
  use n
  ext ⟨x, hx⟩
  replace hn := DFunLike.congr_fun hn ⟨x, h hx⟩
  simp_rw [LinearMap.zero_apply, ZeroMemClass.coe_zero, ZeroMemClass.coe_eq_zero] at hn ⊢
  rw [Module.End.pow_restrict, LinearMap.restrict_apply] at hn ⊢
  ext
  exact (congr_arg Subtype.val hn :)

lemma isNilpotent.restrict
    {f : M →ₗ[R] M} {p : Submodule R M} (hf : MapsTo f p p) (hnil : IsNilpotent f) :
    IsNilpotent (f.restrict hf) := by
  obtain ⟨n, hn⟩ := hnil
  exact ⟨n, LinearMap.ext fun m ↦ by simp only [Module.End.pow_restrict n, hn,
    LinearMap.restrict_apply, LinearMap.zero_apply]; rfl⟩

end

variable {M : Type v} [Ring R] [AddCommGroup M] [Module R M]
variable {f : Module.End R M} {p : Submodule R M} (hp : p ≤ p.comap f)

theorem IsNilpotent.mapQ (hnp : IsNilpotent f) : IsNilpotent (p.mapQ p f hp) := by
  obtain ⟨k, hk⟩ := hnp
  use k
  simp [← p.mapQ_pow, hk]

end Module.End
```
