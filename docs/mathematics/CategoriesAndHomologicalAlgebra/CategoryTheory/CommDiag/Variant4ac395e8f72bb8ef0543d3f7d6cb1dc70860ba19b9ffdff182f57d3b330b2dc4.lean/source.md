# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommDiag.Variant4ac395e8f72bb8ef0543d3f7d6cb1dc70860ba19b9ffdff182f57d3b330b2dc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b579b19d1f451256e897fbf89722a78462c9838` · SHA-256 `5d7f73800306c2a053372747221d3020d584b2f1f5bdc2d17ae6ab4447cb9145`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommDiag.Variant89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommDiag.Variant89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Widget/CommDiag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Widget.CommDiag
import ProofWidgets.Component.Panel.SelectionPanel
import ProofWidgets.Component.Panel.GoalTypePanel

/-! # Example use of commutative diagram widgets -/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommDiag.Variant89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57

universe u
namespace CategoryTheory
open ProofWidgets

/-- Local instance to make examples work. -/
local instance : Category (Type u) where
  Hom α β := α → β
  id _ := id
  comp f g := g ∘ f
  id_comp _ := rfl
  comp_id _ := rfl
  assoc _ _ _ := rfl

example {f g : Nat ⟶ Bool}: f = g → (f ≫ 𝟙 Bool) = (g ≫ 𝟙 Bool) := by
  with_panel_widgets [GoalTypePanel]
    intro h
    exact h

example {fButActuallyTheNameIsReallyLong g : Nat ⟶ Bool}: fButActuallyTheNameIsReallyLong = g →
    fButActuallyTheNameIsReallyLong = (g ≫ 𝟙 Bool) := by
  with_panel_widgets [GoalTypePanel]
    intro h
    conv =>
      rhs
      enter [1]
      rw [← h]
    rfl

-- from Sina Hazratpour
example {X Y Z : Type} {f g : X ⟶ Y} {k : Y ⟶ Y} {f' : Y ⟶ Z} {i : X ⟶ Z}
    (h' : g ≫ f' = i) :
    (f ≫ k) = g → ((f ≫ k) ≫ f') = (g ≫ 𝟙 Y ≫ f') := by
  with_panel_widgets [GoalTypePanel]
    intro h
    rw [
      h,
      ← Category.assoc g (𝟙 Y) f',
      h',
      Category.comp_id g, h'
    ]

example {X Y Z : Type} {f i : X ⟶ Y}
    {g j : Y ⟶ Z} {h : X ⟶ Z} :
    h = f ≫ g →
    i ≫ j = h →
    f ≫ g = i ≫ j := by
  with_panel_widgets [SelectionPanel]
    intro h₁ h₂
    rw [← h₁, h₂]

end CategoryTheory
```
