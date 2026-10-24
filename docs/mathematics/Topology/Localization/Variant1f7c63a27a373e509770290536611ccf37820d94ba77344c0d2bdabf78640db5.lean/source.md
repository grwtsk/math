# Complete source: GRWTSK.Topology.Localization.Variant1f7c63a27a373e509770290536611ccf37820d94ba77344c0d2bdabf78640db5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a43c0796af352e097aaf3b905c6be5f00e8241` · SHA-256 `70bd5c6b6197aa29fd8544400638d0a41c3bdb4310851c5a21459800f9cb9911`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MorphismPropertyWithGeneratedByTopologyEquiv.Variantfedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MorphismPropertyWithGeneratedByTopologyEquiv.Variantfedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"fedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Convenient/Localization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Localization.CalculusOfFractions.OfAdjunction
public import Mathlib.Topology.Convenient.Category

/-!
# The category of `X`-generated spaces, as a localization

Let `X i` be a family of topological spaces. In this file, we introduce
a property of morphisms `morphismPropertyWithGeneratedByTopologyEquiv X`
in the category `TopCat`: it consists of the morphisms corresponding to
the canonical continuous maps `WithGeneratedByTopology X Z → Z` for
all topological spaces `Z`. We show that the functor
`TopCat.toContinuousGeneratedByCat X : TopCat ⥤ ContinuousGeneratedByCat X`
makes `ContinuousGeneratedByCat X` the localized category of `TopCat` with
respect to this class of morphisms. Similarly,
`TopCat.toGeneratedByTopCat : TopCat ⥤ GeneratedByTopCat X` is also
a localization functor.

-/


namespace GRWTSK.Topology.MorphismPropertyWithGeneratedByTopologyEquiv.Variantfedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511

@[expose] public section

universe v t u

open CategoryTheory

namespace TopCat

variable {ι : Type t} (X : ι → Type u) [∀ i, TopologicalSpace (X i)]

/-- Given a family of topological spaces `X`, this is the family of morphisms in `TopCat`
corresponding to the continuous maps `WithGeneratedByTopology X Z → Z` for
all topological spaces `Z`. -/
def morphismPropertyWithGeneratedByTopologyEquiv : MorphismProperty TopCat.{v} :=
  MorphismProperty.ofHoms (GeneratedByTopCat.adjCounit (X := X)).app

instance : (TopCat.toContinuousGeneratedByCat.{v} X).IsLocalization
    (TopCat.morphismPropertyWithGeneratedByTopologyEquiv X) :=
  ContinuousGeneratedByCat.adj.isLocalization_rightAdjoint _
    (by rintro _ _ _ ⟨Z⟩; infer_instance)
    (fun _ ↦ by constructor)

instance : (TopCat.toGeneratedByTopCat.{v} (X := X)).IsLocalization
    (TopCat.morphismPropertyWithGeneratedByTopologyEquiv X) :=
  GeneratedByTopCat.adj.isLocalization_rightAdjoint _
    (by rintro _ _ _ ⟨Z⟩; infer_instance)
    (fun _ ↦ by constructor)

end TopCat
```
