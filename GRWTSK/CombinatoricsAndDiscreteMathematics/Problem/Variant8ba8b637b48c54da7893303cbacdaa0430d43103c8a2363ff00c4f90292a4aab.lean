import Mathematics.Mutation.Ranking

/-! # Canonical problem intermediate representation -/

namespace Mathematics.Mutation

open Mathematics.Juris

inductive ProblemSourceKind
  | controlledInjection
  | observedFailure
  | hybrid
  deriving DecidableEq, Repr

inductive ProblemDisposition
  | knownObstruction
  | matchedObstruction
  | ambiguousObstruction
  | unclassifiedResidue
  | jurisBlocked
  | trustBlocked
  | authorityBlocked
  | diagnosticExperimentRequired
  | repairReady
  | verificationPending
  | discharged
  | quarantined
  | successorSnapshotRequired
  deriving DecidableEq, Repr

structure ProblemIR where
  problemId : StableId
  snapshotDigest : Digest
  sourceKind : ProblemSourceKind
  diagnosisAntichain : ExplanationFamily
  signature : MutationSignature
  violatedInvariants : Finset StableId
  affectedStrata : StratumSet
  jurisDisposition : JurisDisposition
  requiredTrust : Finset StableId
  availableRespectEvidence : Finset StableId
  authorityClass : Authority.EvidenceKind
  disposition : ProblemDisposition
  admissibleDischarges : Finset StableId
  requiredCertificates : Finset StableId
  nonclaims : List Nonclaim

def compileProblemIR
    (problem : ProblemIR) :
    ProblemIR :=
  problem

end Mathematics.Mutation
