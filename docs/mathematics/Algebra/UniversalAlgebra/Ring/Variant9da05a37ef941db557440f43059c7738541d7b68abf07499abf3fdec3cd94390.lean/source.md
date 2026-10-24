# Complete source: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant9da05a37ef941db557440f43059c7738541d7b68abf07499abf3fdec3cd94390

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa24dfbb4b74f1058f564a5d90553a49f19a75b1` · SHA-256 `31ca6ec0c4d28d0d3ba9cd5030029da2ce495aab1798f3d7ffd8ee0e29fdc6bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Ring.Variant709a77e5fa561e4529e03d19873a45d6e59695006ae17c7c8daedc215c32cfeb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"709a77e5fa561e4529e03d19873a45d6e59695006ae17c7c8daedc215c32cfeb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Ring.Variant709a77e5fa561e4529e03d19873a45d6e59695006ae17c7c8daedc215c32cfeb","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"709a77e5fa561e4529e03d19873a45d6e59695006ae17c7c8daedc215c32cfeb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.Ring.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.Ring.Variant709a77e5fa561e4529e03d19873a45d6e59695006ae17c7c8daedc215c32cfeb

universe v u

open CategoryTheory SemiRingCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type u) [Semiring X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Semiring X] [Semiring Y] (f : X →+* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Semiring X] [Semiring Y] (f : X →+* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : SemiRingCat} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Semiring X] [Semiring Y] [Semiring Z]
    (f : X →+* Y) (g : Y →+* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Semiring X] [Semiring Y] {Z : SemiRingCat}
    (f : X →+* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : SemiRingCat} {Z : Type u} [Semiring Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : SemiRingCat} {X : Type u} [Semiring X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : SemiRingCat} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : SemiRingCat} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : SemiRingCat} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : SemiRingCat) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Semiring X] : ⇑(RingHom.id X) = id := by simp

example {M N : SemiRingCat} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : SemiRingCat} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp

example {M N : SemiRingCat} (f : M ⟶ N) : f 0 = 0 := by
  simp
```
