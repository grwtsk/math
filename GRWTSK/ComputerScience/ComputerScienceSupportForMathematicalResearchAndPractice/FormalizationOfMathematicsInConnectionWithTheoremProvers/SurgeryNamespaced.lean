-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoLocallySeparatingRP2.Variant2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NoLocallySeparatingRP2.Variant2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97","mathematical_subject":"Foundations.Unclassified","original_sha256":"2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Ricci/Surgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Ricci.Flow


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoLocallySeparatingRP2.Variant2ac2b61454a82fc1d67fc77cfb9728f5e03d4c68bc31342b280e62cb42b10e97

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
