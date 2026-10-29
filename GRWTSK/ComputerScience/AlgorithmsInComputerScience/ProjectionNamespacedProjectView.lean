-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectView.Variantdc0db2f683a5370e906acf807164fcf98b639e3ee8b78369215e6298e7a5f45c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc0db2f683a5370e906acf807164fcf98b639e3ee8b78369215e6298e7a5f45c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectView.Variantdc0db2f683a5370e906acf807164fcf98b639e3ee8b78369215e6298e7a5f45c","mathematical_subject":"Computation.DataStructures","original_sha256":"dc0db2f683a5370e906acf807164fcf98b639e3ee8b78369215e6298e7a5f45c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.ClientChart
import Mathematics.Web.Service
import NetworkElements.Cursor
import NetworkElements.Kind

/-! # Capability-filtered immutable network projection -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectView.Variantdc0db2f683a5370e906acf807164fcf98b639e3ee8b78369215e6298e7a5f45c

namespace URSM.Network

open Mathematics
open Mathematics.Capability
open Mathematics.Web.Service

structure ProjectView where
  projectId : ElementId
  snapshot : ObjectAddress
  projectKind : ProjectKind
  authority : AuthorityLabel
  valueBits : List Bool
  validBits : List Bool
  value_valid_same_length :
    valueBits.length = validBits.length

structure NetworkView where
  revision : ViewRevision
  active : ServiceSnapshot
  activeAddress : ObjectAddress
  chart : ClientChart
  projects : List ProjectView

structure ProjectsWithinChart
    (view : NetworkView) : Prop where
  visible :
    ∀ project ∈ view.projects,
      project.projectId ∈ view.chart.visibleElements
  project_snapshot_bound :
    ∀ project ∈ view.projects,
      project.snapshot = view.activeAddress
  chart_snapshot_bound :
    view.chart.snapshot = view.activeAddress

structure CertifiedNetworkProjection where
  view : NetworkView
  withinChart : ProjectsWithinChart view

def NetworkView.evidenceKind
    (_ : NetworkView) :
    Mathematics.Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem network_view_has_no_theorem_authority
    (view : NetworkView) :
    Mathematics.Authority.contributesTheoremAuthority
      view.evidenceKind = false :=
  rfl

theorem projected_project_value_validity_agree
    (projection : CertifiedNetworkProjection)
    (project : ProjectView)
    (_listed : project ∈ projection.view.projects) :
    project.valueBits.length = project.validBits.length :=
  project.value_valid_same_length

end URSM.Network
