# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Obstruction.Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94c392b0f06f88b928f14cf93918127127ccea10` · SHA-256 `80ab2c2becb6cdaa0b0127333747956df62e06c2bbba3e6f04b807d7a865a7b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionKind.Varianteac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ObstructionKind.Varianteac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"eac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Obstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Juris.Profile
import Mathematics.Mutation.Stratum

/-!
# Known obstructions and deterministic mutation programs

The baseline and direct mutation locus are explicit.  “Known” means the local
invariant violation is witnessed; downstream propagation remains an object of
the experiment.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionKind.Varianteac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c

namespace Mathematics.Mutation

inductive ObstructionKind
  | semanticIdentityLoss
  | dependencyOmission
  | proofAuthorityPromotion
  | capabilityWidening
  | permissionInheritance
  | jurisConflict
  | provenanceBreak
  | snapshotStaleness
  | representationLoss
  | accessibilityLoss
  | boundaryLeakage
  | dataUseEscalation
  | crossDeviceAuthorityTransfer
  | noncommutingMerge
  | receiptOmission
  | replayNondeterminism
  deriving DecidableEq, Repr

structure ImmutableSnapshot (State : Type) where
  state : State
  digest : Digest
  digest_valid : digest.Valid

structure MutationProgram (State : Type) where
  programId : StableId
  mutate : State → State
  directSupport : Finset StableId

structure KnownObstruction
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  obstructionId : StableId
  kind : ObstructionKind
  injectionLocus : Finset StableId
  invariant : State → Prop
  program : MutationProgram State
  baselineHolds :
    invariant snapshot.state
  mutantViolates :
    ¬ invariant (program.mutate snapshot.state)
  direct_support_exact :
    program.directSupport = injectionLocus
  expectedDetector : StableId
  recoveryCriterion : StableId
  jurisProfileId : StableId

def directMutationSupport
    {State : Type}
    {snapshot : ImmutableSnapshot State}
    (obstruction : KnownObstruction snapshot) :
    Finset StableId :=
  obstruction.program.directSupport

theorem direct_mutation_support_exact
    {State : Type}
    {snapshot : ImmutableSnapshot State}
    (obstruction : KnownObstruction snapshot) :
    directMutationSupport obstruction = obstruction.injectionLocus :=
  obstruction.direct_support_exact

end Mathematics.Mutation
```
