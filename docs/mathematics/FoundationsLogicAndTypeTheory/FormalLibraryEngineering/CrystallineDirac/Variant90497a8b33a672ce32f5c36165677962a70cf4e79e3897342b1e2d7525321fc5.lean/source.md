# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDirac.Variant90497a8b33a672ce32f5c36165677962a70cf4e79e3897342b1e2d7525321fc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1aa0af19b1942205d5eb2d43ec378bab20751da` · SHA-256 `ff7b2e315b698243b16aa6677f5721c7e7c715138cf3b408597104edf72159de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDiracOperator.Variant3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineDiracOperator.Variant3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982","mathematical_subject":"Foundations.Unclassified","original_sha256":"3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/CrystallineDirac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.Crystal
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineIndex.CrystallineDirac

Radiation role: research-boundary
BinaryMatrix spine: This module records a crystalline Dirac-type contract, not a BinaryMatrix operator.
Ontology: crystalline_index.dirac
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDiracOperator.Variant3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982

namespace Folder
namespace CrystallineIndex

/--
Contract-level crystalline Dirac-type operator.

The record says what a future index theorem would need. It does not construct
`D_crys` or prove ellipticity/Fredholmness from analytic hypotheses.
-/
structure CrystallineDiracOperator
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    (nabla : CrystallineTensor.Connection F) where
  Domain : Type _
  Codomain : Type _
  operator : Domain → Codomain
  usesConnection : Prop
  usesConnection_certified : usesConnection
  ellipticAnalogue : Prop
  ellipticAnalogue_certified : ellipticAnalogue
  fredholmAnalogue : Prop
  fredholmAnalogue_certified : fredholmAnalogue
  sourceLabel : String

theorem crystalline_dirac_uses_connection
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.usesConnection :=
  D.usesConnection_certified

theorem crystalline_dirac_fredholm_analogue
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.fredholmAnalogue :=
  D.fredholmAnalogue_certified

end CrystallineIndex
end Folder
```
