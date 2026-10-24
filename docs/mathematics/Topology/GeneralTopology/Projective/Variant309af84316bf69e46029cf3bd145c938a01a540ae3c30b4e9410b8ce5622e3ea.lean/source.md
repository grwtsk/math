# Complete source: GRWTSK.Topology.GeneralTopology.Projective.Variant309af84316bf69e46029cf3bd145c938a01a540ae3c30b4e9410b8ce5622e3ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a612199c911bf0b7c3041fdd0c58bb0db8ff2b1` · SHA-256 `b13bac1a87ed288f789a4f2b48da6f61d0541a20ad32f3cc6cfe64f6c1c61d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProjectivePresentation.Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Category/Profinite/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Topology.Category.Profinite.Basic
import Mathlib.Topology.StoneCech
import Mathlib.CategoryTheory.Preadditive.Projective


namespace GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808

#align_import topology.category.Profinite.projective from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# Profinite sets have enough projectives

In this file we show that `Profinite` has enough projectives.

## Main results

Let `X` be a profinite set.

* `Profinite.projective_ultrafilter`: the space `Ultrafilter X` is a projective object
* `Profinite.projectivePresentation`: the natural map `Ultrafilter X → X`
  is a projective presentation

-/


noncomputable section

universe u v w

open CategoryTheory Function

namespace Profinite

set_option linter.uppercaseLean3 false

instance projective_ultrafilter (X : Type u) : Projective (of <| Ultrafilter X) where
  factors {Y Z} f g hg := by
    rw [epi_iff_surjective] at hg
    obtain ⟨g', hg'⟩ := hg.hasRightInverse
    let t : X → Y := g' ∘ f ∘ (pure : X → Ultrafilter X)
    let h : Ultrafilter X → Y := Ultrafilter.extend t
    have hh : Continuous h := continuous_ultrafilter_extend _
    use ⟨h, hh⟩
    apply Faithful.map_injective (F := forget Profinite)
    simp only [ContinuousMap.coe_mk, coe_comp]
    convert denseRange_pure.equalizer (g.continuous.comp hh) f.continuous _
     -- Porting note: same fix as in `Topology.Category.CompHaus.Projective`
    let g'' : ContinuousMap Y Z := g
    have : g'' ∘ g' = id := hg'.comp_eq_id
    rw [comp.assoc, ultrafilter_extend_extends, ← comp.assoc, this, comp.left_id]
#align Profinite.projective_ultrafilter Profinite.projective_ultrafilter

/-- For any profinite `X`, the natural map `Ultrafilter X → X` is a projective presentation. -/
def projectivePresentation (X : Profinite.{u}) : ProjectivePresentation X where
  p := of <| Ultrafilter X
  f := ⟨_, continuous_ultrafilter_extend id⟩
  projective := Profinite.projective_ultrafilter X
  epi := ConcreteCategory.epi_of_surjective _ fun x =>
    ⟨(pure x : Ultrafilter X), congr_fun (ultrafilter_extend_extends (𝟙 X)) x⟩
#align Profinite.projective_presentation Profinite.projectivePresentation

instance : EnoughProjectives Profinite.{u} where presentation X := ⟨projectivePresentation X⟩

end Profinite
```
