# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HattoriStallingsTrace.Variantd84a3913694bef18849a34874aaba820daa2f180d7af2f8e89e37297f5a71b3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbf6b40680dee4cfee2a56db82db0a25e4aea183` · SHA-256 `9484908430b4713f99b0f454114d58e5f1cc247792a567d90839b4087facf450`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HattoriStallingsTraceContract.Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HattoriStallingsTraceContract.Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b","mathematical_subject":"Foundations.Unclassified","original_sha256":"3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/HattoriStallingsTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.CategoricalTrace

/-!
# Folder.CrystallineTensor.HattoriStallingsTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records Hattori-Stallings trace slots, not a BinaryMatrix trace theorem.
Ontology: crystalline.hattori_stallings_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HattoriStallingsTraceContract.Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b

namespace Folder
namespace CrystallineTensor

structure HattoriStallingsTraceContract where
  RingLike : Type _
  ModuleLike : Type _
  EndomorphismLike : Type _
  traceValue : EndomorphismLike → Type _
  traceDefined : Prop
  traceDefined_certified : traceDefined
  MoritaInvariant? : Prop
  sourceLabel : String

theorem hattori_stallings_trace_defined
    (T : HattoriStallingsTraceContract) :
    T.traceDefined :=
  T.traceDefined_certified

end CrystallineTensor
end Folder
```
