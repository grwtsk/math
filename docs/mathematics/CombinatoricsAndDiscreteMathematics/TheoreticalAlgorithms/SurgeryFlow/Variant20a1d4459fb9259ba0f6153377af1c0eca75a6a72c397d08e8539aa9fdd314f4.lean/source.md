# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryFlow.Variant20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `587fab41f8f256963e338a96ce66531bf11881bb` · SHA-256 `20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Surgery

namespace Surface
namespace Legacy

structure SurgeryStepSound
    (step : RicciSurgeryStep) : Prop where
  gluingSound : step.gluingSound.gluingCertified

structure RicciFlowWithSurgery where
  initial : RicciFlowTrajectory
  surgerySteps : List RicciSurgeryStep
  intervals : List RicciFlowTrajectory
  geometricHypothesesOnIntervals :
    ∀ R, R ∈ intervals -> RicciFlowGeometricHypotheses R
  surgerySound :
    ∀ step, step ∈ surgerySteps -> SurgeryStepSound step
  finiteSurgeryOnCompactIntervals? : Prop

end Legacy
end Surface
```
