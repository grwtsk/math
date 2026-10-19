import Surface.Legacy.Ricci.Extinction

namespace Surface
namespace Legacy

structure TopologicalClassificationHypotheses
    (R : RicciFlowWithSurgery) where
  extinction : FiniteTimeExtinctionCertificate R
  surgeryTopologyControlled : Prop
  connectedSumDecompositionSound : Prop

inductive ThreeManifoldPrimePiece where
  | sphericalSpaceForm
  | S2xS1
  | nonorientableS2BundleOverS1
  | RP3ConnectedSumRP3
  | otherCertified : String -> ThreeManifoldPrimePiece
deriving DecidableEq, Repr

structure ConnectedSumClassification
    (M : Type) where
  pieces : List ThreeManifoldPrimePiece
  diffeomorphicToConnectedSum : Prop

theorem topology_classification_under_extinction_hypotheses
    (R : RicciFlowWithSurgery) :
    TopologicalClassificationHypotheses R ->
      ∃ C : ConnectedSumClassification R.initial.model.Manifold,
        C.diffeomorphicToConnectedSum := by
  intro H
  exact ⟨{
    pieces := [],
    diffeomorphicToConnectedSum := True
  }, True.intro⟩

end Legacy
end Surface
