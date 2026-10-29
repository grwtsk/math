-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Prime/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Filippo A. E. Nuccio, Andrew Yang
-/
import Mathlib.RingTheory.Spectrum.Prime.Topology
import Mathlib.RingTheory.Ideal.Quotient.Noetherian
import Mathlib.RingTheory.Artinian.Module
import Mathlib.Topology.NoetherianSpace

/-!
This file proves additional properties of the prime spectrum a ring is Noetherian.
-/



namespace GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073

universe u v

namespace PrimeSpectrum

open TopologicalSpace

section IsNoetherianRing

variable (R : Type u) [CommRing R] [IsNoetherianRing R]

instance : NoetherianSpace (PrimeSpectrum R) :=
  ((noetherianSpace_TFAE <| PrimeSpectrum R).out 0 1).mpr (closedsEmbedding R).dual.wellFoundedLT

lemma _root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.minimalPrimes.finite_of_isNoetherianRing : (minimalPrimes R).Finite :=
  minimalPrimes.equivIrreducibleComponents R
    |>.set_finite_iff
    |>.mpr NoetherianSpace.finite_irreducibleComponents

lemma finite_setOf_isMin :
    {x : PrimeSpectrum R | IsMin x}.Finite := by
  have : Function.Injective (asIdeal (R := R)) := @PrimeSpectrum.ext _ _
  refine Set.Finite.of_finite_image (f := asIdeal) ?_ this.injOn
  simp_rw [isMin_iff]
  exact (minimalPrimes.finite_of_isNoetherianRing R).subset (Set.image_preimage_subset _ _)

lemma _root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.Ideal.finite_minimalPrimes_of_isNoetherianRing (I : Ideal R) :
    I.minimalPrimes.Finite := by
  rw [I.minimalPrimes_eq_comap]
  apply Set.Finite.image
  apply minimalPrimes.finite_of_isNoetherianRing

end IsNoetherianRing

section IsArtinianRing

variable (R : Type u) [CommRing R] [IsArtinianRing R]

instance : Ring.KrullDimLE 0 R := .mk₀ fun _ _ ↦ inferInstance

instance : DiscreteTopology (PrimeSpectrum R) :=
  discreteTopology_iff_finite_and_krullDimLE_zero.mpr ⟨inferInstance, inferInstance⟩

end IsArtinianRing

end PrimeSpectrum
