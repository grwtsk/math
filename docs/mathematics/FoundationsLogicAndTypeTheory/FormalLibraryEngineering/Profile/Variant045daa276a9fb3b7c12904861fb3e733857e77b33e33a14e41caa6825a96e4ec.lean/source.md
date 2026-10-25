# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Variant045daa276a9fb3b7c12904861fb3e733857e77b33e33a14e41caa6825a96e4ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da76c273b5723b2845f02e063bf933352fa65a1a` · SHA-256 `9f6f4ba62b6bfe7c5fde5ea5bab02a16545dcaf7589b54248c914e6065a42b35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplementationPolicy.Variantf6011c1eb2bfa387e7c9bddea070b1a57f986b956b0d012a9899dc6defee7103","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6011c1eb2bfa387e7c9bddea070b1a57f986b956b0d012a9899dc6defee7103","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ImplementationPolicy.Variantf6011c1eb2bfa387e7c9bddea070b1a57f986b956b0d012a9899dc6defee7103","mathematical_subject":"Foundations.Unclassified","original_sha256":"f6011c1eb2bfa387e7c9bddea070b1a57f986b956b0d012a9899dc6defee7103","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.All

/-! # Governed refactoring profiles -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplementationPolicy.Variantf6011c1eb2bfa387e7c9bddea070b1a57f986b956b0d012a9899dc6defee7103

namespace Mathematics.Refactor

open Mathematics

inductive ImplementationPolicy
  | exact
  | relocationMap
  deriving DecidableEq, Repr, Inhabited

structure Profile where
  id : RefactorProfileId
  implementationPolicy : ImplementationPolicy := .exact
  preservePublicNames : Bool := true
  preserveStatements : Bool := true
  preserveTrustClosures : Bool := true
  preserveSafety : Bool := true
  preserveProofText : Bool := true
  learnedEvidenceEnabled : Bool := false
  requireCleanTree : Bool := true
  profileDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Refactor
```
