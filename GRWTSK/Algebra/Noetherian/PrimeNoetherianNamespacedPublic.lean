-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteSetOfPredIsMin.Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteSetOfPredIsMin.Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Spectrum/Prime/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Filippo A. E. Nuccio, Andrew Yang
-/
module

public import Mathlib.RingTheory.Artinian.Ring
public import Mathlib.RingTheory.Ideal.MinimalPrime.Noetherian
public import Mathlib.RingTheory.Spectrum.Prime.Topology
public import Mathlib.Topology.NoetherianSpace

/-!
# Prime spectra of Noetherian and Artinian rings

This file proves additional properties of the prime spectrum of a Noetherian or Artinian ring.
-/


namespace GRWTSK.Algebra.FiniteSetOfPredIsMin.Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b

public section


universe u v

namespace PrimeSpectrum

open TopologicalSpace

section IsNoetherianRing

variable (R : Type u) [CommSemiring R] [IsNoetherianRing R]

instance : NoetherianSpace (PrimeSpectrum R) :=
  ((noetherianSpace_TFAE <| PrimeSpectrum R).out 1 2).mpr (closedsEmbedding R).dual.wellFoundedLT

lemma finite_setOfPred_isMin :
    {x : PrimeSpectrum R | IsMin x}.Finite := by
  have : Function.Injective (asIdeal (R := R)) := @PrimeSpectrum.ext _ _
  refine Set.Finite.of_finite_image (f := asIdeal) ?_ this.injOn
  simp_rw [isMin_iff]
  exact (minimalPrimes.finite_of_isNoetherianRing R).subset (Set.image_preimage_subset _ _)

@[deprecated (since := "2026-07-09")] alias finite_setOf_isMin := finite_setOfPred_isMin

end IsNoetherianRing

end PrimeSpectrum

namespace IsArtinianRing

open PrimeSpectrum

variable (R : Type*) [CommRing R] [IsArtinianRing R]

instance : Ring.KrullDimLE 0 R := .mk₀ fun _ _ ↦ inferInstance

instance : DiscreteTopology (PrimeSpectrum R) :=
  discreteTopology_iff_finite_and_krullDimLE_zero.mpr ⟨inferInstance, inferInstance⟩

variable {R} in
lemma exists_not_mem_forall_mem_of_ne (p : Ideal R) [p.IsPrime] :
    ∃ r ∉ p, IsIdempotentElem r ∧ ∀ q : Ideal R, q.IsPrime → q ≠ p → r ∈ q := by
  classical
  obtain ⟨r, hr⟩ := PrimeSpectrum.toPiLocalization_bijective.2 (Pi.single ⟨p, inferInstance⟩ 1)
  have : algebraMap R (Localization p.primeCompl) r = 1 := by
    simpa [PrimeSpectrum.toPiLocalization,
      -FaithfulSMul.algebraMap_eq_one_iff] using funext_iff.mp hr ⟨p, inferInstance⟩
  refine ⟨r, ?_, ?_, ?_⟩
  · rw [← IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime p) p, this]
    simp
  · apply PrimeSpectrum.toPiLocalization_bijective.injective
    simp [map_mul, hr, ← Pi.single_mul]
  · intro q hq e
    have : PrimeSpectrum.mk q inferInstance ≠ ⟨p, inferInstance⟩ := ne_of_apply_ne (·.1) e
    have : (algebraMap R (Localization.AtPrime q)) r = 0 := by
      simpa [PrimeSpectrum.toPiLocalization, this,
        -FaithfulSMul.algebraMap_eq_zero_iff] using funext_iff.mp hr ⟨q, inferInstance⟩
    rw [← IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime q) q, this]
    simp

variable (F : Type*) [Field F] [Algebra F R] [Module.Finite F R]

theorem finrank_eq_sum_primeSpectrum [Fintype (PrimeSpectrum R)] :
    Module.finrank F R = ∑ p : PrimeSpectrum R, Module.finrank F (Localization.AtPrime p.asIdeal) :=
  have (p : Ideal R) [p.IsPrime] : Module.Finite F (Localization.AtPrime p) :=
    Module.Finite.of_surjective (Algebra.algHom F R (Localization.AtPrime p)).toLinearMap
      (localization_surjective p.primeCompl (Localization.AtPrime p))
  ((toPiLocalizationEquiv R).restrictScalars F).toLinearEquiv.finrank_eq.trans
    (Module.finrank_pi_fintype F)

end IsArtinianRing
