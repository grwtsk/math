# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82aad576aec124dc075c7fee90ba39c2eb08f774` · SHA-256 `8f7b1cebb4a9dc59dba873b28827b9590c84252fe418e3b8dc35fbd96a0cc3dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Hom.Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Point/Category.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Sites.Point.Basic

/-!
# The category of points of a site

We define the category structure on the points of a site `(C, J)`:
a morphism between `Φ₁ ⟶ Φ₂` between two points consists of a
morphism `Φ₂.fiber ⟶ Φ₁.fiber` (SGA 4 IV 3.2).

## References
* [Alexander Grothendieck and Jean-Louis Verdier, *Exposé IV : Topos*,
  SGA 4 IV 3.2][sga-4-tome-1]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302

@[expose] public section

universe w v v' u u'

namespace CategoryTheory

open Limits Opposite

variable {C : Type u} [Category.{v} C] {J : GrothendieckTopology C}

namespace GrothendieckTopology.Point

/-- A morphism between points of a site consists of a morphism
between the functors `Point.fiber`, in the opposite direction. -/
@[ext]
structure Hom (Φ₁ Φ₂ : Point.{w} J) where
  /-- a natural transformation, in the opposite direction -/
  hom : Φ₂.fiber ⟶ Φ₁.fiber

instance : Category (Point.{w} J) where
  Hom := Hom
  id _ := ⟨𝟙 _⟩
  comp f g := ⟨g.hom ≫ f.hom⟩

@[ext]
lemma hom_ext {Φ₁ Φ₂ : Point.{w} J} {f g : Φ₁ ⟶ Φ₂} (h : f.hom = g.hom) : f = g :=
  Hom.ext h

@[simp]
lemma id_hom (Φ : Point.{w} J) : Hom.hom (𝟙 Φ) = 𝟙 _ := rfl

@[simp, reassoc]
lemma comp_hom {Φ₁ Φ₂ Φ₃ : Point.{w} J} (f : Φ₁ ⟶ Φ₂) (g : Φ₂ ⟶ Φ₃) :
    (f ≫ g).hom = g.hom ≫ f.hom := rfl

variable {A : Type u'} [Category.{v'} A]
  [HasColimitsOfSize.{w, w} A]

namespace Hom

variable {Φ₁ Φ₂ Φ₃ : Point.{w} J} (f : Φ₁ ⟶ Φ₂) (g : Φ₂ ⟶ Φ₃)

/-- The natural transformation on fibers of presheaves that is induced
by a morphism of points of a site. -/
@[simps]
noncomputable def presheafFiber :
    Φ₂.presheafFiber (A := A) ⟶ Φ₁.presheafFiber where
  app P := Φ₂.presheafFiberDesc (fun X x ↦ Φ₁.toPresheafFiber X (f.hom.app X x) P)

@[simp]
lemma presheafFiber_id (Φ : Point.{w} J) :
    presheafFiber (𝟙 Φ) (A := A) = 𝟙 _ := by
  cat_disch

@[reassoc, simp]
lemma presheafFiber_comp :
    (f ≫ g).presheafFiber (A := A) = g.presheafFiber ≫ f.presheafFiber := by
  cat_disch

/-- The natural transformation on fibers of sheaves that is induced
by a morphism of points of a site. -/
noncomputable abbrev sheafFiber :
    Φ₂.sheafFiber (A := A) ⟶ Φ₁.sheafFiber :=
  Functor.whiskerLeft _ f.presheafFiber

@[simp]
lemma sheafFiber_id (Φ : Point.{w} J) :
    sheafFiber (𝟙 Φ) (A := A) = 𝟙 _ := by
  cat_disch

@[reassoc, simp]
lemma sheafFiber_comp :
    (f ≫ g).sheafFiber (A := A) = g.sheafFiber ≫ f.sheafFiber := by
  cat_disch

end Hom

end GrothendieckTopology.Point

end CategoryTheory
```
