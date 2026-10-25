# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofStatus.Variant0dbc8003c0df25b1288c165e04ef21efe9fc2ba009b88081e3196bd053af7f4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f07cde4d102020f912556a2cb1c9709c8a643350` · SHA-256 `3bc5dd9bd8466e600e3e4607402a8aebb9ef4a268b5bde047fc96896d72452bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RebuildProofStatus.Variant4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RebuildProofStatus.Variant4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9","mathematical_subject":"Foundations.Unclassified","original_sha256":"4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/ProofStatus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Folder.Rebuild.ProofStatus

Local proof-status algebra for the rebuild branch.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RebuildProofStatus.Variant4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9

namespace Folder
namespace Rebuild

inductive RebuildProofStatus where
  | checkedByLean
  | mathlibInternal
  | classicalAnchorOnly
  | conditionalBridge
  | theoremTarget
  | toyModel
  | rejectedClaim
deriving DecidableEq, Repr

def RebuildProofStatus.allowedAsProofDependency :
    RebuildProofStatus → Prop
  | .checkedByLean => True
  | .mathlibInternal => True
  | .conditionalBridge => True
  | _ => False

theorem classicalAnchorOnly_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.classicalAnchorOnly := by
  intro h
  exact h

theorem theoremTarget_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.theoremTarget := by
  intro h
  exact h

theorem toyModel_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.toyModel := by
  intro h
  exact h

theorem rejectedClaim_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.rejectedClaim := by
  intro h
  exact h

end Rebuild
end Folder
```
