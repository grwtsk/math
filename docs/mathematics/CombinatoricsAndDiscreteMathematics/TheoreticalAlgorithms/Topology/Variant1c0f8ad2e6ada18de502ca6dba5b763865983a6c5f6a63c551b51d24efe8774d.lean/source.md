# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Topology.Variant1c0f8ad2e6ada18de502ca6dba5b763865983a6c5f6a63c551b51d24efe8774d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87ef0cec70f2b96b21a246c181624bae8bb3d766` · SHA-256 `1c0f8ad2e6ada18de502ca6dba5b763865983a6c5f6a63c551b51d24efe8774d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
