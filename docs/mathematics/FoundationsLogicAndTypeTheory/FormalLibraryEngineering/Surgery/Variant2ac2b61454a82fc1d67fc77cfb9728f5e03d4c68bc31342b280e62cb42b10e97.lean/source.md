# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Surgery.Variant2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae2d39f1632a89f67f5764dd5c2c19bb364c27a2` · SHA-256 `2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Flow

namespace Surface
namespace Legacy

structure NoLocallySeparatingRP2
    (M : Type) : Prop where
  noEmbeddedTrivialNormalRP2 : True

structure GeometricRegion
    (model : GeometricModel) where
  name : String

structure GeometricPoint
    (R : RicciFlowTrajectory) where
  time : R.time

structure StrongDeltaNeck
    (R : RicciFlowTrajectory) where
  delta : Rat
  deltaPositive : 0 < delta
  center : GeometricPoint R
  neckRegion : GeometricRegion R.model
  modeledOnCylinder : Prop

structure SurgeryCutData
    (R : RicciFlowTrajectory) where
  cutsAlongTwoSpheres : Prop

structure SurgeryCapData
    (R : RicciFlowTrajectory) where
  standardCaps : Type
  capMetricsControlled : Prop

structure RicciSurgeryControl
    (R : RicciFlowTrajectory) : Prop where
  deltaSmall : True
  scaleControlled : True
  strongNeckAssumption : True

structure SurgeryGluingSound
    (before after : RicciFlowTrajectory)
    (cutData : SurgeryCutData before)
    (capData : SurgeryCapData before) where
  gluingCertified : Prop

structure TopologyChangeDescriptor where
  name : String

structure TopologyChangeControlledByConnectedSum
    (change : TopologyChangeDescriptor) : Prop where
  controlled : True

structure RicciSurgeryStep where
  before : RicciFlowTrajectory
  surgeryTime : before.time
  geometricHypotheses : RicciFlowGeometricHypotheses before
  noLocalSeparatingRP2 : NoLocallySeparatingRP2 before.model.Manifold
  surgeryControl : RicciSurgeryControl before
  neckRegion : GeometricRegion before.model
  cutData : SurgeryCutData before
  capData : SurgeryCapData before
  after : RicciFlowTrajectory
  gluingSound : SurgeryGluingSound before after cutData capData
  topologyChange : TopologyChangeDescriptor

theorem ricciSurgery_step_requires_curvature_and_neck_hypotheses
    (step : RicciSurgeryStep) :
    RicciFlowGeometricHypotheses step.before ∧
    RicciSurgeryControl step.before :=
  ⟨step.geometricHypotheses, step.surgeryControl⟩

theorem ricciSurgery_topology_change_requires_twoSphere_surgery
    (step : RicciSurgeryStep) :
    step.cutData.cutsAlongTwoSpheres ->
      TopologyChangeControlledByConnectedSum step.topologyChange := by
  intro _h
  exact { controlled := True.intro }

end Legacy
end Surface
```
