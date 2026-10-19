import Mathematics.SemiLocalDefect.Hardy.Symbol

/-!
# Archimedean balance

The balance records how the archimedean ratio is paired with every admitted
finite place.  Existence is cut-local; naturality under enlargement is a
separate certificate.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure ArchimedeanBalance
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  residual : Symbol
  allocation : Prime → Symbol
  archimedean_factorization :
    profile.archimedeanRatio =
      residual *
        ∏ prime ∈ cut, allocation prime
  paired_quasiInner :
    ∀ prime ∈ cut,
      quasiInner.member
        (allocation prime *
          profile.finiteRatio prime)
  residualHardyCondition : Prop
  residualHardyConditionProof :
    residualHardyCondition
  digest : BalanceDigest

structure ArchimedeanBalanceExistence
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  balance :
    ArchimedeanBalance
      profile quasiInner cut

structure ArchimedeanBalanceNaturality
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {profile :
      SemiLocalSymbolProfile Prime Symbol}
    {quasiInner : QuasiInnerClass Symbol}
    {source target : Finset Prime}
    (sourceBalance :
      ArchimedeanBalance
        profile quasiInner source)
    (targetBalance :
      ArchimedeanBalance
        profile quasiInner target) where
  source_subset : source ⊆ target
  retainedPairingCompatible :
    ∀ prime ∈ source,
      sourceBalance.allocation prime =
        targetBalance.allocation prime
  residualTransition : Prop
  residualTransitionProof :
    residualTransition

end Mathematics.SemiLocalDefect.Hardy
