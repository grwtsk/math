import Mathematics.Capability.ClientChart
import Mathematics.Web.Service
import NetworkElements.Cursor
import NetworkElements.Kind

/-! # Capability-filtered immutable network projection -/

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
