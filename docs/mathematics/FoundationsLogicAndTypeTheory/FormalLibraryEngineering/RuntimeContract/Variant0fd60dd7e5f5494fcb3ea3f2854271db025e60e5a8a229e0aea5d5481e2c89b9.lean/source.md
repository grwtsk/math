# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuntimeContract.Variant0fd60dd7e5f5494fcb3ea3f2854271db025e60e5a8a229e0aea5d5481e2c89b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fe009f97a2fbdf4b797b1473a2ff7799f475347` · SHA-256 `5227a2dad1201ffef23d309c2ff021bd26f84f1b3115b94a61d045acbe9f11a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShaderRuntimeContract.Variant0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ShaderRuntimeContract.Variant0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed","mathematical_subject":"Foundations.Unclassified","original_sha256":"0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Shader/RuntimeContract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Shader.RuntimeContract

Radiation role: shader-spec
BinaryMatrix spine: This module states runtime shader boundaries for BinaryMatrix-adjacent phase witnesses.
Ontology: shader.runtime_contract
Pivot role: none
Zero typology: none
Contract boundary: shader
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShaderRuntimeContract.Variant0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed

namespace Folder
namespace Shader

structure ShaderRuntimeContract where
  shaderName : String
  computesVisibleResidualSplit : Prop
  validatesShape : Prop
  doesNotProveModularity : Prop
  doesNotProveBSD : Prop
  doesNotProveModularity_certified : doesNotProveModularity
  doesNotProveBSD_certified : doesNotProveBSD

theorem shader_does_not_prove_modularity
    (C : ShaderRuntimeContract) :
    C.doesNotProveModularity :=
  C.doesNotProveModularity_certified

theorem shader_does_not_prove_bsd
    (C : ShaderRuntimeContract) :
    C.doesNotProveBSD :=
  C.doesNotProveBSD_certified

end Shader
end Folder
```
