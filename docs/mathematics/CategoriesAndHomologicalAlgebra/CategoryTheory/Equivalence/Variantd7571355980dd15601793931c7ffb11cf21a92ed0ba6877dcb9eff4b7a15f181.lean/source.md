# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c28ef13f2132a66fb5dad57a1b59e8a6df2f0589` · SHA-256 `39d7870a3c5962941f47a54a70e10c1358c79c3d6a2558d528aa468c424d1569`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Equivalence.Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Equivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Nikolas Kuhn, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.Profinite.EffectiveEpi
import Mathlib.Topology.Category.Stonean.EffectiveEpi
import Mathlib.Condensed.Basic
import Mathlib.CategoryTheory.Sites.Coherent.SheafComparison
/-!

# Sheaves on CompHaus are equivalent to sheaves on Stonean

The forgetful functor from extremally disconnected spaces `Stonean` to compact
Hausdorff spaces `CompHaus` has the marvellous property that it induces an equivalence of categories
between sheaves on these two sites. With the terminology of nLab, `Stonean` is a
*dense subsite* of `CompHaus`: see https://ncatlab.org/nlab/show/dense+sub-site

Since Stonean spaces are the projective objects in `CompHaus`, which has enough projectives,
and the notions of effective epimorphism, epimorphism and surjective continuous map are equivalent
in `CompHaus` and `Stonean`, we can use the general setup in
`Mathlib/CategoryTheory/Sites/Coherent/SheafComparison.lean` to deduce the equivalence of
categories. We give the corresponding statements for `Profinite` as well.

## Main results

* `Condensed.StoneanCompHaus.equivalence`: the equivalence from coherent sheaves on `Stonean` to
  coherent sheaves on `CompHaus` (i.e. condensed sets).
* `Condensed.StoneanProfinite.equivalence`: the equivalence from coherent sheaves on `Stonean` to
  coherent sheaves on `Profinite`.
* `Condensed.ProfiniteCompHaus.equivalence`: the equivalence from coherent sheaves on `Profinite` to
  coherent sheaves on `CompHaus` (i.e. condensed sets).
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f

universe u

open CategoryTheory Limits

namespace Condensed

namespace StoneanCompHaus

/-- The equivalence from coherent sheaves on `Stonean` to coherent sheaves on `CompHaus`
    (i.e. condensed sets). -/
noncomputable
def equivalence (A : Type*) [Category A]
    [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A] :
    Sheaf (coherentTopology Stonean) A ≌ Condensed.{u} A :=
  coherentTopology.equivalence' Stonean.toCompHaus A

end StoneanCompHaus

namespace StoneanProfinite

instance : Stonean.toProfinite.PreservesEffectiveEpis where
  preserves f h :=
    ((Profinite.effectiveEpi_tfae _).out 0 2).mpr (((Stonean.effectiveEpi_tfae _).out 0 2).mp h)

instance : Stonean.toProfinite.ReflectsEffectiveEpis where
  reflects f h :=
    ((Stonean.effectiveEpi_tfae f).out 0 2).mpr (((Profinite.effectiveEpi_tfae _).out 0 2).mp h)

/--
An effective presentation of an `X : Profinite` with respect to the inclusion functor from `Stonean`
-/
noncomputable def stoneanToProfiniteEffectivePresentation (X : Profinite) :
    Stonean.toProfinite.EffectivePresentation X where
  p := X.presentation
  f := Profinite.presentation.π X
  effectiveEpi := ((Profinite.effectiveEpi_tfae _).out 0 1).mpr (inferInstance : Epi _)

instance : Stonean.toProfinite.EffectivelyEnough where
  presentation X := ⟨stoneanToProfiniteEffectivePresentation X⟩

/-- The equivalence from coherent sheaves on `Stonean` to coherent sheaves on `Profinite`. -/
noncomputable
def equivalence (A : Type*) [Category A]
    [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toProfinite.op) A] :
    Sheaf (coherentTopology Stonean) A ≌ Sheaf (coherentTopology Profinite) A :=
  coherentTopology.equivalence' Stonean.toProfinite A

end StoneanProfinite

namespace ProfiniteCompHaus

/-- The equivalence from coherent sheaves on `Profinite` to coherent sheaves on `CompHaus`
    (i.e. condensed sets). -/
noncomputable
def equivalence (A : Type*) [Category A]
    [∀ X, HasLimitsOfShape (StructuredArrow X profiniteToCompHaus.op) A] :
    Sheaf (coherentTopology Profinite) A ≌ Condensed.{u} A :=
  coherentTopology.equivalence' profiniteToCompHaus A

end ProfiniteCompHaus

variable {A : Type*} [Category A] (X : Condensed.{u} A)

lemma isSheafProfinite
    [∀ Y, HasLimitsOfShape (StructuredArrow Y profiniteToCompHaus.{u}.op) A] :
    Presheaf.IsSheaf (coherentTopology Profinite)
    (profiniteToCompHaus.op ⋙ X.val) :=
  ((ProfiniteCompHaus.equivalence A).inverse.obj X).cond

lemma isSheafStonean
    [∀ Y, HasLimitsOfShape (StructuredArrow Y Stonean.toCompHaus.{u}.op) A] :
    Presheaf.IsSheaf (coherentTopology Stonean)
    (Stonean.toCompHaus.op ⋙ X.val) :=
  ((StoneanCompHaus.equivalence A).inverse.obj X).cond

end Condensed
```
