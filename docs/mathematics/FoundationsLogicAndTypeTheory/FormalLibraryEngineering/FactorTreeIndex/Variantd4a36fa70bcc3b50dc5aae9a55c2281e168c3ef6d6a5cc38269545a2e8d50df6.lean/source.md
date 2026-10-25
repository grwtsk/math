# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorTreeIndex.Variantd4a36fa70bcc3b50dc5aae9a55c2281e168c3ef6d6a5cc38269545a2e8d50df6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04719462d329e861620758e9e59e44920a32662e` · SHA-256 `33ba3796535d760ea554f37c6189033752448142726d6f621018004d133034cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorTreeLayerIndex.Variant3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FactorTreeLayerIndex.Variant3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159","mathematical_subject":"Foundations.Unclassified","original_sha256":"3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/FactorTreeIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Archive.FactorTreeIndex

Radiation role: archive-indexing
BinaryMatrix spine: This module labels logical payload BinaryMatrixStream layers by prime-factor arithmetic indices.
Ontology: archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorTreeLayerIndex.Variant3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159

namespace Folder
namespace Archive

structure FactorTreeLayerIndex where
  logicalLayer : Nat
  positive : 0 < logicalLayer

def FactorTreeLayerIndex.asPositiveNat
    (i : FactorTreeLayerIndex) :
    NumberTheory.PositiveNat :=
  ⟨i.logicalLayer, i.positive⟩

def FactorTreeLayerIndex.factorMap
    (i : FactorTreeLayerIndex) : Nat →₀ Nat :=
  NumberTheory.FactorizationMap i.asPositiveNat

def FactorTreeLayerIndex.factorLabel
    (_i : FactorTreeLayerIndex) : String :=
  "Nat.factorization label"

theorem factorTreeLayerIndex_decodes
    (i : FactorTreeLayerIndex) :
    NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  NumberTheory.factorProduct_factorization i.asPositiveNat

end Archive
end Folder
```
