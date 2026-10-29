-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutionRecord.Variant6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExecutionRecord.Variant6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f","mathematical_subject":"Computation.DataStructures","original_sha256":"6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Handoff

/-!
# Asynchronous reference-monitor traces

Every execution transition requires a lease witness against the revocation
ledger visible at that transition.  Event time is strictly increasing, so a
later revocation cannot be smuggled in as a retroactive authorization change.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutionRecord.Variant6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f

namespace Mathematics.Capability

structure ExecutionRecord where
  lease : Lease
  request : OperationRequest
  time : Nat

structure MonitorState where
  clock : Nat
  revocations : List Revocation
  executions : List ExecutionRecord
  handoffs : List HandoffContext

def MonitorState.Safe (state : MonitorState) : Prop :=
  ∀ record ∈ state.executions,
    record.time ≤ state.clock ∧
      record.lease.Allows
        state.revocations record.time record.request

inductive CapabilityEvent
  | revoke (revocation : Revocation)
  | execute (record : ExecutionRecord)
  | handoff (time : Nat) (context : HandoffContext)

inductive MonitorStep :
    MonitorState → CapabilityEvent → MonitorState → Prop
  | revoke
      {state : MonitorState}
      {revocation : Revocation}
      (future : state.clock < revocation.effectiveAt) :
      MonitorStep state (.revoke revocation)
        { clock := revocation.effectiveAt
          revocations := revocation :: state.revocations
          executions := state.executions
          handoffs := state.handoffs }
  | execute
      {state : MonitorState}
      {record : ExecutionRecord}
      (future : state.clock < record.time)
      (authorization :
        record.lease.Allows
          state.revocations record.time record.request) :
      MonitorStep state (.execute record)
        { clock := record.time
          revocations := state.revocations
          executions := record :: state.executions
          handoffs := state.handoffs }
  | handoff
      {state : MonitorState}
      {time : Nat}
      {context : HandoffContext}
      (future : state.clock < time) :
      MonitorStep state (.handoff time context)
        { clock := time
          revocations := state.revocations
          executions := state.executions
          handoffs := context :: state.handoffs }

theorem MonitorStep.preserves_safety
    {before after : MonitorState}
    {event : CapabilityEvent}
    (safe : before.Safe)
    (step : MonitorStep before event after) :
    after.Safe := by
  cases step with
  | revoke future =>
      intro record listed
      have old := safe record listed
      exact
        ⟨Nat.le_trans old.1 (Nat.le_of_lt future),
          old.2.with_future_revocation _
            (Nat.lt_of_le_of_lt old.1 future)⟩
  | execute future authorization =>
      intro record listed
      simp only [List.mem_cons] at listed
      rcases listed with rfl | listed
      · exact ⟨Nat.le_refl _, authorization⟩
      · have old := safe record listed
        exact
          ⟨Nat.le_trans old.1 (Nat.le_of_lt future), old.2⟩
  | handoff future =>
      intro record listed
      have old := safe record listed
      exact
        ⟨Nat.le_trans old.1 (Nat.le_of_lt future), old.2⟩

def initialMonitorState : MonitorState where
  clock := 0
  revocations := []
  executions := []
  handoffs := []

theorem initialMonitorState_safe :
    initialMonitorState.Safe := by
  intro record listed
  simp [initialMonitorState] at listed

inductive MonitorTrace :
    MonitorState → List CapabilityEvent → MonitorState → Prop
  | nil (state : MonitorState) :
      MonitorTrace state [] state
  | cons
      {start middle finish : MonitorState}
      {event : CapabilityEvent}
      {events : List CapabilityEvent}
      (head : MonitorStep start event middle)
      (tail : MonitorTrace middle events finish) :
      MonitorTrace start (event :: events) finish

theorem MonitorTrace.preserves_safety
    {start finish : MonitorState}
    {events : List CapabilityEvent}
    (trace : MonitorTrace start events finish)
    (safe : start.Safe) :
    finish.Safe := by
  induction trace with
  | nil => exact safe
  | cons head tail inductionHypothesis =>
      exact inductionHypothesis (head.preserves_safety safe)

theorem executed_records_are_authorized
    (state : MonitorState)
    (safe : state.Safe)
    (record : ExecutionRecord)
    (listed : record ∈ state.executions) :
    record.lease.Allows
      state.revocations record.time record.request :=
  (safe record listed).2

end Mathematics.Capability
