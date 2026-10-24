# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WittenGenusBoundary.Variant95d5f73d4e4e963d4182b4c5cc52d725f63971b1c84d4ecee0c8cdf7558cae54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `307f499ea02bc74042467cfaa472598ea198e624` · SHA-256 `f6cbc0c8a9fd6afd2f69e1383af758455f7913a6d1240b6e763efbd9db596386`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WittenGenusIndexBoundary.Variant2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittenGenusIndexBoundary.Variant2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf","mathematical_subject":"Foundations.Unclassified","original_sha256":"2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/WittenGenusBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.HodgeDeRhamFiltration
import Folder.ResearchTopos.TMFFraming
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.WittenGenusBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records Witten genus/TMF boundary contracts, not BinaryMatrix invariants.
Ontology: crystalline_index.witten_genus_boundary
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WittenGenusIndexBoundary.Variant2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf

namespace Folder
namespace CrystallineIndex

structure WittenGenusIndexBoundary
    (H : CohomologyTheory) where
  tmfContract : ResearchTopos.TMFContract
  genusWitness : ResearchTopos.WittenGenusWitness
  indexTarget : CohomologyClass H
  refinesAhat : Prop
  refinesAhat_certified : refinesAhat
  stringOrientationRequired : Prop
  stringOrientationRequired_certified : stringOrientationRequired
  sourceLabel : String

theorem witten_genus_refines_ahat_if_supplied
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.refinesAhat :=
  W.refinesAhat_certified

theorem witten_genus_requires_string_orientation
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.stringOrientationRequired :=
  W.stringOrientationRequired_certified

end CrystallineIndex
end Folder
```
