# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCategory.Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2442700247ac1988bc4ec114c8fcebebddd659cf` · SHA-256 `3b4808f54798821964b3cef1c6b3d2753c069c4919022dadd12317639de87096`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCat.Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PresentationCat.Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/PresentationCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Presentation
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.EqToHom

/-!
# The category of assembly presentations

The categorical arrows are exactly `Presentation.Hom` values, so composition
retains every input, state, resolution, observation, and invariant law of the
existing `DAF.System.Hom` API.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCat.Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb

namespace DAF.Fabric

/-- Presentations regarded as objects of their morphism category. -/
abbrev PresentationCat := DAF.Fabric.Presentation

instance : CategoryTheory.Category PresentationCat where
  Hom := Presentation.Hom
  id := Presentation.Hom.id
  comp f g := Presentation.Hom.comp g f
  id_comp := Presentation.Hom.id_comp
  comp_id := Presentation.Hom.comp_id
  assoc := by
    intro P Q R S f g h
    exact (Presentation.Hom.comp_assoc h g f).symm

namespace Presentation.Hom

open CategoryTheory

/-- Transport only the target presentation of a morphism along equality. -/
def castTarget {P Q R : Presentation}
    (f : Presentation.Hom P Q) (h : Q = R) : Presentation.Hom P R :=
  f ≫ eqToHom h

/-- Transport only the source presentation of a morphism along equality. -/
def castSource {P Q R : Presentation}
    (f : Presentation.Hom Q R) (h : P = Q) : Presentation.Hom P R :=
  eqToHom h ≫ f

@[simp]
theorem castTarget_rfl {P Q : Presentation} (f : Presentation.Hom P Q) :
    f.castTarget rfl = f := by
  simp [castTarget]

@[simp]
theorem castSource_rfl {P Q : Presentation} (f : Presentation.Hom P Q) :
    f.castSource rfl = f := by
  simp [castSource]

end Presentation.Hom

end DAF.Fabric
```
