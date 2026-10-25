-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessCheckpoint.Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AccessCheckpoint.Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Checkpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Execution

/-!
# Canonical access checkpoints

Checkpoint metadata binds the encoded state to the graph cut, request, mode
revision, and dependent mode profile.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessCheckpoint.Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56

namespace Mathematics.GraphAccess

structure AccessCheckpoint
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  graphCutDigest : CutDigest
  requestDigest : RequestDigest
  modeRevision : ModeRevision
  profileDigest : ProfileDigest
  encodedState : ByteArray
  usage : TraversalUsage
  graphCutDigest_eq :
    graphCutDigest = G.digest
  requestDigest_eq :
    requestDigest = req.requestDigest
  modeRevision_eq :
    modeRevision = req.plan.revision
  profileDigest_eq :
    profileDigest =
      profiles.digest
        req.plan.primary req.modeProfile

namespace AccessMachine

def checkpoint
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    (state : machine.State) :
    AccessCheckpoint req where
  graphCutDigest := G.digest
  requestDigest := req.requestDigest
  modeRevision := req.plan.revision
  profileDigest :=
    profiles.digest
      req.plan.primary req.modeProfile
  encodedState := machine.encode state
  usage := machine.usage state
  graphCutDigest_eq := rfl
  requestDigest_eq := rfl
  modeRevision_eq := rfl
  profileDigest_eq := rfl

def resume
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    (saved : AccessCheckpoint req) :
    Option machine.State :=
  machine.decode saved.encodedState

theorem checkpoint_roundtrip
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    (state : machine.State) :
    machine.resume (machine.checkpoint state) =
      some state :=
  machine.decode_encode state

theorem replay_deterministic
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    (state : machine.State)
    (stateInvariant : machine.invariant state)
    (withinBudget :
      WithinBudget
        (machine.usage state)
        req.budget)
    (fuel : Nat) :
    let saved := machine.checkpoint state
    match resumedEquality :
      machine.resume saved with
    | some replayed =>
        runMachine machine fuel replayed
          (machine.decode_invariant
            saved.encodedState replayed
            resumedEquality)
          (by
            have replayed_eq : replayed = state := by
              simpa [resume, checkpoint] using
                (Option.some.inj
                  (machine.decode_encode state |>.symm.trans
                    resumedEquality)).symm
            simpa [replayed_eq] using withinBudget)
        =
        runMachine machine fuel state
          stateInvariant withinBudget
    | none => False := by
  dsimp only [checkpoint, resume]
  split
  · rename_i replayed resumedEquality
    have state_eq : state = replayed :=
      Option.some.inj
        ((machine.decode_encode state).symm.trans
          resumedEquality)
    subst replayed
    rfl
  · rename_i resumedEquality
    have impossible := machine.decode_encode state
    rw [resumedEquality] at impossible
    contradiction

end AccessMachine

end Mathematics.GraphAccess
