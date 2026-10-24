# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeneratedTopology.Variantf9291e922936e79c1103a80c8d74e5a78be43887e3dec26fbd1e9455690f815a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `263f37ed3cec113c23bee6313d50dfb9d5616fce` · SHA-256 `36e33f13222ae43756fd30f11d0a53b4e5a2cb134d6422d97a856fb236aee8dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeneratedMinimal.Variant663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GeneratedMinimal.Variant663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Site/GeneratedTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Site.GeneratedTopology

/-!
# Folder.Theorem.Site.GeneratedTopology

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.site.generated_topology
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeneratedMinimal.Variant663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b

namespace Folder
namespace Theorem
namespace Site

open CategoryTheory

universe u v w

theorem generated_minimal
    {C : Type u} [Category.{v} C]
    (T : Folder.Site.Pretopology.{u, v, w} C)
    (Base : ∀ U : C, Folder.Site.Cover C U → Prop)
    (hbase : ∀ U S, Base U S → T.IsCover S) :
    ∀ U S, Folder.Site.GeneratedCover T Base U S → T.IsCover S :=
  Folder.Site.GeneratedCover.generated_minimal T Base hbase

end Site
end Theorem
end Folder
```
