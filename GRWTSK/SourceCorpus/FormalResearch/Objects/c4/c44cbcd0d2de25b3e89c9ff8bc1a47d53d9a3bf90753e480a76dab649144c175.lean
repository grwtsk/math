import Mathematics.SemiLocalDefect.Access.PrimeCutAccess

/-!
# Primitive finite passivity obstructions

A failed search or exhausted budget is not a negative witness.
-/

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstruction where
  primeUniverse : FinitePrimeUniverse
  sourceCut : Finset primeUniverse.Prime
  insertedPrime : primeUniverse.Prime
  insertedPrime_not_mem :
    insertedPrime ∉ sourceCut
  compressionRank : Nat
  compressionRank_positive :
    0 < compressionRank
  witness : Fin compressionRank → ℚ
  quadraticAt :
    Finset primeUniverse.Prime →
      Nat → ℚ
  quadraticValue : ℚ
  quadraticValue_eq :
    quadraticValue =
      quadraticAt sourceCut compressionRank
  quadraticValue_neg :
    quadraticValue < 0
  properSubcutsNonnegative :
    ∀ subcut,
      subcut ⊂ sourceCut →
      0 ≤ quadraticAt subcut compressionRank
  lowerRanksNonnegative :
    ∀ rank,
      rank < compressionRank →
      0 ≤ quadraticAt sourceCut rank
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  canonical : Prop
  canonicalProof : canonical
  certificateDigest : CertificateDigest

inductive PassivitySearchResult
  | obstruction (witness : PassivityObstruction)
  | residualFrontier
      (primeUniverse : FinitePrimeUniverse)
      (checkedCuts checkedRanks : Nat)
  | rejectedEnvelope
      (reason : Nat)

end Mathematics.SemiLocalDefect.Access
