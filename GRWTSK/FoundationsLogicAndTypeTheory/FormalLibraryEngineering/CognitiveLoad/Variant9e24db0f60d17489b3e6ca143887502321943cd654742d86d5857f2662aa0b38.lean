import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Advisory cognitive-load accounting

These natural-number quantities guide presentation.  They are not theorem
evidence and cannot establish feasibility or obstruction.
-/

namespace Mathematics.BinaryFrontier

structure CognitiveLoadProfile where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  bitWeight : Nat
  obstructionWeight : Nat

def CognitiveLoadProfile.total
    (profile : CognitiveLoadProfile) : Nat :=
  profile.prerequisiteLoad +
    profile.localLoad +
    profile.relationLoad +
    profile.unknownLoad +
    profile.operationLoad +
    profile.verificationLoad +
    profile.bitWeight * profile.bitLoad +
    profile.obstructionWeight * profile.obstructionLoad

def CognitiveLoadDelta
    (parent child : CognitiveLoadProfile) : Int :=
  Int.ofNat child.total - Int.ofNat parent.total

theorem cognitive_load_is_advisory
    (profile : CognitiveLoadProfile) :
    ∃ measured : Nat,
      measured = profile.total :=
  ⟨profile.total, rfl⟩

end Mathematics.BinaryFrontier
