# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FundamentalSequence.Variant9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01a6d7a19a3676bd764aa9bca684d74f1a20e11c` · SHA-256 `9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
