# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Complete.Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6783bd6b43ff5f94184a40768321c08be8949bdd` · SHA-256 `a55e6dd1349b9c7f31b1827592b695ac176e099ccbc40b2a4a3f204932c2ff9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Incl.Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Incl.Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Closed/FunctorCategory/Complete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Adjunction.Lifting.Right
import Mathlib.CategoryTheory.Closed.FunctorCategory.Groupoid
import Mathlib.CategoryTheory.Groupoid.Discrete
import Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory
import Mathlib.CategoryTheory.Monad.Comonadicity
/-!

# Functors into a complete monoidal closed category form a monoidal closed category.

TODO (in progress by Joël Riou): make a more explicit construction of the internal hom in functor
categories.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Incl.Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96

universe v₁ v₂ u₁ u₂

open CategoryTheory MonoidalCategory MonoidalClosed Limits

noncomputable section

namespace CategoryTheory.Functor

section
variable (I : Type u₂) [Category.{v₂} I]

private abbrev incl : Discrete I ⥤ I := Discrete.functor id

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory C] [MonoidalClosed C]

variable [∀ (F : Discrete I ⥤ C), (Discrete.functor id).HasRightKanExtension F]
-- is also implied by: `[HasLimitsOfSize.{u₂, max u₂ v₂} C]`

instance : ReflectsIsomorphisms <| (whiskeringLeft _ _ C).obj (incl I) where
  reflects f h := by
    simp only [NatTrans.isIso_iff_isIso_app] at *
    intro X
    exact h ⟨X⟩

variable [HasLimitsOfShape WalkingParallelPair C]

instance : Comonad.PreservesLimitOfIsCoreflexivePair ((whiskeringLeft _ _ C).obj (incl I)) :=
  ⟨inferInstance⟩

instance : ComonadicLeftAdjoint ((whiskeringLeft _ _ C).obj (incl I)) :=
  Comonad.comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms
    ((incl I).ranAdjunction C)

instance (F : I ⥤ C) : IsLeftAdjoint (tensorLeft (incl I ⋙ F)) :=
  (ihom.adjunction (incl I ⋙ F)).isLeftAdjoint

/-- Auxiliary definition for `functorCategoryMonoidalClosed` -/
def functorCategoryClosed (F : I ⥤ C) : Closed F :=
  have := (ihom.adjunction (incl I ⋙ F)).isLeftAdjoint
  have := isLeftAdjoint_square_lift_comonadic (tensorLeft F) ((whiskeringLeft _ _ C).obj (incl I))
    ((whiskeringLeft _ _ C).obj (incl I)) (tensorLeft (incl I ⋙ F)) (Iso.refl _)
  { rightAdj := (tensorLeft F).rightAdjoint
    adj := Adjunction.ofIsLeftAdjoint (tensorLeft F) }

/--
Assuming the existence of certain limits, functors into a monoidal closed category form a
monoidal closed category.

Note: this is defined completely abstractly, and does not have any good definitional properties.
See the TODO in the module docstring.
-/
def functorCategoryMonoidalClosed : MonoidalClosed (I ⥤ C) where
  closed F := functorCategoryClosed I C F

end

end CategoryTheory.Functor
```
