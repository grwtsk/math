# Complete source: GRWTSK.Algebra.RingTheory.IsOpenComapC.Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da5bf9d6200b96310508c193b6ec6f2a2d57f7f6` · SHA-256 `fc136d37c0c14dfeca86f67e5db3fff4ac199f5e59789abad35098fcb8c1175f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.ImageOfDf.Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ImageOfDf.Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Prime/IsOpenComapC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.RingTheory.Spectrum.Prime.Topology

/-!
The morphism `Spec R[x] --> Spec R` induced by the natural inclusion `R --> R[x]` is an open map.

The main result is the first part of the statement of Lemma 00FB in the Stacks Project.

https://stacks.math.columbia.edu/tag/00FB
-/



namespace GRWTSK.Algebra.RingTheory.ImageOfDf.Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4

open Ideal Polynomial PrimeSpectrum Set

namespace AlgebraicGeometry

namespace Polynomial

variable {R : Type*} [CommRing R] {f : R[X]}


/-- Given a polynomial `f ∈ R[x]`, `imageOfDf` is the subset of `Spec R` where at least one
of the coefficients of `f` does not vanish.  Lemma `imageOfDf_eq_comap_C_compl_zeroLocus`
proves that `imageOfDf` is the image of `(zeroLocus {f})ᶜ` under the morphism
`comap C : Spec R[x] → Spec R`. -/
def imageOfDf (f : R[X]) : Set (PrimeSpectrum R) :=
  { p : PrimeSpectrum R | ∃ i : ℕ, coeff f i ∉ p.asIdeal }

theorem isOpen_imageOfDf : IsOpen (imageOfDf f) := by
  rw [imageOfDf, setOf_exists fun i (x : PrimeSpectrum R) => coeff f i ∉ x.asIdeal]
  exact isOpen_iUnion fun i => isOpen_basicOpen

/-- If a point of `Spec R[x]` is not contained in the vanishing set of `f`, then its image in
`Spec R` is contained in the open set where at least one of the coefficients of `f` is non-zero.
This lemma is a reformulation of `exists_C_coeff_notMem`. -/
theorem comap_C_mem_imageOfDf {I : PrimeSpectrum R[X]}
    (H : I ∈ (zeroLocus {f} : Set (PrimeSpectrum R[X]))ᶜ) :
    PrimeSpectrum.comap (Polynomial.C : R →+* R[X]) I ∈ imageOfDf f :=
  exists_C_coeff_notMem (mem_compl_zeroLocus_iff_notMem.mp H)

/-- The open set `imageOfDf f` coincides with the image of `basicOpen f` under the
morphism `C⁺ : Spec R[x] → Spec R`. -/
theorem imageOfDf_eq_comap_C_compl_zeroLocus :
    imageOfDf f = PrimeSpectrum.comap (C : R →+* R[X]) '' (zeroLocus {f})ᶜ := by
  ext x
  refine ⟨fun hx => ⟨⟨map C x.asIdeal, isPrime_map_C_of_isPrime x.isPrime⟩, ⟨?_, ?_⟩⟩, ?_⟩
  · rw [mem_compl_iff, mem_zeroLocus, singleton_subset_iff]
    obtain ⟨i, hi⟩ := hx
    exact fun a => hi (mem_map_C_iff.mp a i)
  · ext x
    refine ⟨fun h => ?_, fun h => subset_span (mem_image_of_mem C.1 h)⟩
    rw [← @coeff_C_zero R x _]
    exact mem_map_C_iff.mp h 0
  · rintro ⟨xli, complement, rfl⟩
    exact comap_C_mem_imageOfDf complement

/-- The morphism `C⁺ : Spec R[x] → Spec R` is open. -/
@[stacks 00FB "First part"]
theorem isOpenMap_comap_C : IsOpenMap (PrimeSpectrum.comap (C : R →+* R[X])) := by
  rintro U ⟨s, z⟩
  rw [← compl_compl U, ← z, ← iUnion_of_singleton_coe s, zeroLocus_iUnion, compl_iInter,
    image_iUnion]
  simp_rw [← imageOfDf_eq_comap_C_compl_zeroLocus]
  exact isOpen_iUnion fun f => isOpen_imageOfDf

end Polynomial

end AlgebraicGeometry
```
