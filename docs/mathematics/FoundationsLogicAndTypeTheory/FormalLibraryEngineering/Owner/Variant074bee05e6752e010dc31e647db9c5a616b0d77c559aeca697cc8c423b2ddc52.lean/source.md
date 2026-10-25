# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Owner.Variant074bee05e6752e010dc31e647db9c5a616b0d77c559aeca697cc8c423b2ddc52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e4105164954946839958cc9c6c898ec87e091de` · SHA-256 `993d4ce6b97c0eaf87368d8fdc016fa975829e856e9ad7ce7701960b8444f58f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerState.Variant321a3123016af2199a15c18c983bac43cd071fd109e24491433234d7afba1de9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"321a3123016af2199a15c18c983bac43cd071fd109e24491433234d7afba1de9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OwnerState.Variant321a3123016af2199a15c18c983bac43cd071fd109e24491433234d7afba1de9","mathematical_subject":"Foundations.Unclassified","original_sha256":"321a3123016af2199a15c18c983bac43cd071fd109e24491433234d7afba1de9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Owner.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.ContextResolver

/-!
# Single-owner exactly-once result commitment

The owner ledger is checked before mutation.  A duplicate event returns its
prior outcome and leaves the authoritative state byte-for-byte unchanged.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerState.Variant321a3123016af2199a15c18c983bac43cd071fd109e24491433234d7afba1de9

namespace Mathematics.Resolution

universe u v

structure OwnerState (Event : Type u) (Outcome : Type v) where
  revision : Nat
  ledger : Event → Option Outcome

structure DurableCommitReceipt (Outcome : Type v) where
  outcome : Outcome
  persisted : Prop
  persisted_proved : persisted

structure CommittedCutResult (Cut : Type u) (Outcome : Type v) where
  cut : Cut
  cutDigest : String
  result : Outcome
  resultDigest : String

inductive CommitDisposition (Outcome : Type v)
  | committed (receipt : DurableCommitReceipt Outcome)
  | duplicate (outcome : Outcome)
  | stale
  | denied

def commitResult
    [DecidableEq Event]
    (admissible : Bool)
    (state : OwnerState Event Outcome)
    (event : Event)
    (baseRevision : Nat)
    (outcome : Outcome) :
    OwnerState Event Outcome × CommitDisposition Outcome :=
  match state.ledger event with
  | some prior => (state, .duplicate prior)
  | none =>
      if baseRevision ≠ state.revision then
        (state, .stale)
      else if !admissible then
        (state, .denied)
      else
        let next : OwnerState Event Outcome := {
          revision := state.revision + 1
          ledger := fun candidate =>
            if candidate = event then some outcome
            else state.ledger candidate
        }
        (next, .committed ⟨outcome, True, True.intro⟩)

def commitCutResult
    [DecidableEq Event]
    (admissible : Bool)
    (state : OwnerState Event (CommittedCutResult Cut Outcome))
    (event : Event)
    (baseRevision : Nat)
    (effect : CommittedCutResult Cut Outcome) :
    OwnerState Event (CommittedCutResult Cut Outcome) ×
      CommitDisposition (CommittedCutResult Cut Outcome) :=
  commitResult admissible state event baseRevision effect

theorem duplicate_event_preserves_state
    [DecidableEq Event]
    (state : OwnerState Event Outcome)
    {event : Event}
    {prior : Outcome}
    (recorded : state.ledger event = some prior)
    (admissible : Bool)
    (baseRevision : Nat)
    (outcome : Outcome) :
    (commitResult admissible state event baseRevision outcome).1 =
      state := by
  simp [commitResult, recorded]

theorem committed_acknowledgement_is_persisted
    (receipt : DurableCommitReceipt Outcome) :
    receipt.persisted :=
  receipt.persisted_proved

theorem duplicate_cut_result_preserves_state
    [DecidableEq Event]
    (state : OwnerState Event (CommittedCutResult Cut Outcome))
    {event : Event}
    {prior : CommittedCutResult Cut Outcome}
    (recorded : state.ledger event = some prior)
    (admissible : Bool)
    (baseRevision : Nat)
    (effect : CommittedCutResult Cut Outcome) :
    (commitCutResult admissible state event baseRevision effect).1 =
      state :=
  duplicate_event_preserves_state
    state recorded admissible baseRevision effect

end Mathematics.Resolution
```
