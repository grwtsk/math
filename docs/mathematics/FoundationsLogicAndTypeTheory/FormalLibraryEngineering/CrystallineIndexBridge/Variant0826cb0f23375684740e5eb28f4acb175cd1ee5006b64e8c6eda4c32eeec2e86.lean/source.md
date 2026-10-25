# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexBridge.Variant0826cb0f23375684740e5eb28f4acb175cd1ee5006b64e8c6eda4c32eeec2e86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb99120134cd25f4c37bc18a9f18834d3c40a91` · SHA-256 `d7ba7578cc442b92cbf3c468eb6e67e7bfcbf1080e995af76df18e652f1f0aa6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KIndexToCrystallineIndexCompatible.Variant9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KIndexToCrystallineIndexCompatible.Variant9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8","mathematical_subject":"Foundations.Unclassified","original_sha256":"9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/CrystallineIndexBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.CrystallineIndexBridge

/-!
# Folder.Theorem.DerivedSheaf.CrystallineIndexBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-index-to-crystalline bridge facts, not BinaryMatrix data.
Ontology: derived.k_index_to_crystalline_index
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KIndexToCrystallineIndexCompatible.Variant9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem k_index_to_crystalline_index_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (B : Folder.DerivedSheaf.KIndexToCrystallineIndexBridge R I) :
    B.compatibleWithCrystallineIndexBoundary :=
  Folder.DerivedSheaf.k_index_to_crystalline_index_compatible B

end DerivedSheaf
end Theorem
end Folder
```
