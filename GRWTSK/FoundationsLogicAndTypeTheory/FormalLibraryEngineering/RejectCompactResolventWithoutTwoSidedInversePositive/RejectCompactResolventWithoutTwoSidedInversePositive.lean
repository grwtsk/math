import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Analysis.OperatorTheory.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
example {D : UnboundedOperator ℂ H} {z : ℂ}
    (R : CompactResolventWitness D z) : CompactResolventWitness D z where
  inverse := R.inverse
  mapsDomain := R.mapsDomain
  compact := R.compact
  rightInverse := R.rightInverse
  leftInverse := R.leftInverse
