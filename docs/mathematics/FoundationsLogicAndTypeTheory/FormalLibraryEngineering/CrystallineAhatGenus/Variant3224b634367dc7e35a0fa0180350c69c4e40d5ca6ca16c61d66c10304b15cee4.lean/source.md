# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineAhatGenus.Variant3224b634367dc7e35a0fa0180350c69c4e40d5ca6ca16c61d66c10304b15cee4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `493252c3e6af33741968abf6accc24b3373bb270` · SHA-256 `59024e29b1113030f05540a48fc7d040876fd13f106fe83288c0cd63efa9f1e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineAhatGenus.Variant8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineAhatGenus.Variant8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7","mathematical_subject":"Foundations.Unclassified","original_sha256":"8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/CrystallineAhatGenus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineAhatGenus

Radiation role: research-boundary
BinaryMatrix spine: This module records A-hat genus contracts, not BinaryMatrix genera.
Ontology: crystalline_index.ahat_genus
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineAhatGenus.Variant8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7

namespace Folder
namespace CrystallineIndex

structure CrystallineAhatGenus
    (H : CohomologyTheory) where
  TangentLike : Type _
  ahat : TangentLike → CohomologyClass H
  multiplicative : Prop
  multiplicative_certified : multiplicative
  sourceLabel : String

theorem ahat_genus_multiplicative
    {H : CohomologyTheory}
    (A : CrystallineAhatGenus H) :
    A.multiplicative :=
  A.multiplicative_certified

end CrystallineIndex
end Folder
```
