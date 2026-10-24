# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KanExtension.Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a18bf0404f653dfc44a9aaba2954778f810574c7` · SHA-256 `da37296090f6a03eee865d421ebf4fadde301602e20c58a608a2a6e44ce96d6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftKanExtensionDatum.Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftKanExtensionDatum.Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/KanExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.AlgebraicTopology.SimplicialObject.Basic
import Mathlib.CategoryTheory.Functor.KanExtension.Basic

/-!
# Left Kan extensions and certified simplicial resolutions

This module records a genuine Mathlib left Kan extension together with optional
resolution data.  A simplicial diagram is not automatically a homotopy-correct
resolution: `ResolutionFormula` separately retains both an effectiveness proof
and the resulting realization isomorphism.  Likewise, the word "derived" is
used only when a supplied derived model and localization certificate are
present.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftKanExtensionDatum.Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea

open CategoryTheory

namespace DAF.Fabric

universe u v w

/-- Atomic semantics together with a certified left Kan extension to composite sources. -/
structure LeftKanExtensionDatum where
  Atomic : Type u
  Source : Type v
  Target : Type w
  [instCategoryAtomic : Category.{u} Atomic]
  [instCategorySource : Category.{v} Source]
  [instCategoryTarget : Category.{w} Target]
  inclusion : Atomic ⥤ Source
  localSemantics : Atomic ⥤ Target
  globalSemantics : Source ⥤ Target
  unit : localSemantics ⟶ inclusion ⋙ globalSemantics
  universal : globalSemantics.IsLeftKanExtension unit

attribute [instance] LeftKanExtensionDatum.instCategoryAtomic
  LeftKanExtensionDatum.instCategorySource LeftKanExtensionDatum.instCategoryTarget

/--
A left Kan extension equipped with an explicit derived/localized model.

The fields are an interface to a chosen derived construction; they do not
assert that every object called `DerivedModel` is a derived category object.
-/
structure DerivedLeftKanExtensionDatum extends LeftKanExtensionDatum where
  DerivedModel : Type w
  derivedModel : Source → DerivedModel
  Localized : DerivedModel → Prop
  localizationCertificate : ∀ X, Localized (derivedModel X)

/-- A simplicial atomic resolution augmented to a selected composite source. -/
structure SimplicialResolution
    (K : LeftKanExtensionDatum)
    (X : K.Source) where
  resolution : SimplicialObject K.Atomic
  augmentation :
    resolution ⋙ K.inclusion ⟶ (SimplicialObject.const K.Source).obj X
  cofinalOrEffective : Prop

/--
Certified evidence that a selected realization of local semantics computes the
global left-Kan-extension value at `X`.
-/
structure ResolutionFormula
    {K : LeftKanExtensionDatum}
    {X : K.Source}
    (R : SimplicialResolution K X) where
  realize : SimplicialObject K.Target ⥤ K.Target
  effective : R.cofinalOrEffective
  realizationIso :
    realize.obj (R.resolution ⋙ K.localSemantics) ≅ K.globalSemantics.obj X

end DAF.Fabric
```
