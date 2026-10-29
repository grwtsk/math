import Mathematics.Authority.Evidence
import Mathematics.Capability.Scope

/-!
# Client charts are projections

A client chart may display a bounded view of capability state.  It carries no
grant, lease, monitor decision, or theorem witness.
-/

namespace Mathematics.Capability

structure ClientChart where
  chartId : ChartId
  device : DeviceId
  snapshot : ObjectAddress
  visibleElements : Set ElementId

structure CapabilityChartProjection where
  chart : ClientChart
  capability : OperationalCapability
  visible_within_scope :
    chart.visibleElements ⊆ capability.elements
  device_bound :
    chart.device = capability.device
  snapshot_bound :
    chart.snapshot = capability.snapshot

def ClientChart.evidenceKind
    (_ : ClientChart) :
    Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem client_chart_has_no_theorem_authority
    (chart : ClientChart) :
    Authority.contributesTheoremAuthority chart.evidenceKind = false :=
  rfl

end Mathematics.Capability
