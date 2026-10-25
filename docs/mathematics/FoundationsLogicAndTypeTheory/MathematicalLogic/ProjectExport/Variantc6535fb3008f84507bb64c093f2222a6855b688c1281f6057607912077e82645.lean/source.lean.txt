-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProjectTable.Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ProjectTable.Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529","mathematical_subject":"Logic.Foundations","original_sha256":"36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/ProjectExport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ContractElements.Id

/-! # Sovereign project export metadata. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProjectTable.Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529

namespace URSM.Contracts

structure ProjectTable (n : Nat) where
  project : Fin n → ProjectKey
  unique : Function.Injective project
  tableDigest : DigestRef

structure ProjectExport where
  key : ProjectKey
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  sourceDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef
  deriving DecidableEq, Repr

structure ProjectCodec (A : Type) where
  codecId : String
  schemaDigest : DigestRef
  encode : A → ByteArray
  decode? : ByteArray → Option A
  leftInverse : ∀ value, decode? (encode value) = some value
  maximumBytes : Nat

end URSM.Contracts
