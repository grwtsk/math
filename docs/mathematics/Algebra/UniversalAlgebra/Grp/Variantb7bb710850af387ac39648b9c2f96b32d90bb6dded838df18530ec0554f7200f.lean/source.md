# Complete source: GRWTSK.Algebra.UniversalAlgebra.Grp.Variantb7bb710850af387ac39648b9c2f96b32d90bb6dded838df18530ec0554f7200f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e6b938ba8573b3b93432f0566ef657dfe1c1f1` · SHA-256 `0110b80cada65d18c1bdcd26c5d00bb03d7ad8a886f8c2e50c26677ba9bb072c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Grp.Variantfc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Grp.Variantfc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"fc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/Grp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.Grp.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.Grp.Variantfc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d

universe v u

open CategoryTheory Grp

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type u) [Group X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Group X] [Group Y] (f : X →* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Group X] [Group Y] (f : X →* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : Grp} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Group X] [Group Y] [Group Z]
    (f : X →* Y) (g : Y →* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Group X] [Group Y] {Z : Grp}
    (f : X →* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : Grp} {Z : Type u} [Group Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : Grp} {X : Type u} [Group X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : Grp} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : Grp} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : Grp} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : Grp) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Group X] : ⇑(MonoidHom.id X) = id := by simp

example {M N : Grp} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp

example {M N : Grp} (f : M ⟶ N) : f 1 = 1 := by
  simp
```
