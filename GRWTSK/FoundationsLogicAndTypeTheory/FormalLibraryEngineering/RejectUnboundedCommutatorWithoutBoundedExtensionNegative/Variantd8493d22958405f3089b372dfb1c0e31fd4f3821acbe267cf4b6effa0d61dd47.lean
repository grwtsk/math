import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: a selected bounded operator alone does not prove agreement.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  domainInvariant := X.domainInvariant
  boundedCommutator := X.boundedCommutator
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
