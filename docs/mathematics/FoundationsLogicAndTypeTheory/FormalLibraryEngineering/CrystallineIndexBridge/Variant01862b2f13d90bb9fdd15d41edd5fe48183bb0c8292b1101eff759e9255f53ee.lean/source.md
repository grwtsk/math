# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexBridge.Variant01862b2f13d90bb9fdd15d41edd5fe48183bb0c8292b1101eff759e9255f53ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8cccf0a8b859b693b5dfc905bf96d88af9f25f6` · SHA-256 `4055e0c1e061095d6088d2bd29d4b6a5b0ca02697fab625746ddf6fef6277609`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KIndexToCrystallineIndexBridge.Variant2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KIndexToCrystallineIndexBridge.Variant2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477","mathematical_subject":"Foundations.Unclassified","original_sha256":"2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/CrystallineIndexBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.WittRealization
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.DerivedSheaf.CrystallineIndexBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges K-theory indices to crystalline/Witt realizations, not BinaryMatrix data.
Ontology: derived.k_index_to_crystalline_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KIndexToCrystallineIndexBridge.Variant2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477

namespace Folder
namespace DerivedSheaf

structure KIndexToCrystallineIndexBridge
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W)
    (I : KTheoryIndex M) where
  wittImage : KTheoryIndexWittImage R I
  crystallineIndexSourceLabel : String
  compatibleWithCrystallineIndexBoundary : Prop
  compatibleWithCrystallineIndexBoundary_certified : compatibleWithCrystallineIndexBoundary

theorem k_index_to_crystalline_index_compatible
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {R : WittRealization M W}
    {I : KTheoryIndex M}
    (B : KIndexToCrystallineIndexBridge R I) :
    B.compatibleWithCrystallineIndexBoundary :=
  B.compatibleWithCrystallineIndexBoundary_certified

end DerivedSheaf
end Folder
```
