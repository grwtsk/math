# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClientChart.Variant2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccb3c043e33b01500de4e68119cb0aeb97927008` · SHA-256 `2d4a5f4aebd540abd2ac7fa5efc05e3d31ddcfbda416a279d83ee2e58ad96928`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
