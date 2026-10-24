# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperty.Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7668ffac870c910c9d439c1005cad0830367619f` · SHA-256 `f5fa3812af5d35154482820ae142e69c23ba20c504b2a83695dd688d92bb32e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Llp.Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Llp.Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/MorphismProperty/LiftingProperty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen, Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Limits
import Mathlib.CategoryTheory.MorphismProperty.Retract
import Mathlib.CategoryTheory.LiftingProperties.Limits
import Mathlib.Order.GaloisConnection.Defs

/-!
# Left and right lifting properties

Given a morphism property `T`, we define the left and right lifting property with respect to `T`.

We show that the left lifting property is stable under retracts, cobase change, coproducts,
and composition, with dual statements for the right lifting property.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Llp.Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e

universe w v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] (T : MorphismProperty C)

namespace MorphismProperty

/-- Given `T : MorphismProperty C`, this is the class of morphisms that have the
left lifting property (llp) with respect to `T`. -/
def llp : MorphismProperty C := fun _ _ f ↦
  ∀ ⦃X Y : C⦄ (g : X ⟶ Y) (_ : T g), HasLiftingProperty f g

/-- Given `T : MorphismProperty C`, this is the class of morphisms that have the
right lifting property (rlp) with respect to `T`. -/
def rlp : MorphismProperty C := fun _ _ f ↦
  ∀ ⦃X Y : C⦄ (g : X ⟶ Y) (_ : T g), HasLiftingProperty g f

lemma llp_of_isIso {A B : C} (i : A ⟶ B) [IsIso i] :
    T.llp i :=
  fun _ _ _ _ ↦ inferInstance

lemma rlp_of_isIso {X Y : C} (f : X ⟶ Y) [IsIso f] :
    T.rlp f :=
  fun _ _ _ _ ↦ inferInstance

instance llp_isStableUnderRetracts : T.llp.IsStableUnderRetracts where
  of_retract h hg _ _ f hf :=
    letI := hg _ hf
    h.leftLiftingProperty f

instance rlp_isStableUnderRetracts : T.rlp.IsStableUnderRetracts where
  of_retract h hf _ _ g hg :=
    letI := hf _ hg
    h.rightLiftingProperty g

instance llp_isStableUnderCobaseChange : T.llp.IsStableUnderCobaseChange where
  of_isPushout h hf _ _ g' hg' :=
    letI := hf _ hg'
    h.hasLiftingProperty g'

open IsPullback in
instance rlp_isStableUnderBaseChange : T.rlp.IsStableUnderBaseChange where
  of_isPullback h hf _ _ f' hf' :=
    letI := hf _ hf'
    h.hasLiftingProperty f'

instance llp_isMultiplicative : T.llp.IsMultiplicative where
  id_mem X _ _ p hp := by infer_instance
  comp_mem i j hi hj _ _ p hp := by
    have := hi _ hp
    have := hj _ hp
    infer_instance

instance rlp_isMultiplicative : T.rlp.IsMultiplicative where
  id_mem X _ _ p hp := by infer_instance
  comp_mem i j hi hj _ _ p hp := by
    have := hi _ hp
    have := hj _ hp
    infer_instance

instance llp_isStableUnderCoproductsOfShape (J : Type*) :
    T.llp.IsStableUnderCoproductsOfShape J := by
  apply IsStableUnderCoproductsOfShape.mk
  intro A B _ _ f hf X Y p hp
  have := fun j ↦ hf j _ hp
  infer_instance

instance rlp_isStableUnderProductsOfShape (J : Type*) :
    T.rlp.IsStableUnderProductsOfShape J := by
  apply IsStableUnderProductsOfShape.mk
  intro A B _ _ f hf X Y p hp
  have := fun j ↦ hf j _ hp
  infer_instance

lemma le_llp_iff_le_rlp (T' : MorphismProperty C) :
    T ≤ T'.llp ↔ T' ≤ T.rlp :=
  ⟨fun h _ _ _ hp _ _ _ hi ↦ h _ hi _ hp,
    fun h _ _ _ hi _ _ _ hp ↦ h _ hp _ hi⟩

lemma gc_llp_rlp :
    GaloisConnection (OrderDual.toDual (α := MorphismProperty C) ∘ llp)
      (rlp ∘ OrderDual.ofDual) :=
  fun _ _ ↦ le_llp_iff_le_rlp _ _

lemma le_llp_rlp : T ≤ T.rlp.llp := by
  rw [le_llp_iff_le_rlp]

@[simp]
lemma rlp_llp_rlp : T.rlp.llp.rlp = T.rlp :=
  gc_llp_rlp.u_l_u_eq_u T

@[simp]
lemma llp_rlp_llp : T.llp.rlp.llp = T.llp :=
  gc_llp_rlp.l_u_l_eq_l T

lemma antitone_rlp : Antitone (rlp : MorphismProperty C → _) :=
  fun _ _ h ↦ gc_llp_rlp.monotone_u h

lemma antitone_llp : Antitone (llp : MorphismProperty C → _) :=
  fun _ _ h ↦ gc_llp_rlp.monotone_l h

lemma pushouts_le_llp_rlp : T.pushouts ≤ T.rlp.llp := by
  intro A B i hi
  exact (T.rlp.llp.isStableUnderCobaseChange_iff_pushouts_le).1 inferInstance i
    (pushouts_monotone T.le_llp_rlp _ hi)

@[simp]
lemma rlp_pushouts : T.pushouts.rlp = T.rlp := by
  apply le_antisymm
  · exact antitone_rlp T.le_pushouts
  · rw [← le_llp_iff_le_rlp]
    exact T.pushouts_le_llp_rlp

lemma colimitsOfShape_discrete_le_llp_rlp (J : Type w) :
    T.colimitsOfShape (Discrete J) ≤ T.rlp.llp := by
  intro A B i hi
  exact MorphismProperty.colimitsOfShape_le _ (colimitsOfShape_monotone T.le_llp_rlp _ _ hi)

lemma coproducts_le_llp_rlp : (coproducts.{w} T) ≤ T.rlp.llp := by
  intro A B i hi
  rw [coproducts_iff] at hi
  obtain ⟨J, hi⟩ := hi
  exact T.colimitsOfShape_discrete_le_llp_rlp J _ hi

@[simp]
lemma rlp_coproducts : (coproducts.{w} T).rlp = T.rlp := by
  apply le_antisymm
  · exact antitone_rlp T.le_coproducts
  · rw [← le_llp_iff_le_rlp]
    exact T.coproducts_le_llp_rlp

lemma retracts_le_llp_rlp : T.retracts ≤ T.rlp.llp :=
  le_trans (retracts_monotone T.le_llp_rlp) T.rlp.llp.retracts_le

@[simp]
lemma rlp_retracts : T.retracts.rlp = T.rlp := by
  apply le_antisymm
  · exact antitone_rlp T.le_retracts
  · rw [← le_llp_iff_le_rlp]
    exact T.retracts_le_llp_rlp

end MorphismProperty

end CategoryTheory
```
