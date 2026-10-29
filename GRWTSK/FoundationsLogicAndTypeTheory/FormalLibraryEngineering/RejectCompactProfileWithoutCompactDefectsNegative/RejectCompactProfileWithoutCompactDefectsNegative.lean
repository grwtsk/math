import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.BoundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- A profile records intended analytic data; it cannot provide compactness.
example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
  squareDefectCompact := X.toCycle.squareDefectCompact
  commutatorCompact := X.toCycle.commutatorCompact

-- Each defect has its own proof boundary; neither remaining field accepts the profile either.
example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := X.toCycle.adjointDefectCompact
  squareDefectCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
  commutatorCompact := X.toCycle.commutatorCompact

example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := X.toCycle.adjointDefectCompact
  squareDefectCompact := X.toCycle.squareDefectCompact
  commutatorCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
