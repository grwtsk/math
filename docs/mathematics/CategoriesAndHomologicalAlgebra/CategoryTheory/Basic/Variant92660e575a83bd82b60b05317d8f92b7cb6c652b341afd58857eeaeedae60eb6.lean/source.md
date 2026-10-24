# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant92660e575a83bd82b60b05317d8f92b7cb6c652b341afd58857eeaeedae60eb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8789cf8e4e2ccb31d22d708101ac6b0ffa0e9928` · SHA-256 `86fe1fece6ccca3d11dddacd403e23f60a2a2c02c3403403e91e70c2dc43289e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Presheaf.Variant84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Sheaf/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Site.Cover

/-!
# Folder.Sheaf.Basic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.basic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7

namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Presheaf (C : Type u) [Category.{v} C] where
  F : Cᵒᵖ ⥤ Type w

namespace Presheaf

def restrict
    {C : Type u} [Category.{v} C]
    (P : Presheaf C)
    {U V : C}
    (f : U ⟶ V)
    (s : P.F.obj (op V)) :
    P.F.obj (op U) :=
  P.F.map f.op s

end Presheaf

structure IsSheaf
    {C : Type u} [Category.{v} C]
    (P : Presheaf C) where
  locality :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop
  gluing :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop

end Sheaf
end Folder
```
