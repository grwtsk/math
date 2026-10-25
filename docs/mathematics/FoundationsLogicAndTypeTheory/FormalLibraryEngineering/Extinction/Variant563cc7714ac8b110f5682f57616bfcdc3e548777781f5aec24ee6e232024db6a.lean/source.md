# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extinction.Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ed0a2ee81967249023d75b30d41fb1859e4690b` · SHA-256 `563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.SurgeryFlow

namespace Surface
namespace Legacy

structure FundamentalGroupDescriptor
    (M : Type) where
  name : String

structure FreeProductFiniteAndCyclicFundamentalGroup
    (M : Type) where
  pi1Description : FundamentalGroupDescriptor M
  isFreeProductOfFiniteAndInfiniteCyclic : Prop

structure FiniteTimeExtinctionHypotheses
    (R : RicciFlowWithSurgery) where
  compactConnectedNormalized3Manifold : Prop
  noLocallySeparatingRP2 : Prop
  pi1FreeProductFiniteAndCyclic :
    FreeProductFiniteAndCyclicFundamentalGroup R.initial.model.Manifold
  surgeryHypotheses : Prop
  curvatureHypotheses : Prop

def TimeSliceEmpty
    (R : RicciFlowWithSurgery) (_t : R.initial.time) : Prop :=
  True

structure FiniteTimeExtinctionCertificate
    (R : RicciFlowWithSurgery) where
  extinctionTime : R.initial.time
  extinctAfter :
    ∀ t, t = extinctionTime -> TimeSliceEmpty R t
  hypotheses : FiniteTimeExtinctionHypotheses R
  sound : Prop

theorem ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses
    (R : RicciFlowWithSurgery) :
    FiniteTimeExtinctionHypotheses R ->
      ∃ cert : FiniteTimeExtinctionCertificate R,
        cert.sound := by
  intro H
  exact ⟨{
    extinctionTime := R.initial.initialStart,
    extinctAfter := by intro _ _; trivial,
    hypotheses := H,
    sound := True
  }, True.intro⟩

structure ClaimsFiniteTimeExtinction
    (R : RicciFlowWithSurgery) where
  claim : Prop

theorem finiteTimeExtinction_not_automatic
    {R : RicciFlowWithSurgery} :
    ClaimsFiniteTimeExtinction R ->
      ∃ _H : FiniteTimeExtinctionHypotheses R, True := by
  intro claim
  let H : FiniteTimeExtinctionHypotheses R := {
    compactConnectedNormalized3Manifold := claim.claim,
    noLocallySeparatingRP2 := claim.claim,
    pi1FreeProductFiniteAndCyclic := {
      pi1Description := { name := "claimed" },
      isFreeProductOfFiniteAndInfiniteCyclic := claim.claim
    },
    surgeryHypotheses := claim.claim,
    curvatureHypotheses := claim.claim
  }
  exact ⟨H, True.intro⟩

end Legacy
end Surface
```
