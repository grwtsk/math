# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretopology.Variantea42c466c6b4d1910345dff10f8faa1a2a53ea445c6b645400dcd74f058e977f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce5968e9d4401e1f0606de3488a0e4c6bd5e1b8d` · SHA-256 `9c684af80891d20151f7d96f65f702baa1a87e96b03038c0313e146b661b4cc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretopology.Variant54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pretopology.Variant54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Site/Pretopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Site.Cover

/-!
# Folder.Site.Pretopology

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: site.pretopology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretopology.Variant54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e

namespace Folder
namespace Site

open CategoryTheory

universe u v w

structure Pretopology
    (C : Type u)
    [Category.{v} C] where
  IsCover : {U : C} → Cover C U → Prop
  PullbackData :
    {U V : C} →
      Cover C U →
      (V ⟶ U) →
      Type w
  pullbackCover :
    {U V : C} →
      (S : Cover C U) →
      (f : V ⟶ U) →
      PullbackData S f →
      Cover C V
  transitiveComposite :
    {U : C} →
      (S : Cover C U) →
      ((i : S.Index) → Cover C (S.localObject i)) →
      Cover C U
  identityCovering :
    ∀ U : C, IsCover (Cover.identityCover U)
  pullbackStable :
    ∀ {U V : C}
      (S : Cover C U)
      (f : V ⟶ U)
      (p : PullbackData S f),
      IsCover S →
      IsCover (pullbackCover S f p)
  transitiveCovering :
    ∀ {U : C}
      (S : Cover C U)
      (T : (i : S.Index) → Cover C (S.localObject i)),
      IsCover S →
      (∀ i : S.Index, IsCover (T i)) →
      IsCover (transitiveComposite S T)

namespace Pretopology

variable {C : Type u}
variable [Category.{v} C]

theorem identity_covering
    (T : Pretopology.{u, v, w} C)
    (U : C) :
    T.IsCover (Cover.identityCover U) :=
  T.identityCovering U

theorem pullback_stable
    (T : Pretopology.{u, v, w} C)
    {U V : C}
    (S : Cover C U)
    (f : V ⟶ U)
    (p : T.PullbackData S f)
    (hS : T.IsCover S) :
    T.IsCover (T.pullbackCover S f p) :=
  T.pullbackStable S f p hS

theorem transitive_covering
    (T : Pretopology.{u, v, w} C)
    {U : C}
    (S : Cover C U)
    (R : (i : S.Index) → Cover C (S.localObject i))
    (hS : T.IsCover S)
    (hR : ∀ i : S.Index, T.IsCover (R i)) :
    T.IsCover (T.transitiveComposite S R) :=
  T.transitiveCovering S R hS hR

end Pretopology
end Site
end Folder
```
