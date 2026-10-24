# Complete source: GRWTSK.Algebra.CommutativeAlgebra.AnnihilatingPolynomial.Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f61e25647944110d79d1cb7b78c0d0e9f65131d8` · SHA-256 `14cfafc751f0eccc7290a170933441a01d65b4c6faeac03453cab0db8b91d398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.AnnIdeal.Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.AnnIdeal.Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb","mathematical_subject":"Algebra.Polynomials","original_sha256":"750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/AnnihilatingPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Justin Thomas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justin Thomas
-/
import Mathlib.FieldTheory.Minpoly.Field
import Mathlib.RingTheory.PrincipalIdealDomain


namespace GRWTSK.Algebra.CommutativeAlgebra.AnnIdeal.Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb

#align_import linear_algebra.annihilating_polynomial from "leanprover-community/mathlib"@"d3e8e0a0237c10c2627bf52c246b15ff8e7df4c0"

/-!
# Annihilating Ideal

Given a commutative ring `R` and an `R`-algebra `A`
Every element `a : A` defines
an ideal `Polynomial.annIdeal a ⊆ R[X]`.
Simply put, this is the set of polynomials `p` where
the polynomial evaluation `p(a)` is 0.

## Special case where the ground ring is a field

In the special case that `R` is a field, we use the notation `R = 𝕜`.
Here `𝕜[X]` is a PID, so there is a polynomial `g ∈ Polynomial.annIdeal a`
which generates the ideal. We show that if this generator is
chosen to be monic, then it is the minimal polynomial of `a`,
as defined in `FieldTheory.Minpoly`.

## Special case: endomorphism algebra

Given an `R`-module `M` (`[AddCommGroup M] [Module R M]`)
there are some common specializations which may be more familiar.
* Example 1: `A = M →ₗ[R] M`, the endomorphism algebra of an `R`-module M.
* Example 2: `A = n × n` matrices with entries in `R`.
-/


open Polynomial

namespace Polynomial

section Semiring

variable {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]

variable (R)

/-- `annIdeal R a` is the *annihilating ideal* of all `p : R[X]` such that `p(a) = 0`.

The informal notation `p(a)` stand for `Polynomial.aeval a p`.
Again informally, the annihilating ideal of `a` is
`{ p ∈ R[X] | p(a) = 0 }`. This is an ideal in `R[X]`.
The formal definition uses the kernel of the aeval map. -/
noncomputable def annIdeal (a : A) : Ideal R[X] :=
  RingHom.ker ((aeval a).toRingHom : R[X] →+* A)
#align polynomial.ann_ideal Polynomial.annIdeal

variable {R}

/-- It is useful to refer to ideal membership sometimes
 and the annihilation condition other times. -/
theorem mem_annIdeal_iff_aeval_eq_zero {a : A} {p : R[X]} : p ∈ annIdeal R a ↔ aeval a p = 0 :=
  Iff.rfl
#align polynomial.mem_ann_ideal_iff_aeval_eq_zero Polynomial.mem_annIdeal_iff_aeval_eq_zero

end Semiring

section Field

variable {𝕜 A : Type*} [Field 𝕜] [Ring A] [Algebra 𝕜 A]

variable (𝕜)

open Submodule

set_option synthInstance.maxHeartbeats 35000 in
/-- `annIdealGenerator 𝕜 a` is the monic generator of `annIdeal 𝕜 a`
if one exists, otherwise `0`.

Since `𝕜[X]` is a principal ideal domain there is a polynomial `g` such that
 `span 𝕜 {g} = annIdeal a`. This picks some generator.
 We prefer the monic generator of the ideal. -/
noncomputable def annIdealGenerator (a : A) : 𝕜[X] :=
  let g := IsPrincipal.generator <| annIdeal 𝕜 a
  g * C g.leadingCoeff⁻¹
#align polynomial.ann_ideal_generator Polynomial.annIdealGenerator

section

variable {𝕜}

@[simp]
theorem annIdealGenerator_eq_zero_iff {a : A} : annIdealGenerator 𝕜 a = 0 ↔ annIdeal 𝕜 a = ⊥ := by
  simp only [annIdealGenerator, mul_eq_zero, IsPrincipal.eq_bot_iff_generator_eq_zero,
    Polynomial.C_eq_zero, inv_eq_zero, Polynomial.leadingCoeff_eq_zero, or_self_iff]
#align polynomial.ann_ideal_generator_eq_zero_iff Polynomial.annIdealGenerator_eq_zero_iff

end

/-- `annIdealGenerator 𝕜 a` is indeed a generator. -/
@[simp]
theorem span_singleton_annIdealGenerator (a : A) :
    Ideal.span {annIdealGenerator 𝕜 a} = annIdeal 𝕜 a := by
  by_cases h : annIdealGenerator 𝕜 a = 0
  · rw [h, annIdealGenerator_eq_zero_iff.mp h, Set.singleton_zero, Ideal.span_zero]
  · rw [annIdealGenerator, Ideal.span_singleton_mul_right_unit, Ideal.span_singleton_generator]
    apply Polynomial.isUnit_C.mpr
    apply IsUnit.mk0
    apply inv_eq_zero.not.mpr
    apply Polynomial.leadingCoeff_eq_zero.not.mpr
    apply (mul_ne_zero_iff.mp h).1
#align polynomial.span_singleton_ann_ideal_generator Polynomial.span_singleton_annIdealGenerator

/-- The annihilating ideal generator is a member of the annihilating ideal. -/
theorem annIdealGenerator_mem (a : A) : annIdealGenerator 𝕜 a ∈ annIdeal 𝕜 a :=
  Ideal.mul_mem_right _ _ (Submodule.IsPrincipal.generator_mem _)
#align polynomial.ann_ideal_generator_mem Polynomial.annIdealGenerator_mem

theorem mem_iff_eq_smul_annIdealGenerator {p : 𝕜[X]} (a : A) :
    p ∈ annIdeal 𝕜 a ↔ ∃ s : 𝕜[X], p = s • annIdealGenerator 𝕜 a := by
  simp_rw [@eq_comm _ p, ← mem_span_singleton, ← span_singleton_annIdealGenerator 𝕜 a, Ideal.span]
#align polynomial.mem_iff_eq_smul_ann_ideal_generator Polynomial.mem_iff_eq_smul_annIdealGenerator

/-- The generator we chose for the annihilating ideal is monic when the ideal is non-zero. -/
theorem monic_annIdealGenerator (a : A) (hg : annIdealGenerator 𝕜 a ≠ 0) :
    Monic (annIdealGenerator 𝕜 a) :=
  monic_mul_leadingCoeff_inv (mul_ne_zero_iff.mp hg).1
#align polynomial.monic_ann_ideal_generator Polynomial.monic_annIdealGenerator

/-! We are working toward showing the generator of the annihilating ideal
in the field case is the minimal polynomial. We are going to use a uniqueness
theorem of the minimal polynomial.

This is the first condition: it must annihilate the original element `a : A`. -/


theorem annIdealGenerator_aeval_eq_zero (a : A) : aeval a (annIdealGenerator 𝕜 a) = 0 :=
  mem_annIdeal_iff_aeval_eq_zero.mp (annIdealGenerator_mem 𝕜 a)
#align polynomial.ann_ideal_generator_aeval_eq_zero Polynomial.annIdealGenerator_aeval_eq_zero

variable {𝕜}

theorem mem_iff_annIdealGenerator_dvd {p : 𝕜[X]} {a : A} :
    p ∈ annIdeal 𝕜 a ↔ annIdealGenerator 𝕜 a ∣ p := by
  rw [← Ideal.mem_span_singleton, span_singleton_annIdealGenerator]
#align polynomial.mem_iff_ann_ideal_generator_dvd Polynomial.mem_iff_annIdealGenerator_dvd

/-- The generator of the annihilating ideal has minimal degree among
 the non-zero members of the annihilating ideal -/
theorem degree_annIdealGenerator_le_of_mem (a : A) (p : 𝕜[X]) (hp : p ∈ annIdeal 𝕜 a)
    (hpn0 : p ≠ 0) : degree (annIdealGenerator 𝕜 a) ≤ degree p :=
  degree_le_of_dvd (mem_iff_annIdealGenerator_dvd.1 hp) hpn0
#align polynomial.degree_ann_ideal_generator_le_of_mem Polynomial.degree_annIdealGenerator_le_of_mem

variable (𝕜)

/-- The generator of the annihilating ideal is the minimal polynomial. -/
theorem annIdealGenerator_eq_minpoly (a : A) : annIdealGenerator 𝕜 a = minpoly 𝕜 a := by
  by_cases h : annIdealGenerator 𝕜 a = 0
  · rw [h, minpoly.eq_zero]
    rintro ⟨p, p_monic, hp : aeval a p = 0⟩
    refine' p_monic.ne_zero (Ideal.mem_bot.mp _)
    simpa only [annIdealGenerator_eq_zero_iff.mp h] using mem_annIdeal_iff_aeval_eq_zero.mpr hp
  · exact minpoly.unique _ _ (monic_annIdealGenerator _ _ h) (annIdealGenerator_aeval_eq_zero _ _)
      fun q q_monic hq =>
        degree_annIdealGenerator_le_of_mem a q (mem_annIdeal_iff_aeval_eq_zero.mpr hq)
          q_monic.ne_zero
#align polynomial.ann_ideal_generator_eq_minpoly Polynomial.annIdealGenerator_eq_minpoly

/-- If a monic generates the annihilating ideal, it must match our choice
 of the annihilating ideal generator. -/
theorem monic_generator_eq_minpoly (a : A) (p : 𝕜[X]) (p_monic : p.Monic)
    (p_gen : Ideal.span {p} = annIdeal 𝕜 a) : annIdealGenerator 𝕜 a = p := by
  by_cases h : p = 0
  · rwa [h, annIdealGenerator_eq_zero_iff, ← p_gen, Ideal.span_singleton_eq_bot.mpr]
  · rw [← span_singleton_annIdealGenerator, Ideal.span_singleton_eq_span_singleton] at p_gen
    rw [eq_comm]
    apply eq_of_monic_of_associated p_monic _ p_gen
    · apply monic_annIdealGenerator _ _ ((Associated.ne_zero_iff p_gen).mp h)
#align polynomial.monic_generator_eq_minpoly Polynomial.monic_generator_eq_minpoly

end Field

end Polynomial
```
