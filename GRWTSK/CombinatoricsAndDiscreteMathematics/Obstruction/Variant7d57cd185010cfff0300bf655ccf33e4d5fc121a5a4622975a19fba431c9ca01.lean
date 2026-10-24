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
