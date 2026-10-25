import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm

/-!
# Registered fundamental sequences

Strictness and cofinality are premises attached to a registered identifier.
No arbitrary executable sequence is treated as a limit certificate.
-/

namespace Mathematics.StratifiedBoundary

structure RegisteredFundamentalSequence
    (Semantic : Type u)
    [LT Semantic]
    (profile : OrdinalNotationProfile Semantic) where
  sequenceId : FundamentalSequenceId
  limitCode : OrdinalTally
  approximant : Nat → OrdinalTally
  sourceEventRef : String
  authorityRef : String
  limitAdmitted : profile.admits limitCode
  approximantAdmitted :
    ∀ stage, profile.admits (approximant stage)
  strict :
    ∀ stage,
      profile.denotes (approximant stage) <
        profile.denotes (approximant (stage + 1))
  cofinal :
    ∀ bound,
      bound < profile.denotes limitCode →
        ∃ stage,
          bound < profile.denotes (approximant stage)

theorem registeredFundamentalSequence_strict
    {Semantic : Type u}
    [LT Semantic]
    {profile : OrdinalNotationProfile Semantic}
    (sequence :
      RegisteredFundamentalSequence Semantic profile)
    (stage : Nat) :
    profile.denotes (sequence.approximant stage) <
      profile.denotes (sequence.approximant (stage + 1)) :=
  sequence.strict stage

theorem registeredFundamentalSequence_cofinal
    {Semantic : Type u}
    [LT Semantic]
    {profile : OrdinalNotationProfile Semantic}
    (sequence :
      RegisteredFundamentalSequence Semantic profile)
    {bound : Semantic}
    (belowLimit :
      bound < profile.denotes sequence.limitCode) :
    ∃ stage,
      bound < profile.denotes (sequence.approximant stage) :=
  sequence.cofinal bound belowLimit

end Mathematics.StratifiedBoundary
