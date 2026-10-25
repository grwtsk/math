# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transaction.Variant3cf04f717111e75811193722a1af5a558e1b06b81ea57873899a7552175b0d8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7953e6b6a1da8ee3015cb0ff1fb355806b2465` · SHA-256 `1b113fca17644e10bb408b6a8b5241851c8d7bd4453a1d565d6aec617693f94c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variant5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Snapshot.Variant5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376","mathematical_subject":"Foundations.Unclassified","original_sha256":"5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Reactive/Transaction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reactive.Cell

/-! # Immutable prepare/commit transactions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variant5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376

namespace Mathematics.Reactive

universe u

structure Snapshot where
  revision : Nat
  digest : Digest
  deriving DecidableEq, Repr

structure MutationProposal (Payload : Type u) where
  id : TransactionId
  base : Snapshot
  payload : Payload

structure PreparedMutation (Payload : Type u) where
  proposal : MutationProposal Payload
  preparedAgainst : Snapshot

inductive PrepareResult (Payload : Type u)
  | prepared (value : PreparedMutation Payload)
  | rejectedRevisionRace

def prepare
    (current : Snapshot)
    (proposal : MutationProposal Payload) :
    PrepareResult Payload :=
  if proposal.base = current then
    .prepared ⟨proposal, current⟩
  else
    .rejectedRevisionRace

theorem prepare_rejects_revision_race
    (current : Snapshot)
    (proposal : MutationProposal Payload)
    (hrace : proposal.base ≠ current) :
    prepare current proposal = .rejectedRevisionRace := by
  simp [prepare, hrace]

inductive CommitResult
  | committed (next : Snapshot)
  | rejectedSnapshotRace
  deriving DecidableEq, Repr

def commit
    (current : Snapshot)
    (prepared : PreparedMutation Payload)
    (nextDigest : Digest) :
    CommitResult :=
  if prepared.preparedAgainst = current then
    .committed ⟨current.revision + 1, nextDigest⟩
  else
    .rejectedSnapshotRace

theorem commit_rejects_snapshot_race
    (current : Snapshot)
    (prepared : PreparedMutation Payload)
    (nextDigest : Digest)
    (hrace : prepared.preparedAgainst ≠ current) :
    commit current prepared nextDigest = .rejectedSnapshotRace := by
  simp [commit, hrace]

end Mathematics.Reactive
```
