# Complete source: GRWTSK.Algebra.Polynomial.Variant487dc4c51e7de6e40cdf6247747a7c1f13a4a77716f20e72b35f272459bb6bc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4170a0ee42a7b55588bc04f4d83a79f0f1b0d802` · SHA-256 `ba73968d85ca9a755d96457deac09379e3c9d603c18fdf8746d8795e2dab93b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NotWeaklyQuasiFiniteAt.Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NotWeaklyQuasiFiniteAt.Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/QuasiFinite/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.RingTheory.LocalRing.ResidueField.Polynomial
public import Mathlib.RingTheory.QuasiFinite.Weakly

/-! # Quasi-finite primes in polynomial algebras -/


namespace GRWTSK.Algebra.NotWeaklyQuasiFiniteAt.Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c

public section

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

namespace Polynomial

attribute [local instance] Algebra.WeaklyQuasiFiniteAt.finite_locoalization in
lemma not_weaklyQuasiFiniteAt (P : Ideal R[X]) [P.IsPrime] : ¬ Algebra.WeaklyQuasiFiniteAt R P := by
  intro H
  wlog hR : IsField R
  · let p := P.under R
    obtain ⟨Q, hQ⟩ := (PrimeSpectrum.preimageEquivFiber R R[X]
        ⟨p, inferInstance⟩).symm.surjective ⟨⟨P, ‹_›⟩, rfl⟩
    have inst : Algebra.WeaklyQuasiFiniteAt p.ResidueField Q.asIdeal :=
      .baseChange P Q.asIdeal congr($(hQ.symm).1.1)
    exact this (Q.asIdeal.comap (polyEquivTensor' R p.ResidueField).toRingHom)
      inferInstance (Field.toIsField _)
  let := hR.toField
  have := Module.Finite.of_injective
    (IsScalarTower.toAlgHom R R[X] (Localization.AtPrime P)).toLinearMap
    (IsLocalization.injective _ P.primeCompl_le_nonZeroDivisors)
  exact transcendental_X R (Algebra.IsIntegral.isIntegral X).isAlgebraic

/-- `R[X]` is not quasi-finite over `R` at any prime. -/
lemma not_quasiFiniteAt (P : Ideal R[X]) [P.IsPrime] : ¬ Algebra.QuasiFiniteAt R P :=
  fun _ ↦ not_weaklyQuasiFiniteAt P inferInstance

lemma map_under_lt_comap_of_weaklyQuasiFiniteAt
    (f : R[X] →ₐ[R] S) (P : Ideal S) [P.IsPrime] [Algebra.WeaklyQuasiFiniteAt R P] :
    (P.under R).map C < P.comap (f : R[X] →+* S) := by
  algebraize [f.toRingHom]
  refine lt_of_le_of_ne (Ideal.map_le_iff_le_comap.mpr ?_) fun e ↦ ?_
  · rw [Ideal.comap_comap, ← algebraMap_eq, f.comp_algebraMap]
  let := Localization.AtPrime.algebraOfLiesOver (P.under R) (P.under R[X])
  let := Localization.AtPrime.algebraOfLiesOver (P.under R[X]) P
  let := Localization.AtPrime.algebraOfLiesOver (P.under R) P
  have : Module.Finite (Ideal.under R P).ResidueField P.ResidueField :=
    Algebra.WeaklyQuasiFiniteAt.finite_residueField ..
  have : Module.Finite (P.under R).ResidueField (P.under R[X]).ResidueField :=
    .of_injective (IsScalarTower.toAlgHom _ _ P.ResidueField).toLinearMap
      (algebraMap (P.under R[X]).ResidueField P.ResidueField).injective
  have : Module.Finite (P.under R).ResidueField (RatFunc (P.under R).ResidueField) :=
    .of_surjective (residueFieldMapCAlgEquiv _ (P.under _) e.symm).toLinearMap
      (residueFieldMapCAlgEquiv _ (P.under _) e.symm).surjective
  exact RatFunc.transcendental_X (K := (P.under R).ResidueField)
    (Algebra.IsIntegral.isIntegral _).isAlgebraic

lemma map_under_lt_comap_of_quasiFiniteAt
    (f : R[X] →ₐ[R] S) (P : Ideal S) [P.IsPrime] [Algebra.QuasiFiniteAt R P] :
    (P.under R).map C < P.comap (f : R[X] →+* S) :=
  map_under_lt_comap_of_weaklyQuasiFiniteAt f P

lemma not_ker_le_map_C_of_surjective_of_weaklyQuasiFiniteAt
    (f : R[X] →ₐ[R] S) (hf : Function.Surjective f)
    (P : Ideal S) [P.IsPrime] [Algebra.WeaklyQuasiFiniteAt R P] :
    ¬ RingHom.ker f ≤ (P.under R).map C := by
  intro H
  algebraize [f.toRingHom]
  let p := P.under R
  have H' : (RingHom.ker f).map (mapRingHom (algebraMap R p.ResidueField)) = ⊥ := by
    rw [← le_bot_iff, Ideal.map_le_iff_le_comap]
    intro x hx
    simpa [Polynomial.ext_iff, Ideal.mem_map_C_iff, p] using! H hx
  let g' : p.ResidueField[X] ≃ₐ[p.ResidueField] p.Fiber S :=
    .trans ((AlgEquiv.quotientBot _ _).symm.trans (Ideal.quotientEquivAlgOfEq _ H'.symm))
      (Polynomial.fiberEquivQuotient f hf _).symm
  obtain ⟨Q, hQ⟩ := (PrimeSpectrum.preimageEquivFiber _ _
      ⟨p, inferInstance⟩).symm.surjective ⟨⟨P, ‹_›⟩, PrimeSpectrum.ext (P.over_def p).symm⟩
  have inst : Algebra.WeaklyQuasiFiniteAt p.ResidueField Q.asIdeal :=
    .baseChange P Q.asIdeal congr($(hQ.symm).1.1)
  exact Polynomial.not_weaklyQuasiFiniteAt (Q.asIdeal.comap g'.toRingHom) inferInstance

/--
If `P` is a prime of `R[X]/I` that is quasi finite over `R`,
then `I` is not contained in `(P ∩ R)[X]`.

For usability, we replace `I` by the kernel of a surjective map `R[X] →ₐ[R] S`. -/
lemma not_ker_le_map_C_of_surjective_of_quasiFiniteAt
    (f : R[X] →ₐ[R] S) (hf : Function.Surjective f)
    (P : Ideal S) [P.IsPrime] [Algebra.QuasiFiniteAt R P] :
    ¬ RingHom.ker f ≤ (P.under R).map C :=
  not_ker_le_map_C_of_surjective_of_weaklyQuasiFiniteAt f hf P

end Polynomial
```
