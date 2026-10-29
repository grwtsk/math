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
