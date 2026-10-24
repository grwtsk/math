# Complete source: GRWTSK.Algebra.Maps.Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a42fb61dd867fe411e0390f399693b19fe7fb34c` · SHA-256 `0fbd328b730897bf1eba7ef04b4a0cc32b31ee06c549173eb1d049c9d6febc60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Map.Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Map.Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/GradedAlgebra/Homogeneous/Maps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal
public import Mathlib.RingTheory.GradedAlgebra.RingHom

/-!
# Maps on homogeneous ideals

In this file we define `HomogeneousIdeal.map` and `HomogeneousIdeal.comap`.
-/


namespace GRWTSK.Algebra.Map.Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919

@[expose] public section

namespace HomogeneousIdeal

section arbitrary_grading

variable {A B C σ τ ω ι : Type*}
  [Semiring A] [Semiring B] [Semiring C]
  [SetLike σ A] [SetLike τ B] [SetLike ω C]
  [AddSubmonoidClass σ A] [AddSubmonoidClass τ B] [AddSubmonoidClass ω C]
  [DecidableEq ι] [AddMonoid ι]
  {𝒜 : ι → σ} {ℬ : ι → τ} {𝒞 : ι → ω}
  [GradedRing 𝒜] [GradedRing ℬ] [GradedRing 𝒞]
  (f : 𝒜 →+*ᵍ ℬ) (g : ℬ →+*ᵍ 𝒞)

/-- Map a homogeneous ideal along a graded ring homomorphism. The underlying ideal is
(definitionally) equal to `Ideal.map`. -/
def map (I : HomogeneousIdeal 𝒜) : HomogeneousIdeal ℬ where
  __ := I.toIdeal.map f
  is_homogeneous' i b hb := by
    rw [Ideal.map] at hb
    induction hb using Submodule.span_induction generalizing i with
    | zero => simp
    | add => simp [*, Ideal.add_mem]
    | mem a ha =>
      obtain ⟨a, ha, rfl⟩ := ha
      rw [← f.map_directSumDecompose]
      exact Ideal.mem_map_of_mem _ (I.2 _ ha)
    | smul a₁ a₂ ha₂ ih =>
      classical rw [smul_eq_mul, DirectSum.decompose_mul, DirectSum.coe_mul_apply]
      exact sum_mem fun ij hij ↦ Ideal.mul_mem_left _ _ <| ih _

/-- Pull back a homogeneous ideal along a graded ring homomorphism.
The underlying ideal is (definitionally) equal to `Ideal.comap`, whose underlying set is
definitionally equal to the preimage. -/
def comap (I : HomogeneousIdeal ℬ) : HomogeneousIdeal 𝒜 where
  __ := I.toIdeal.comap f
  is_homogeneous' n a ha := by
    rw [Ideal.mem_comap, HomogeneousIdeal.mem_iff, f.map_directSumDecompose]
    exact I.2 _ ha

variable {I : HomogeneousIdeal 𝒜} {J : HomogeneousIdeal ℬ}
  {K : HomogeneousIdeal 𝒞}

lemma map_le_iff_le_comap : I.map f ≤ J ↔ I ≤ J.comap f := Ideal.map_le_iff_le_comap

alias ⟨le_comap_of_map_le, map_le_of_le_comap⟩ := map_le_iff_le_comap

theorem gc_map_comap : GaloisConnection (map f) (comap f) := fun _ _ ↦
  map_le_iff_le_comap f

@[mono, aesop safe apply] lemma map_mono : Monotone (map f) := (gc_map_comap f).monotone_l

@[gcongr, mono] lemma comap_mono : Monotone (comap f) := (gc_map_comap f).monotone_u

@[simp] lemma toIdeal_comap : (J.comap f).toIdeal = J.toIdeal.comap f := rfl

@[simp] lemma coe_comap : J.comap f = f ⁻¹' J := rfl

@[simp] lemma toIdeal_map : (I.map f).toIdeal = I.toIdeal.map f := rfl

instance isPrime_comap [J.toIdeal.IsPrime] : (J.comap f).toIdeal.IsPrime :=
  inferInstanceAs (J.toIdeal.comap f).IsPrime -- this shows that the simpNF already has the instance

@[simp] lemma map_id : I.map (GradedRingHom.id 𝒜) = I := ext <| Ideal.map_id _

lemma map_map : (I.map f).map g = I.map (g.comp f) := ext <| Ideal.map_map _ _

lemma map_comp : I.map (g.comp f) = (I.map f).map g := (map_map f g).symm

@[simp] lemma comap_id : I.comap (GradedRingHom.id 𝒜) = I := rfl

lemma comap_comap : (K.comap g).comap f = K.comap (g.comp f) := rfl

end arbitrary_grading

section canonical_grading

variable {A B C σ τ ω ι : Type*}
  [Semiring A] [Semiring B] [Semiring C]
  [SetLike σ A] [SetLike τ B] [SetLike ω C]
  [AddSubmonoidClass σ A] [AddSubmonoidClass τ B] [AddSubmonoidClass ω C]
  [DecidableEq ι] [AddCommMonoid ι] [PartialOrder ι] [CanonicallyOrderedAdd ι]
  {𝒜 : ι → σ} {ℬ : ι → τ} {𝒞 : ι → ω}
  [GradedRing 𝒜] [GradedRing ℬ] [GradedRing 𝒞]
  {f : 𝒜 →+*ᵍ ℬ} {g : ℬ →+*ᵍ 𝒞}

theorem irrelevant_le_map_comp
    (hf : ℬ₊ ≤ 𝒜₊.map f) (hg : 𝒞₊ ≤ ℬ₊.map g) : 𝒞₊ ≤ 𝒜₊.map (g.comp f) := by
  rw [map_comp]
  exact hg.trans <| map_mono _ hf

end canonical_grading

end HomogeneousIdeal
```
