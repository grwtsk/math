import Mathematics.GraphAccess.Execution

/-!
# Canonical access checkpoints

Checkpoint metadata binds the encoded state to the graph cut, request, mode
revision, and dependent mode profile.
-/

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
