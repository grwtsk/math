# Complete source: GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6e8b6be0ce55816e8a2377f35e1fe5341becae5` · SHA-256 `27944a0d99fd6ae9015ecbc384a0f99405437234e25f2acc3ca92c21a5131966`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.UniversallyInjective.Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Morphisms/UniversallyInjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.PullbackCarrier
import Mathlib.Topology.LocalAtTarget

/-!
# Universally injective morphism

A morphism of schemes `f : X ⟶ Y` is universally injective if `X ×[Y] Y' ⟶ Y'` is injective
for all base changes `Y' ⟶ Y`. This is equivalent to the diagonal morphism being surjective
(`AlgebraicGeometry.UniversallyInjective.iff_diagonal`).

We show that being universally injective is local at the target, and is stable under
compositions and base changes.

## TODO
- https://stacks.math.columbia.edu/tag/01S4
  Show that this is equivalent to radicial morphisms
  (injective + purely inseparable residue field extensions)

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51

noncomputable section

open CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

universe v u

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

open CategoryTheory.MorphismProperty Function

/--
A morphism of schemes `f : X ⟶ Y` is universally injective if the base change `X ×[Y] Y' ⟶ Y'`
along any morphism `Y' ⟶ Y` is injective (on points).
-/
@[mk_iff]
class UniversallyInjective (f : X ⟶ Y) : Prop where
  universally_injective : universally (topologically (Injective ·)) f

theorem Scheme.Hom.injective (f : X.Hom Y) [UniversallyInjective f] :
    Function.Injective f.base :=
  UniversallyInjective.universally_injective _ _ _ .of_id_snd

theorem universallyInjective_eq :
    @UniversallyInjective = universally (topologically (Injective ·)) := by
  ext X Y f; rw [universallyInjective_iff]

theorem universallyInjective_eq_diagonal :
    @UniversallyInjective = diagonal @Surjective := by
  apply le_antisymm
  · intro X Y f hf
    refine ⟨fun x ↦ ⟨(pullback.fst f f).base x, hf.1 _ _ _ (IsPullback.of_hasPullback f f) ?_⟩⟩
    rw [← Scheme.comp_base_apply, pullback.diagonal_fst]
    rfl
  · rw [← universally_eq_iff.mpr (inferInstanceAs (IsStableUnderBaseChange (diagonal @Surjective))),
      universallyInjective_eq]
    apply universally_mono
    intro X Y f hf x₁ x₂ e
    obtain ⟨t, ht₁, ht₂⟩ := Scheme.Pullback.exists_preimage_pullback _ _ e
    obtain ⟨t, rfl⟩ := hf.1 t
    rw [← ht₁, ← ht₂, ← Scheme.comp_base_apply, ← Scheme.comp_base_apply, pullback.diagonal_fst,
      pullback.diagonal_snd]

theorem UniversallyInjective.iff_diagonal :
    UniversallyInjective f ↔ Surjective (pullback.diagonal f) := by
  rw [universallyInjective_eq_diagonal]; rfl

instance (priority := 900) [Mono f] : UniversallyInjective f :=
  have := (pullback.isIso_diagonal_iff f).mpr inferInstance
  (UniversallyInjective.iff_diagonal f).mpr inferInstance

theorem UniversallyInjective.respectsIso : RespectsIso @UniversallyInjective :=
  universallyInjective_eq_diagonal.symm ▸ inferInstance

instance UniversallyInjective.isStableUnderBaseChange :
    IsStableUnderBaseChange @UniversallyInjective :=
  universallyInjective_eq_diagonal.symm ▸ inferInstance

instance universallyInjective_isStableUnderComposition :
    IsStableUnderComposition @UniversallyInjective :=
  universallyInjective_eq ▸ inferInstance

instance : MorphismProperty.IsMultiplicative @UniversallyInjective where
  id_mem _ := inferInstance

instance universallyInjective_isLocalAtTarget : IsLocalAtTarget @UniversallyInjective :=
  universallyInjective_eq_diagonal.symm ▸ inferInstance

end AlgebraicGeometry
```
