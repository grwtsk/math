# Complete source: GRWTSK.Algebra.TranscendentalSeparable.Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37541afd3d2dd72541cb096c21ecbc6753015ae4` · SHA-256 `463f462b47babf35c52147277dc48fb0bf8eafb656620be8e9ec7690c82f9812`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraIsSeparablyGenerated.Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraIsSeparablyGenerated.Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"acb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/FieldTheory/TranscendentalSeparable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
module

public import Mathlib.FieldTheory.SeparablyGenerated

/-!
# Transcendental separable extensions

In this file we introduce the concept of separably generated field extensions and
transcendental separable field extensions.

## Main definitions and results

* `Algebra.IsSeparablyGenerated` : A field extension is separably generated if there exists
  a transcendence basis such that the extension above it is separable.

* `Algebra.IsTranscendentalSeparable` : A field extension is transcendental separable if
  every finitely generated subextension is separably generated.

-/


namespace GRWTSK.Algebra.AlgebraIsSeparablyGenerated.Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a

@[expose] public section

section

variable (k : Type*) (K : Type*) [Field k] [Field K] [Algebra k K]

/-- A field extension is separably generated if there exists a transcendence basis such that
the extension above it is separable. -/
@[mk_iff, stacks 030O "Part 1"]
class Algebra.IsSeparablyGenerated : Prop where
  isSeparable : ∃ (s : Set K), IsTranscendenceBasis k ((↑) : s → K) ∧
    Algebra.IsSeparable (IntermediateField.adjoin k s) K

variable {k K} in
lemma AlgEquiv.isSeparablyGenerated {K' : Type*} [Field K'] [Algebra k K'] (e : K ≃ₐ[k] K')
    [Algebra.IsSeparablyGenerated k K] : Algebra.IsSeparablyGenerated k K' := by
  rcases ‹Algebra.IsSeparablyGenerated k K› with ⟨s, isT, sep⟩
  refine ⟨e '' s, (e.isTranscendenceBasis isT).to_subtype_range' (by simp [Set.range_comp]), ?_⟩
  let e' := ((IntermediateField.adjoin k s).equivMap e.toAlgHom).trans
    (IntermediateField.equivOfEq (IntermediateField.adjoin_map k s e.toAlgHom))
  exact Algebra.IsSeparable.of_equiv_equiv e'.toRingEquiv e.toRingEquiv rfl

lemma Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic :
    Algebra.IsSeparable k K ↔ (Algebra.IsSeparablyGenerated k K ∧ Algebra.IsAlgebraic k K) := by
  refine ⟨fun h ↦ ⟨?_, inferInstance⟩, fun ⟨⟨s, isT, sep⟩, alg⟩ ↦ ?_⟩
  · use ∅
    refine ⟨isTranscendenceBasis_iff_algebraicIndependent_isAlgebraic.mpr ⟨?_, ?_⟩, ?_⟩
    · simpa using RingHom.injective _
    · simpa [← IntermediateField.isAlgebraic_adjoin_iff_top] using h.isAlgebraic.tower_top _
    · exact Algebra.isSeparable_tower_top_of_isSeparable k _ K
  · have h := Set.isEmpty_coe_sort.mp (isT.isEmpty_iff_isAlgebraic.mpr alg)
    have : IntermediateField.adjoin k s = ⊥ := IntermediateField.adjoin_eq_bot_iff.mpr (by simp [h])
    rw [this] at sep
    have := IntermediateField.isSeparable_bot k K
    exact Algebra.IsSeparable.trans k (⊥ : IntermediateField k K) K

instance (priority := low) [Algebra.IsSeparable k K] : Algebra.IsSeparablyGenerated k K :=
  ((Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic k K).mp ‹_›).1

instance [PerfectField k] [Algebra.EssFiniteType k K] : Algebra.IsSeparablyGenerated k K := by
  rcases exists_isTranscendenceBasis_and_isSeparable_of_perfectField k K with ⟨s, isT, sep⟩
  exact ⟨s, isT, sep⟩

/-- A field extension is transcendental separable if every finitely generated subextension is
separably generated. -/
@[mk_iff, stacks 030O "Part 2, called separable in the Stacks project."]
class Algebra.IsTranscendentalSeparable : Prop where
  forall_isSeparablyGenerated : ∀ (L : IntermediateField k K),
    Algebra.EssFiniteType k L → Algebra.IsSeparablyGenerated k L

lemma Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic :
    Algebra.IsSeparable k K ↔
      (Algebra.IsTranscendentalSeparable k K ∧ Algebra.IsAlgebraic k K) := by
  refine ⟨fun h ↦ ⟨⟨fun _ _ ↦ inferInstance⟩, inferInstance⟩, fun ⟨sep, alg⟩ ↦ ?_⟩
  refine Algebra.isSeparable_iff.mpr fun x ↦ ⟨IsIntegral.isIntegral x, ?_⟩
  let L := IntermediateField.adjoin k {x}
  have fin : EssFiniteType k L := IntermediateField.essFiniteType_iff.mpr
    (IntermediateField.fg_adjoin_of_finite (Set.finite_singleton x))
  have sep' := (Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic k L).mpr
    ⟨sep.forall_isSeparablyGenerated L fin, inferInstance⟩
  exact Subalgebra.isSeparable_iff.mp sep' x (by simp [L])

instance (priority := low) [Algebra.IsSeparable k K] : Algebra.IsTranscendentalSeparable k K :=
  ((Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic k K).mp ‹_›).1

end
```
