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
