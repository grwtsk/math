# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedIndex.Variante033bf623ff8754024c50860c664f1e7365b1798b01b9c91f50614592b123f30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `500fd63962e8db29148259ea6d73a0e0bac01a78` · SHA-256 `2f49cad36c4b14520cd07bfe486945c03c8c09848c423176836976b50d79c95b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedCrystallineIndex.Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittValuedCrystallineIndex.Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353","mathematical_subject":"Foundations.Unclassified","original_sha256":"382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/WittValuedIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.WittComplex
import Folder.CrystallineIndex.SheafSpectrumOperator
import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.CrystallineIndex.WittValuedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt-valued indices, not integer BinaryMatrix invariants.
Ontology: crystalline_index.witt_valued_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedCrystallineIndex.Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353

namespace Folder
namespace CrystallineIndex

open AdelicInfinityTopos
open ResearchTopos

/--
The crystalline index of a sheaf-spectrum operator as an element of a Witt
complex.

This is the central type for the index in this layer.
-/
structure WittValuedCrystallineIndex
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  index : WittElement W
  representsOperatorIndex : Prop
  representsOperatorIndex_certified : representsOperatorIndex
  kernelCokernelData? : Option Type
  sourceLabel : String

def WittValuedCrystallineIndex.Nonzero
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) : Prop :=
  I.index.Nonzero

theorem witt_index_represents_operator_index
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    I.representsOperatorIndex :=
  I.representsOperatorIndex_certified

theorem witt_index_has_witt_element
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    ∃ x : WittElement W, x = I.index :=
  ⟨I.index, rfl⟩

end CrystallineIndex
end Folder
```
