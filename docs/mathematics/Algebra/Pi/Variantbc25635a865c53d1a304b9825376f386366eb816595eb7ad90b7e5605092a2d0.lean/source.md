# Complete source: GRWTSK.Algebra.Pi.Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c754da3ab5716c420f4d60e426174c76af9816a` · SHA-256 `149d52001cc9dbe2f01f1cc2351d40e61a13f3d2d4a3ee82e6c0cb2087eea521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OfPi.Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OfPi.Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Smooth/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Idempotents
import Mathlib.RingTheory.Smooth.Basic

/-!

# Formal-smoothness of finite products of rings

## Main result

- `Algebra.FormallySmooth.pi_iff`: If `I` is finite, `Π i : I, A i` is `R`-formally-smooth
  if and only if each `A i` is `R`-formally-smooth.

-/


namespace GRWTSK.Algebra.OfPi.Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab

universe u v

namespace Algebra.FormallySmooth

variable {R : Type (max u v)} {I : Type u} (A : I → Type (max u v))
variable [CommRing R] [∀ i, CommRing (A i)] [∀ i, Algebra R (A i)]

theorem of_pi [FormallySmooth R (Π i, A i)] (i) :
    FormallySmooth R (A i) := by
  classical
  fapply FormallySmooth.of_split (Pi.evalAlgHom R A i)
  · apply AlgHom.ofLinearMap
      ((Ideal.Quotient.mkₐ R _).toLinearMap.comp (LinearMap.single _ _ i))
    · show Ideal.Quotient.mk _ (Pi.single i 1) = 1
      rw [← (Ideal.Quotient.mk _).map_one, ← sub_eq_zero, ← map_sub,
        Ideal.Quotient.eq_zero_iff_mem]
      have : Pi.single i 1 - 1 ∈ RingHom.ker (Pi.evalAlgHom R A i).toRingHom := by
        simp [RingHom.mem_ker]
      convert neg_mem (Ideal.pow_mem_pow this 2) using 1
      simp [pow_two, sub_mul, mul_sub, ← Pi.single_mul]
    · intro x y
      show Ideal.Quotient.mk _ _ = Ideal.Quotient.mk _ _ * Ideal.Quotient.mk _ _
      simp only [AlgHom.toRingHom_eq_coe, LinearMap.coe_single, Pi.single_mul, map_mul]
  · ext x
    show (Pi.single i x) i = x
    simp

theorem pi_iff [Finite I] :
    FormallySmooth R (Π i, A i) ↔ ∀ i, FormallySmooth R (A i) := by
  classical
  cases nonempty_fintype I
  constructor
  · exact fun _ ↦ of_pi A
  · intro H
    constructor
    intros B _ _ J hJ g
    have hJ' (x) (hx : x ∈ RingHom.ker (Ideal.Quotient.mk J)) : IsNilpotent x := by
      refine ⟨2, show x ^ 2 ∈ (⊥ : Ideal B) from ?_⟩
      rw [← hJ]
      exact Ideal.pow_mem_pow (by simpa using hx) 2
    obtain ⟨e, he, he'⟩ := ((CompleteOrthogonalIdempotents.single A).map
      g.toRingHom).lift_of_isNilpotent_ker (Ideal.Quotient.mk J) hJ'
        fun _ ↦ Ideal.Quotient.mk_surjective _
    replace he' : ∀ i, Ideal.Quotient.mk J (e i) = g (Pi.single i 1) := congr_fun he'
    let iso : B ≃ₐ[R] ∀ i, B ⧸ Ideal.span {1 - e i} :=
      { __ := Pi.algHom _ _ fun i ↦ Ideal.Quotient.mkₐ R _
        __ := Equiv.ofBijective _ he.bijective_pi }
    let J' := fun i ↦ J.map (Ideal.Quotient.mk (Ideal.span {1 - e i}))
    let ι : ∀ i, (B ⧸ J →ₐ[R] (B ⧸ _) ⧸ J' i) := fun i ↦ Ideal.quotientMapₐ _
      (IsScalarTower.toAlgHom R B _) Ideal.le_comap_map
    have hι : ∀ i x, ι i x = 0 → (e i) * x = 0 := by
      intros i x hix
      have : x ∈ (Ideal.span {1 - e i}).map (Ideal.Quotient.mk J) := by
        rw [← Ideal.ker_quotientMap_mk]; exact hix
      rw [Ideal.map_span, Set.image_singleton, Ideal.mem_span_singleton] at this
      obtain ⟨c, rfl⟩ := this
      rw [← mul_assoc, ← map_mul, mul_sub, mul_one, (he.idem i).eq, sub_self, map_zero, zero_mul]
    have : ∀ i : I, ∃ a : A i →ₐ[R] B ⧸ Ideal.span {1 - e i}, ∀ x,
        Ideal.Quotient.mk (J' i) (a x) = ι i (g (Pi.single i x)) := by
      intro i
      let g' : A i →ₐ[R] (B ⧸ _) ⧸ (J' i) := by
        apply AlgHom.ofLinearMap (((ι i).comp g).toLinearMap ∘ₗ LinearMap.single _ _ i)
        · suffices Ideal.Quotient.mk (Ideal.span {1 - e i}) (e i) = 1 by simp [ι, ← he', this]
          rw [← (Ideal.Quotient.mk _).map_one, eq_comm, Ideal.Quotient.mk_eq_mk_iff_sub_mem,
            Ideal.mem_span_singleton]
        · intros x y; simp [Pi.single_mul]
      obtain ⟨a, ha⟩ := FormallySmooth.comp_surjective (I := J' i)
        (by rw [← Ideal.map_pow, hJ, Ideal.map_bot]) g'
      exact ⟨a, AlgHom.congr_fun ha⟩
    choose a ha using this
    use iso.symm.toAlgHom.comp (Pi.algHom _ _ fun i ↦ (a i).comp (Pi.evalAlgHom R A i))
    ext x; rw [← AlgHom.toLinearMap_apply, ← AlgHom.toLinearMap_apply]; congr 1
    ext i x
    simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.comp_toLinearMap, AlgEquiv.toAlgHom_toLinearMap,
      LinearMap.coe_comp, LinearMap.coe_single, Function.comp_apply, AlgHom.toLinearMap_apply,
      AlgEquiv.toLinearMap_apply, Ideal.Quotient.mkₐ_eq_mk]
    obtain ⟨y, hy⟩ := Ideal.Quotient.mk_surjective (a i x)
    have hy' : Ideal.Quotient.mk (Ideal.span {1 - e i}) (y * e i) = a i x := by
      have : Ideal.Quotient.mk (Ideal.span {1 - e i}) (e i) = 1 := by
        rw [← (Ideal.Quotient.mk _).map_one, eq_comm, Ideal.Quotient.mk_eq_mk_iff_sub_mem,
          Ideal.mem_span_singleton]
      rw [map_mul, this, hy, mul_one]
    trans Ideal.Quotient.mk J (y * e i)
    · congr 1; apply iso.injective; ext j
      suffices a j (Pi.single i x j) = Ideal.Quotient.mk _ (y * e i) by simpa using this
      by_cases hij : i = j
      · subst hij
        rw [Pi.single_eq_same, hy']
      · have : Ideal.Quotient.mk (Ideal.span {1 - e j}) (e i) = 0 := by
          rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton]
          refine ⟨e i, by simp [he.ortho (Ne.symm hij), sub_mul]⟩
        rw [Pi.single_eq_of_ne (Ne.symm hij), map_zero, map_mul, this, mul_zero]
    · have : ι i (Ideal.Quotient.mk J (y * e i)) = ι i (g (Pi.single i x)) := by
        rw [← ha, ← hy']
        simp only [Ideal.quotient_map_mkₐ, IsScalarTower.coe_toAlgHom',
          Ideal.Quotient.algebraMap_eq, Ideal.Quotient.mkₐ_eq_mk, ι]
      rw [← sub_eq_zero, ← map_sub] at this
      replace this := hι _ _ this
      rwa [mul_sub, ← map_mul, mul_comm, mul_assoc, (he.idem i).eq, he', ← map_mul, ← Pi.single_mul,
        one_mul, sub_eq_zero] at this

instance [Finite I] [∀ i, FormallySmooth R (A i)] : FormallySmooth R (Π i, A i) :=
  (pi_iff _).mpr ‹_›

end Algebra.FormallySmooth
```
