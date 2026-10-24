# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Facet.Variant368c618ef8e9f05eb6101eae0595a913058c60391d2aaf5ddb2eab7ee7c8c818

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65b4720a1f6d2127f805a612c6e6ee70107751f2` · SHA-256 `27573251e1630a7dbd1e3c403c0c7f2e8c280aacd772b0854f3bf9b3a64dc46f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FacetRecord.Varianta87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FacetRecord.Varianta87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Taxonomy/Facet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.Domain

/-!
# Governed cross-cutting facets

Facet identity is stable-ID based so projects may extend the vocabulary. A
facet requires a witness and cannot become canonical home by itself.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FacetRecord.Varianta87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632

namespace Mathematics.Taxonomy

open Mathematics

structure FacetRecord where
  id : FacetId
  canonicalName : String
  definition : String
  compatibleRoles : Finset OntologicalRole
  provenance : Finset StableId
  deriving DecidableEq

structure FacetRegistry where
  facets : List FacetRecord

namespace FacetRegistry

def UniqueIds (registry : FacetRegistry) : Prop :=
  (registry.facets.map (·.id)).Nodup

def find? (registry : FacetRegistry) (id : FacetId) : Option FacetRecord :=
  registry.facets.find? fun facet => facet.id = id

end FacetRegistry

end Mathematics.Taxonomy
```
