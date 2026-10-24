# Complete source: GRWTSK.Algebra.Homeomorph.Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82bc15aabdf28c0b1cb60e6304533c79851d986` · SHA-256 `b0c5c4266f1ff25a3d6b82af0b6fb7cd736e6c6f135016372b9fe1883db802d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PrimeSpectrumIsHomeomorphComap.Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PrimeSpectrumIsHomeomorphComap.Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Prime/Homeomorph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten, Junyan Xu
-/
import Mathlib.FieldTheory.PurelyInseparable.Basic
import Mathlib.RingTheory.Flat.Basic
import Mathlib.RingTheory.Spectrum.Prime.Topology

/-!
# Purely inseparable extensions are universal homeomorphisms

If `K` is a purely inseparable extension of `k`, the induced map `Spec K ⟶ Spec k` is a universal
homeomorphism, i.e. it stays a homeomorphism after arbitrary base change.

## Main results

- `PrimeSpectrum.isHomeomorph_comap`: if `f : R →+* S` is a ring map with locally nilpotent kernel
  such that for every `x : S`, there exists `n > 0` such that `x ^ n` is in the image of `f`,
  `Spec f` is a homeomorphism.
- `PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable`: `Spec K ⟶ Spec k` is a universal
  homeomorphism for a purely inseparable field extension `K` over `k`.
-/


namespace GRWTSK.Algebra.PrimeSpectrumIsHomeomorphComap.Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b

open TensorProduct

variable (k K R S : Type*) [Field k] [Field K] [Algebra k K] [CommRing R] [Algebra k R] [CommRing S]

variable {R S} in
/-- If the kernel of `f : R →+* S` consists of nilpotent elements and for every `x : S`,
there exists `n > 0` such that `x ^ n` is in the range of `f`, then `Spec f` is a homeomorphism.
Note: This does not hold for semirings, because `ℕ →+* ℤ` satisfies these conditions, but
`Spec ℕ` has one more point than `Spec ℤ`. -/
@[stacks 0BR8 "Homeomorphism part"]
lemma PrimeSpectrum.isHomeomorph_comap (f : R →+* S) (H : ∀ (x : S), ∃ n > 0, x ^ n ∈ f.range)
    (hker : RingHom.ker f ≤ nilradical R) : IsHomeomorph (comap f) := by
  have h1 : Function.Injective (comap f) := by
    intro q q' hqq'
    ext x
    obtain ⟨n, hn, y, hy⟩ := H x
    rw [← q.2.pow_mem_iff_mem _ hn, ← q'.2.pow_mem_iff_mem _ hn, ← hy]
    rw [PrimeSpectrum.ext_iff, SetLike.ext_iff] at hqq'
    apply hqq'
  have hint : f.kerLift.IsIntegral := fun x ↦
    have ⟨n, hn, y, hy⟩ := H x
    let _ := f.kerLift.toAlgebra
    IsIntegral.of_pow hn (hy ▸ f.kerLift.isIntegralElem_map (x := ⟦y⟧))
  have hbij : Function.Bijective (comap f) :=
    ⟨h1, (comap_quotientMk_bijective_of_le_nilradical hker).2.comp <|
      hint.specComap_surjective f.kerLift_injective⟩
  refine ⟨(comap f).continuous, ?_, h1, hbij.2⟩
  rw [isTopologicalBasis_basic_opens.isOpenMap_iff]
  rintro - ⟨s, rfl⟩
  obtain ⟨n, hn, r, hr⟩ := H s
  have : (comap f) '' (basicOpen s) = basicOpen r :=
    (Set.eq_preimage_iff_image_eq hbij).mp <| by rw [← basicOpen_pow _ n hn, ← hr]; rfl
  exact this ▸ isOpen_basicOpen

/-- Purely inseparable field extensions are universal homeomorphisms. -/
@[stacks 0BRA "Special case for purely inseparable field extensions"]
lemma PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable [IsPurelyInseparable k K] :
    IsHomeomorph (comap <| algebraMap R (R ⊗[k] K)) := by
  let q := ringExpChar k
  refine isHomeomorph_comap _ (IsPurelyInseparable.exists_pow_mem_range_tensorProduct) ?_
  convert bot_le
  rw [← RingHom.injective_iff_ker_eq_bot]
  exact Algebra.TensorProduct.includeLeft_injective (S := R) (algebraMap k K).injective

/-- If `L` is a purely inseparable extension of `K` over `R` and `S` is an `R`-algebra,
the induced map `Spec (L ⊗[R] S) ⟶ Spec (K ⊗[R] S)` is a homeomorphism. -/
lemma PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable [Algebra R K]
    [Algebra R S] (L : Type*) [Field L] [Algebra R L] [Algebra K L] [IsScalarTower R K L]
    [IsPurelyInseparable K L] :
    IsHomeomorph (comap (Algebra.TensorProduct.map (Algebra.ofId K L) (.id R S)).toRingHom) := by
  let e : (L ⊗[R] S) ≃ₐ[K] L ⊗[K] (K ⊗[R] S) :=
    (Algebra.TensorProduct.cancelBaseChange R K K L S).symm
  let e2 : L ⊗[K] (K ⊗[R] S) ≃ₐ[K] (K ⊗[R] S) ⊗[K] L := Algebra.TensorProduct.comm ..
  have heq : Algebra.TensorProduct.map (Algebra.ofId K L) (AlgHom.id R S) =
      (e.symm.toAlgHom.comp e2.symm.toAlgHom).comp
        (IsScalarTower.toAlgHom K (K ⊗[R] S) ((K ⊗[R] S) ⊗[K] L)) := by
    ext; simp [e, e2]
  rw [heq]
  simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.toRingHom_eq_coe, AlgHom.comp_toRingHom,
    AlgEquiv.toAlgHom_toRingHom, IsScalarTower.coe_toAlgHom, comap_comp, ContinuousMap.coe_comp]
  exact (isHomeomorph_comap_of_isPurelyInseparable K L (K ⊗[R] S)).comp <|
    (isHomeomorph_comap_of_bijective e2.symm.bijective).comp <|
    isHomeomorph_comap_of_bijective e.symm.bijective
```
