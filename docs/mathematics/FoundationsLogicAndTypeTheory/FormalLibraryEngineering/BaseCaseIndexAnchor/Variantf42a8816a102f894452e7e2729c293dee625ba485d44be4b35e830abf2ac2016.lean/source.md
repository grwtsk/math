# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndexAnchor.Variantf42a8816a102f894452e7e2729c293dee625ba485d44be4b35e830abf2ac2016

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be3d29db017f27468348154017c3e9a545c16698` · SHA-256 `2c2f63f0f14511674720b991734a5ef0a037d272c2de63640bf90100f9ab4d9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndexAnchor.Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BaseCaseIndexAnchor.Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/BaseCaseIndexAnchor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseIndex
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.BaseCaseIndexAnchor

Radiation role: research-boundary
BinaryMatrix spine: This module anchors a supplied nonzero base index, not BinaryMatrix data.
Ontology: base.index_anchor
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndexAnchor.Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1

namespace Folder
namespace DerivedSheaf

/--
Base-case K-theory index anchor.

The base case supplies initial nonzero topological charge. It does not by
itself prove any critical-line theorem; downstream bridge contracts are still
required.
-/
structure BaseCaseIndexAnchor
    (M : MellKTheory) where
  baseIndex : BaseCaseDerivedIndex
  kIndex : KTheoryIndex M
  euler_realizes_kIndex : Prop
  euler_realizes_kIndex_certified : euler_realizes_kIndex
  kIndexNonzero : kIndex.indexClass.Nonzero
  sourceLabel : String

theorem base_case_index_nonzero
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.kIndex.indexClass.Nonzero :=
  B.kIndexNonzero

theorem base_case_index_euler_realizes_kindex
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  B.euler_realizes_kIndex_certified

theorem base_case_index_euler_realizes_kIndex
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  base_case_index_euler_realizes_kindex B

theorem base_case_anchor_euler_nonzero
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.baseIndex.derivedIndex.euler.value ≠ 0 :=
  base_case_derived_index_euler_nonzero B.baseIndex

end DerivedSheaf
end Folder
```
