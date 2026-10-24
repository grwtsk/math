# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MathlibGluing.Variantc7795fc8d3710de24a10dd25dd91cd2d1373e515f1a6b9f031c4175f276e5fb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbb9cd15758720b62b1f788e23ad9874ee597352` · SHA-256 `21e2df6cde8ff4db68370424ca0d01c7f139eb20c1f4491e982acc18ff9e51fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KnowledgeGluingCondition.Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.KnowledgeGluingCondition.Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Sheaf/MathlibGluing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Mathlib.FiveLayer


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KnowledgeGluingCondition.Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60

open CategoryTheory

universe u v

namespace Think.Knowledge.Sheaf

/-!
Mathlib-native sheaf gluing boundary for Knowledge.

The theorem is stated over `CategoryTheory.Sieve`, `GrothendieckTopology`, and
`Sheaf J (Type u)`.  The extraction point is explicit: the supplied
`KnowledgeGluingCondition` is the sheaf-condition interface consumed by Think's
Knowledge layer.
-/

structure KnowledgeGluingCondition
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u)) where
  uniqueGluing :
    ∀ (U : C) (S : Sieve U), S ∈ J U →
    ∀
      (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
        S f → F.val.obj (Opposite.op V)),
    (∀ ⦃V₁ V₂ W : C⦄
      (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
      (hf₁ : S f₁) (hf₂ : S f₂)
      (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
      g₁ ≫ f₁ = g₂ ≫ f₂ →
        F.val.map g₁.op (x f₁ hf₁) =
        F.val.map g₂.op (x f₂ hf₂)) →
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf)

/--
Sheaf gluing invariant: compatible local sections over a covering sieve uniquely
glue into one globally coherent Knowledge section.
-/
theorem unique_knowledge_gluing
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u))
    (condition : KnowledgeGluingCondition F)
    (U : C) (S : Sieve U) (hS : S ∈ J U)
    (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
      S f → F.val.obj (Opposite.op V))
    (compatible :
      ∀ ⦃V₁ V₂ W : C⦄
        (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
        (hf₁ : S f₁) (hf₂ : S f₂)
        (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
        g₁ ≫ f₁ = g₂ ≫ f₂ →
          F.val.map g₁.op (x f₁ hf₁) =
          F.val.map g₂.op (x f₂ hf₂)) :
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf) :=
by
  exact condition.uniqueGluing U S hS x compatible

end Think.Knowledge.Sheaf
```
