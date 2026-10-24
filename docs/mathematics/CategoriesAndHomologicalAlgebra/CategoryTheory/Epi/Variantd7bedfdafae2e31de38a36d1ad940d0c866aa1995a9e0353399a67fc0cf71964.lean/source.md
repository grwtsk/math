# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c182248450517067ba3534f5f089f8ca5b48d833` · SHA-256 `bcb68880277768470ce7c8d1d5e36f561ed22533c7ac229377f2bd456b8da01b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiIffLocallySurjectiveOnCompHaus.Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EpiIffLocallySurjectiveOnCompHaus.Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Epi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.ConcreteCategory.EpiMono
import Mathlib.CategoryTheory.Sites.Coherent.LocallySurjective
import Mathlib.CategoryTheory.Sites.EpiMono
import Mathlib.Condensed.Equivalence
import Mathlib.Condensed.Module
/-!

# Epimorphisms of condensed objects

This file characterises epimorphisms of condensed sets and condensed `R`-modules for any ring `R`,
as those morphisms which are objectwise surjective on `Stonean` (see
`CondensedSet.epi_iff_surjective_on_stonean` and `CondensedMod.epi_iff_surjective_on_stonean`).
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiIffLocallySurjectiveOnCompHaus.Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882

universe v u w u' v'

open CategoryTheory Sheaf Opposite Limits Condensed ConcreteCategory

namespace Condensed

variable (A : Type u') [Category.{v'} A] {FA : A → A → Type*} {CA : A → Type v'}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{v'} A FA]

  [HasFunctorialSurjectiveInjectiveFactorization A]

variable {X Y : Condensed.{u} A} (f : X ⟶ Y)

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
variable
  [(coherentTopology CompHaus).WEqualsLocallyBijective A]
  [HasSheafify (coherentTopology CompHaus) A]
  [(coherentTopology CompHaus.{u}).HasSheafCompose (CategoryTheory.forget A)]
  [Balanced (Sheaf (coherentTopology CompHaus) A)]
  [PreservesFiniteProducts (CategoryTheory.forget A)] in
lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : ToType (Y.val.obj ⟨S⟩)),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : ToType (X.val.obj ⟨S'⟩)),
        f.val.app ⟨S'⟩ x = Y.val.map ⟨φ⟩ y) := by
  rw [← isLocallySurjective_iff_epi', coherentTopology.isLocallySurjective_iff,
    regularTopology.isLocallySurjective_iff]
  simp_rw [((CompHaus.effectiveEpi_tfae _).out 0 2 :)]

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
variable
  [PreservesFiniteProducts (CategoryTheory.forget A)]
  [∀ (X : CompHausᵒᵖ), HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
  [(extensiveTopology Stonean).WEqualsLocallyBijective A]
  [HasSheafify (extensiveTopology Stonean) A]
  [(extensiveTopology Stonean.{u}).HasSheafCompose (CategoryTheory.forget A)]
  [Balanced (Sheaf (extensiveTopology Stonean) A)] in
lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.val.app (op S.compHaus)) := by
  rw [← (StoneanCompHaus.equivalence A).inverse.epi_map_iff_epi,
    ← Presheaf.coherentExtensiveEquivalence.functor.epi_map_iff_epi,
    ← isLocallySurjective_iff_epi']
  exact extensiveTopology.isLocallySurjective_iff (D := A) _

end Condensed

namespace CondensedSet

variable {X Y : CondensedSet.{u}} (f : X ⟶ Y)

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : Y.val.obj ⟨S⟩),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : X.val.obj ⟨S'⟩),
        f.val.app ⟨S'⟩ x = Y.val.map ⟨φ⟩ y) :=
  Condensed.epi_iff_locallySurjective_on_compHaus _ f

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.val.app (op S.compHaus)) :=
  Condensed.epi_iff_surjective_on_stonean _ f

end CondensedSet

namespace CondensedMod

variable (R : Type (u + 1)) [Ring R] {X Y : CondensedMod.{u} R} (f : X ⟶ Y)

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : Y.val.obj ⟨S⟩),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : X.val.obj ⟨S'⟩),
        f.val.app ⟨S'⟩ x = Y.val.map ⟨φ⟩ y) :=
  Condensed.epi_iff_locallySurjective_on_compHaus _ f

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.val.app (op S.compHaus)) :=
  have : HasLimitsOfSize.{u, u + 1} (ModuleCat R) :=
    hasLimitsOfSizeShrink.{u, u + 1, u + 1, u + 1} _
  Condensed.epi_iff_surjective_on_stonean _ f

end CondensedMod
```
