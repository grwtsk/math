# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variantaf99cddea724eb689dfee748dd08be91e6a1b079ed49b7490ddea4019f9ceaa1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `202fa368e591ea6685a5a62d963b50e5d80ce2bf` · SHA-256 `7513a4c9cbbb8abe017fda5593f3946f0e3dce46a5e146bd3815238c8c799381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquivalence.Variant45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomEquivalence.Variant45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Category/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Core


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquivalence.Variant45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698

namespace Think.Logic

structure HomEquivalence {C D : Category} (F : Functor C D) where
  reverse : {A B : C.Obj} → D.Hom (F.obj A) (F.obj B) → C.Hom A B
  forwardReverse :
    ∀ {A B : C.Obj} (g : D.Hom (F.obj A) (F.obj B)),
      F.map (reverse g) = g
  reverseForward :
    ∀ {A B : C.Obj} (f : C.Hom A B),
      reverse (F.map f) = f

theorem HomEquivalence.injective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (f g : C.Hom A B) :
  F.map f = F.map g → f = g :=
by
  intro h
  calc
    f = H.reverse (F.map f) := (H.reverseForward f).symm
    _ = H.reverse (F.map g) := by rw [h]
    _ = g := H.reverseForward g

theorem HomEquivalence.surjective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (g : D.Hom (F.obj A) (F.obj B)) :
  ∃ f : C.Hom A B, F.map f = g :=
by
  exact ⟨H.reverse g, H.forwardReverse g⟩

end Think.Logic
```
