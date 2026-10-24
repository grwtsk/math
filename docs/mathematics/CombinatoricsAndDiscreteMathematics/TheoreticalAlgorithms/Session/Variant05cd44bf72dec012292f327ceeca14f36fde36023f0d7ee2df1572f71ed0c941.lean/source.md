# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Session.Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cb1aded51371722dcb0652f91e3f26a8b88fc58` · SHA-256 `05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.ClientChart
import NetworkElements.Cursor
import NetworkElements.Kind

/-! # Resumable duplex session state -/

namespace URSM.Network

open Mathematics
open Mathematics.Capability

structure SessionIdentity where
  sessionId : StableId
  principal : Principal
  device : DeviceId
  chart : ClientChart
  chart_device_bound :
    chart.device = device

structure SessionState where
  identity : SessionIdentity
  resume : ResumePoint
  inflight : List StableId
  subscriptions : List Lane

inductive SessionEvent
  | observe (revision : ViewRevision)
  | acknowledge (cursor : OutcomeCursor) (eventId : StableId)
  | disconnect

inductive SessionStep :
    SessionState → SessionEvent → SessionState → Prop
  | observe
      {state : SessionState}
      {revision : ViewRevision}
      (monotone : state.resume.view.Reaches revision) :
      SessionStep state (.observe revision)
        { state with
          resume := { state.resume with view := revision } }
  | acknowledge
      {state : SessionState}
      {cursor : OutcomeCursor}
      {eventId : StableId}
      (monotone : state.resume.outcome.Advances cursor) :
      SessionStep state (.acknowledge cursor eventId)
        { state with
          resume := { state.resume with outcome := cursor }
          inflight := state.inflight.erase eventId }
  | disconnect
      (state : SessionState) :
      SessionStep state .disconnect state

theorem disconnect_preserves_logical_session
    (state : SessionState) :
    SessionStep state .disconnect state :=
  .disconnect state

end URSM.Network
```
