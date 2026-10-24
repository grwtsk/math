import Mathematics.Progression.State

/-! # Content-addressed progression and carrier identity -/

namespace Mathematics.Progression

structure Identity where
  progressionDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- Carrier identity depends on the complete progression and interpretation
profile, never on an endpoint label alone. -/
structure CarrierIdentity where
  progressionId : ProgressionId
  identity : Identity
  deriving DecidableEq, Repr

theorem carrier_identity_ext
    {left right : CarrierIdentity}
    (hprogression : left.progressionId = right.progressionId)
    (hdigests : left.identity = right.identity) :
    left = right := by
  cases left
  cases right
  simp_all

end Mathematics.Progression
