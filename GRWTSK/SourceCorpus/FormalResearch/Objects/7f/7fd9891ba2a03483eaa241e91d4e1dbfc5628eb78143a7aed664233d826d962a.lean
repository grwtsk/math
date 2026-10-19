/-!
# Successor-cut state connector

The retraction law makes the predecessor projection surjective.  Kernel,
metric, symmetry, bitfield, and trace compatibility remain separate
certificates.
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorStateConnector
    (Predecessor Successor : Type u) where
  embed : Predecessor → Successor
  project : Successor → Predecessor
  retract :
    ∀ state,
      project (embed state) = state
  predecessorDistance : Predecessor → Predecessor → Nat
  successorDistance : Successor → Successor → Nat
  metricNonexpansive :
    ∀ left right,
      predecessorDistance (project left) (project right) ≤
        successorDistance left right

theorem successor_projection_surjective
    {Predecessor Successor : Type u}
    (connector :
      SuccessorStateConnector Predecessor Successor) :
    Function.Surjective connector.project := by
  intro predecessor
  exact ⟨connector.embed predecessor, connector.retract predecessor⟩

structure SuccessorInvariantLawProjection
    (PredecessorLaw SuccessorLaw : Type u) where
  projectLaw : SuccessorLaw → PredecessorLaw
  predecessorLaw : PredecessorLaw
  successorLaw : SuccessorLaw
  kernelCompatibilityRef : String
  uniquenessRef : String
  projects :
    projectLaw successorLaw = predecessorLaw

theorem successor_invariant_law_projects
    {PredecessorLaw SuccessorLaw : Type u}
    (certificate :
      SuccessorInvariantLawProjection
        PredecessorLaw SuccessorLaw) :
    certificate.projectLaw certificate.successorLaw =
      certificate.predecessorLaw :=
  certificate.projects

end Mathematics.StratifiedBoundary
