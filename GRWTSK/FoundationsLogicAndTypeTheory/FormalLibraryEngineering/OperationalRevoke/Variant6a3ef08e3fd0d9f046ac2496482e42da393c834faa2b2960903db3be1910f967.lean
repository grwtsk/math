import FormalResearch.Construct.Envelope
import Lean.Elab.Tactic.Omega

/-!
# The native Construct decoded revocation core

This models `State::revoke_event` in the inspected native `operational.cpp`
lines 331–337. The exact grant DTO, canonical bytes, usage and installation
sequence are retained. Effect keys have an empty issuer; delegation and
amendment keys use the reference's issuer. Actor comparison precedes lookup.
The finite table represents the native unique-key map, rather than a list of
equal-valued aliases. Other native state components are arbitrary parameters,
so their preservation does not depend on a replacement ledger implementation.

The independent predicates check the decoded scoped DTO and the revocation
subset of `Check::event` and `OperationalSession::apply` host comparisons.
They do not authenticate supplied host metadata. Canonical parsing, JSON closed
shape refinement, canonical-byte/DTO agreement, all other transitions, graph
source binding, session candidate publication, allocation failure, concurrent
host fencing, native resource accounting and C++ refinement remain open.
Counters use Nat. The scoped preservation theorem requires revision headroom
below the native decoded integer bound; it does not prove all-transition
reachability bounds or model unsigned machine wrap outside that scope.
In particular, core replay idempotence does not assert that a repeated session
event leaves the event log or sequence unchanged: native `transition` advances
both even when the revocation core leaves its grant state unchanged.

Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.Construct.OperationalRevoke

def nativeHead : String := "987d1b70965c668ee659804ad5e7147d1807a700"

def nativeSourceHashes : List (String × String) :=
  [("src/construct/operational.cpp",
    "f6fab17928338b5bd1968faf597ce86269db83db3f52d82dabcb2229c0203bdf"),
   ("include/construct/operational.hpp",
    "bc16991bc841c5f42d97626119f208206c1e0a95ad5586e0437cbaacd9dfa000"),
   ("tools/repo/construct_effect_ledger_vectors.py",
    "a71df14c3ddcba98f25a794126359fac086415db421840e1314479bcf18872cf"),
   ("tools/repo/construct_delegation_ledger_vectors.py",
    "846e517bd7ccd404515418a32122a047d239affa722f954b81473ac030974518"),
   ("tools/repo/fixtures/construct-effect-ledger-v1.json",
    "73bbe4cf9f8a79f19e3b0520e4e8546bf02b66dd6c8adb1378a531a8f4b778b3"),
   ("tools/repo/fixtures/construct-delegation-ledger-v1.json",
    "a58e7b0e4b4b094fbcc10ef46e4ae54754adf85fedd51167196b8784a01b385e"),
   ("docs/contracts/construct-operational-v1-candidate.json",
    "67f087e929b80e483efa4832beb41f34cc9bed09a84422bdd842cb1aa612f1e9")]

inductive Mode where
  | effect | delegation | amendment
  deriving DecidableEq

abbrev Key := String × String

structure Scope where
  subject : String
  executor : String
  resource : Envelope.Reference
  action : String
  purpose : String
  recipient : String
  payloadSha256 : String
  deriving DecidableEq

/-- These constructors encode the two native closed grant DTO field sets. -/
inductive GrantData where
  | effect (parent : Option String)
  | delegated (issuer : String) (parent : Option Key) (depth : ℕ) (delegates : List String)
  deriving DecidableEq

structure GrantValue where
  id : String
  scope : Scope
  notBefore : ℕ
  expires : ℕ
  calls : ℕ
  bytes : ℕ
  data : GrantData
  deriving DecidableEq

structure GrantRecord where
  value : GrantValue
  canonical : String
  revoked : Bool
  usedCalls : ℕ
  usedBytes : ℕ
  acceptedSequence : ℕ
  deriving DecidableEq

/-- A unique-key finite map; values outside `keys` are unobservable defaults. -/
structure GrantTable where
  keys : Finset Key
  row : Key → GrantRecord

def lookup (table : GrantTable) (key : Key) : Option GrantRecord :=
  if key ∈ table.keys then some (table.row key) else none

def markRevoked (table : GrantTable) (key : Key) : GrantTable :=
  { table with row := Function.update table.row key { table.row key with revoked := true } }

/-- All native fields not read or changed by `revoke_event` remain opaque here. -/
structure State (Ledger Resources Events : Type) where
  mode : Mode
  domain : String
  epoch : String
  authority : String
  grants : GrantTable
  ledger : Ledger
  resources : Resources
  events : Events
  revision : ℕ
  chainVisits : ℕ
  grantDebits : ℕ
  previousTime : ℕ
  sequence : ℕ
  error : String

inductive Target where
  | effect (grantId : String)
  | reference (grantRef : Key)
  deriving DecidableEq

structure Event where
  actor : String
  domain : String
  epoch : String
  sequence : ℕ
  time : ℕ
  target : Target
  deriving DecidableEq

structure HostEvent where
  actor : String
  domain : String
  epoch : String
  sequence : ℕ
  time : ℕ
  timeCertain : Bool
  deriving DecidableEq

def targetKey (event : Event) : Key :=
  match event.target with
  | .effect id => ("", id)
  | .reference ref => ref

def authorizedActor {L R E : Type} (state : State L R E) (event : Event) : String :=
  match state.mode with
  | .effect => state.authority
  | .delegation | .amendment => (targetKey event).1

inductive Outcome where
  | unauthorized | hostInputFailure | revoked
  deriving DecidableEq

def changed {L R E : Type} (state : State L R E) (key : Key) : State L R E :=
  { state with grants := markRevoked state.grants key, revision := state.revision + 1 }

/-- Executable actor-first native core, before transition logging or session publication. -/
def revokeCore {L R E : Type} (state : State L R E) (event : Event) : Outcome × State L R E :=
  if event.actor ≠ authorizedActor state event then (.unauthorized, state)
  else
    match lookup state.grants (targetKey event) with
    | none => (.hostInputFailure, state)
    | some record =>
      if record.revoked then (.revoked, state)
      else (.revoked, changed state (targetKey event))

theorem unauthorized_no_core_mutation {L R E : Type} (state : State L R E) (event : Event)
    (actor : event.actor ≠ authorizedActor state event) :
    revokeCore state event = (.unauthorized, state) := by
  simp [revokeCore, actor]

theorem missing_no_core_mutation {L R E : Type} (state : State L R E) (event : Event)
    (actor : event.actor = authorizedActor state event)
    (missing : lookup state.grants (targetKey event) = none) :
    revokeCore state event = (.hostInputFailure, state) := by
  simp [revokeCore, actor, missing]

theorem authorized_existing_changes_once {L R E : Type} (state : State L R E) (event : Event)
    (actor : event.actor = authorizedActor state event)
    (installed : targetKey event ∈ state.grants.keys)
    (active : (state.grants.row (targetKey event)).revoked = false) :
    revokeCore state event = (.revoked, changed state (targetKey event)) := by
  simp [revokeCore, actor, lookup, installed, active]

theorem already_revoked_no_core_mutation {L R E : Type} (state : State L R E) (event : Event)
    (actor : event.actor = authorizedActor state event)
    (installed : targetKey event ∈ state.grants.keys)
    (revoked : (state.grants.row (targetKey event)).revoked = true) :
    revokeCore state event = (.revoked, state) := by
  simp [revokeCore, actor, lookup, installed, revoked]

def immutableRecord (record : GrantRecord) : GrantValue × String × ℕ × ℕ × ℕ :=
  (record.value, record.canonical, record.usedCalls, record.usedBytes, record.acceptedSequence)

theorem markRevoked_immutable (table : GrantTable) (target key : Key) :
    immutableRecord ((markRevoked table target).row key) = immutableRecord (table.row key) := by
  by_cases equal : key = target
  · subst key
    simp [markRevoked, immutableRecord]
  · simp [markRevoked, Function.update_of_ne equal]

theorem markRevoked_unrelated (table : GrantTable) (target key : Key) (different : key ≠ target) :
    lookup (markRevoked table target) key = lookup table key := by
  simp [lookup, markRevoked, Function.update_of_ne different]

def fixedFields {L R E : Type} (state : State L R E) :
    Mode × String × String × String × L × R × E × ℕ × ℕ × ℕ × ℕ × String :=
  (state.mode, state.domain, state.epoch, state.authority, state.ledger, state.resources,
    state.events, state.chainVisits, state.grantDebits, state.previousTime,
    state.sequence, state.error)

theorem revokeCore_fixed_fields {L R E : Type} (state : State L R E) (event : Event) :
    fixedFields (revokeCore state event).2 = fixedFields state := by
  unfold revokeCore
  split
  · rfl
  · split
    · rfl
    · split <;> rfl

theorem revokeCore_keys_preserved {L R E : Type} (state : State L R E) (event : Event) :
    (revokeCore state event).2.grants.keys = state.grants.keys := by
  unfold revokeCore
  split
  · rfl
  · split
    · rfl
    · split <;> rfl

theorem revokeCore_immutable_inventory {L R E : Type} (state : State L R E) (event : Event)
    (key : Key) :
    immutableRecord ((revokeCore state event).2.grants.row key) =
      immutableRecord (state.grants.row key) := by
  unfold revokeCore
  split
  · rfl
  · split
    · rfl
    · split
      · rfl
      · exact markRevoked_immutable _ _ _

theorem revokeCore_unrelated_stable {L R E : Type} (state : State L R E) (event : Event)
    (key : Key) (different : key ≠ targetKey event) :
    lookup (revokeCore state event).2.grants key = lookup state.grants key := by
  unfold revokeCore
  split
  · rfl
  · split
    · rfl
    · split
      · rfl
      · exact markRevoked_unrelated _ _ _ different

/-- Idempotence of the core result, including revision, for the identical decoded request. -/
theorem revokeCore_replay_idempotent {L R E : Type} (state : State L R E) (event : Event) :
    revokeCore (revokeCore state event).2 event = revokeCore state event := by
  by_cases actor : event.actor = authorizedActor state event
  · by_cases installed : targetKey event ∈ state.grants.keys
    · cases active : (state.grants.row (targetKey event)).revoked with
      | false =>
        rw [authorized_existing_changes_once state event actor installed active]
        simp [revokeCore, changed, markRevoked, authorizedActor, actor, lookup, installed]
      | true =>
        rw [already_revoked_no_core_mutation state event actor installed active]
        exact already_revoked_no_core_mutation state event actor installed active
    · have missing : lookup state.grants (targetKey event) = none := by
        simp [lookup, installed]
      rw [missing_no_core_mutation state event actor missing]
      exact missing_no_core_mutation state event actor missing
  · rw [unauthorized_no_core_mutation state event actor]
    exact unauthorized_no_core_mutation state event actor

def integerMax : ℕ := 9007199254740991

def alnumAscii (character : Char) : Prop :=
  Envelope.lowerAscii character ∨ ('A' ≤ character ∧ character ≤ 'Z') ∨
    Envelope.digitAscii character

/-- Native operational tokens allow an ASCII letter or digit at the start. -/
def TokenValid (text : String) : Prop :=
  1 ≤ text.length ∧ text.length ≤ 64 ∧ alnumAscii (text.toList.headD ' ') ∧
    ∀ character ∈ text.toList,
      alnumAscii character ∨ character = '_' ∨ character = '.' ∨ character = ':' ∨ character = '-'

def KeyValid (key : Key) : Prop := TokenValid key.1 ∧ TokenValid key.2

instance (character : Char) : Decidable (alnumAscii character) := by
  unfold alnumAscii Envelope.lowerAscii Envelope.digitAscii
  infer_instance

instance (text : String) : Decidable (TokenValid text) := by
  unfold TokenValid
  infer_instance

instance (key : Key) : Decidable (KeyValid key) := by
  unfold KeyValid
  infer_instance

def ScopeValid (scope : Scope) : Prop :=
  TokenValid scope.subject ∧ TokenValid scope.executor ∧ TokenValid scope.resource.id ∧
    TokenValid scope.resource.version ∧ Envelope.HashValid scope.resource.sha256 ∧
    scope.action ∈ ["read", "index", "derive", "infer_remotely", "train", "share", "publish",
      "amend"] ∧
    TokenValid scope.purpose ∧ TokenValid scope.recipient ∧ Envelope.HashValid scope.payloadSha256

def GrantDataValid (mode : Mode) (data : GrantData) : Prop :=
  match mode, data with
  | .effect, .effect parent => ∀ id ∈ parent, TokenValid id
  | .delegation, .delegated issuer parent depth delegates
  | .amendment, .delegated issuer parent depth delegates =>
    TokenValid issuer ∧ (∀ key ∈ parent, KeyValid key) ∧ depth ≤ 3 ∧
      delegates.length ≤ 4 ∧ (∀ delegate ∈ delegates, TokenValid delegate) ∧
      delegates.Pairwise (· < ·) ∧ (depth = 0 → delegates = [])
  | _, _ => False

instance (scope : Scope) : Decidable (ScopeValid scope) := by
  unfold ScopeValid
  infer_instance

instance (mode : Mode) (data : GrantData) : Decidable (GrantDataValid mode data) := by
  cases mode <;> cases data <;> unfold GrantDataValid <;> infer_instance

def installedKey (value : GrantValue) : Key :=
  match value.data with
  | .effect _ => ("", value.id)
  | .delegated issuer _ _ _ => (issuer, value.id)

def RecordValid (mode : Mode) (key : Key) (record : GrantRecord) : Prop :=
  key = installedKey record.value ∧ TokenValid record.value.id ∧ ScopeValid record.value.scope ∧
    record.value.notBefore < record.value.expires ∧ record.value.expires ≤ integerMax ∧
    record.value.calls ≤ integerMax ∧ record.value.bytes ≤ integerMax ∧
    GrantDataValid mode record.value.data ∧ record.usedCalls ≤ integerMax ∧
    record.usedBytes ≤ integerMax ∧ record.acceptedSequence < 16

/-- Scoped state consistency, independent of `revokeCore` or a checker result.
It does not assert that arbitrary states satisfying it are reachable by all transitions. -/
def StateValid {L R E : Type} (state : State L R E) : Prop :=
  TokenValid state.domain ∧ TokenValid state.epoch ∧ TokenValid state.authority ∧
    state.grants.keys.card ≤ 16 ∧ state.revision ≤ integerMax ∧
    ∀ key ∈ state.grants.keys, RecordValid state.mode key (state.grants.row key)

instance (mode : Mode) (key : Key) (record : GrantRecord) :
    Decidable (RecordValid mode key record) := by
  unfold RecordValid
  infer_instance

instance {L R E : Type} (state : State L R E) : Decidable (StateValid state) := by
  unfold StateValid
  infer_instance

def checkState {L R E : Type} (state : State L R E) : Bool := decide (StateValid state)

theorem checkState_correct {L R E : Type} (state : State L R E) :
    checkState state = true ↔ StateValid state := by
  simp [checkState]

theorem changed_state_valid {L R E : Type} (state : State L R E) (key : Key)
    (valid : StateValid state) (headroom : state.revision < integerMax) :
    StateValid (changed state key) := by
  rcases valid with ⟨domain, epoch, authority, count, revision, rows⟩
  refine ⟨domain, epoch, authority, count, ?_, ?_⟩
  · change state.revision + 1 ≤ integerMax
    omega
  · intro other member
    by_cases equal : other = key
    · subst other
      simpa [changed, markRevoked, RecordValid] using rows key member
    · simpa [changed, markRevoked, Function.update_of_ne equal] using rows other member

theorem revokeCore_state_valid {L R E : Type} (state : State L R E) (event : Event)
    (valid : StateValid state) (headroom : state.revision < integerMax) :
    StateValid (revokeCore state event).2 := by
  unfold revokeCore
  split
  · exact valid
  · split
    · exact valid
    · split
      · exact valid
      · exact changed_state_valid _ _ valid headroom

def TargetValid (mode : Mode) (target : Target) : Prop :=
  match mode, target with
  | .effect, .effect id => TokenValid id
  | .delegation, .reference key | .amendment, .reference key => KeyValid key
  | _, _ => False

/-- Exact decoded revoke subset of `Check::event`; target constructors fix the data field. -/
def EventValid {L R E : Type} (state : State L R E) (event : Event) : Prop :=
  TokenValid event.actor ∧ TokenValid event.domain ∧ TokenValid event.epoch ∧
    event.sequence ≤ integerMax ∧ event.time ≤ integerMax ∧
    event.sequence = state.sequence ∧ state.previousTime ≤ event.time ∧
    TargetValid state.mode event.target

/-- Separate host comparison boundary. Revocation permits uncertain host time. -/
def HostMatches (event : Event) (host : HostEvent) : Prop :=
  host.actor = event.actor ∧ host.domain = event.domain ∧ host.epoch = event.epoch ∧
    host.sequence = event.sequence ∧ host.time = event.time

/-- Native transition's scope comparison, before the core is invoked. -/
def ScopeMatches {L R E : Type} (state : State L R E) (event : Event) : Prop :=
  event.domain = state.domain ∧ event.epoch = state.epoch

def Admission {L R E : Type} (state : State L R E) (event : Event) (host : HostEvent)
    (inputCount : ℕ) : Prop :=
  EventValid state event ∧ HostMatches event host ∧ inputCount < 16 ∧ ScopeMatches state event

instance (mode : Mode) (target : Target) : Decidable (TargetValid mode target) := by
  cases mode <;> cases target <;> unfold TargetValid <;> infer_instance

instance {L R E : Type} (state : State L R E) (event : Event) :
    Decidable (EventValid state event) := by
  unfold EventValid
  infer_instance

instance (event : Event) (host : HostEvent) : Decidable (HostMatches event host) := by
  unfold HostMatches
  infer_instance

instance {L R E : Type} (state : State L R E) (event : Event) :
    Decidable (ScopeMatches state event) := by
  unfold ScopeMatches
  infer_instance

instance {L R E : Type} (state : State L R E) (event : Event) (host : HostEvent)
    (inputCount : ℕ) : Decidable (Admission state event host inputCount) := by
  unfold Admission
  infer_instance

def checkAdmission {L R E : Type} (state : State L R E) (event : Event) (host : HostEvent)
    (inputCount : ℕ) : Bool := decide (Admission state event host inputCount)

theorem checkAdmission_correct {L R E : Type} (state : State L R E) (event : Event)
    (host : HostEvent) (inputCount : ℕ) :
    checkAdmission state event host inputCount = true ↔ Admission state event host inputCount := by
  simp [checkAdmission]

theorem uncertain_time_permits_revocation {L R E : Type} (state : State L R E) (event : Event)
    (host : HostEvent) (inputCount : ℕ) :
    Admission state event { host with timeCertain := false } inputCount ↔
      Admission state event { host with timeCertain := true } inputCount := by
  rfl

theorem wrong_host_actor_rejected {L R E : Type} (state : State L R E) (event : Event)
    (host : HostEvent) (inputCount : ℕ) (wrong : host.actor ≠ event.actor) :
    checkAdmission state event host inputCount = false := by
  have rejected : ¬ Admission state event host inputCount := fun admitted => wrong admitted.2.1.1
  simp [checkAdmission, rejected]

namespace NativeFixture

/- The fixtures retain the native core projection. Ledger, resources and events
are erased to Unit here; their general preservation is `revokeCore_fixed_fields`.
No theorem below identifies an entire native session state with this projection. -/

def scope : Scope :=
  ⟨"alice", "node",
    ⟨"source", "v1", "0000000000000000000000000000000000000000000000000000000000000000"⟩,
    "share", "review", "bob", "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"⟩

/-- Native `revoke_after`: the grant already has one charged call and three bytes. -/
def effectValue : GrantValue := ⟨"g1", scope, 0, 100, 2, 6, .effect none⟩

def effectCanonical : String :=
  "{\"bytes\":6,\"calls\":2,\"expires\":100,\"id\":\"g1\",\"not_before\":0,\"parent\":null," ++
  "\"scope\":{\"action\":\"share\",\"executor\":\"node\",\"payload_sha256\":" ++
  "\"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad\",\"purpose\":\"review\"," ++
  "\"recipient\":\"bob\",\"resource\":{\"id\":\"source\",\"sha256\":" ++
  "\"0000000000000000000000000000000000000000000000000000000000000000\",\"version\":\"v1\"}," ++
  "\"subject\":\"alice\"}}"

def effectRecord : GrantRecord := ⟨effectValue, effectCanonical, false, 1, 3, 0⟩

def effectState : State Unit Unit Unit :=
  ⟨.effect, "local", "memory1", "owner", ⟨{("", "g1")}, fun _ => effectRecord⟩,
    (), (), (), 2, 0, 0, 1, 3, ""⟩

def effectEvent : Event := ⟨"owner", "local", "memory1", 3, 1, .effect "g1"⟩

def host : HostEvent := ⟨"owner", "local", "memory1", 3, 1, false⟩

theorem effect_state_independently_valid : StateValid effectState := by decide

theorem effect_admission_independently_valid : Admission effectState effectEvent host 3 := by decide

theorem native_effect_revoke_after :
    (revokeCore effectState effectEvent).1 = .revoked ∧
    (revokeCore effectState effectEvent).2.revision = 3 ∧
    lookup (revokeCore effectState effectEvent).2.grants ("", "g1") =
      some { effectRecord with revoked := true } := by
  simp [revokeCore, effectState, effectEvent, authorizedActor, targetKey, lookup,
    effectRecord, changed, markRevoked]

/-- Native `ancestor_revoke`: root and child remain distinct issuer/id occurrences. -/
def rootValue : GrantValue :=
  ⟨"g1", scope, 0, 100, 3, 9, .delegated "owner" none 3 ["bob", "carol", "dana"]⟩

def childValue : GrantValue :=
  ⟨"c1", { scope with subject := "bob" }, 0, 100, 2, 6,
    .delegated "alice" (some ("owner", "g1")) 2 ["carol", "dana"]⟩

def rootCanonical : String :=
  "{\"bytes\":9,\"calls\":3,\"delegates\":[\"bob\",\"carol\",\"dana\"]," ++
  "\"delegation_depth\":3,\"expires\":100,\"id\":\"g1\",\"issuer\":\"owner\",\"not_before\":0," ++
  "\"parent\":null,\"scope\":{\"action\":\"share\",\"executor\":\"node\",\"payload_sha256\":" ++
  "\"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad\",\"purpose\":\"review\"," ++
  "\"recipient\":\"bob\",\"resource\":{\"id\":\"source\",\"sha256\":" ++
  "\"0000000000000000000000000000000000000000000000000000000000000000\",\"version\":\"v1\"}," ++
  "\"subject\":\"alice\"}}"

def childCanonical : String :=
  "{\"bytes\":6,\"calls\":2,\"delegates\":[\"carol\",\"dana\"],\"delegation_depth\":2," ++
  "\"expires\":100,\"id\":\"c1\",\"issuer\":\"alice\",\"not_before\":0," ++
  "\"parent\":{\"id\":\"g1\",\"issuer\":\"owner\"},\"scope\":{\"action\":\"share\"," ++
  "\"executor\":\"node\"," ++
  "\"payload_sha256\":\"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad\"," ++
  "\"purpose\":\"review\",\"recipient\":\"bob\",\"resource\":{\"id\":\"source\",\"sha256\":" ++
  "\"0000000000000000000000000000000000000000000000000000000000000000\",\"version\":\"v1\"}," ++
  "\"subject\":\"bob\"}}"

def rootRecord : GrantRecord := ⟨rootValue, rootCanonical, false, 0, 0, 0⟩
def childRecord : GrantRecord := ⟨childValue, childCanonical, false, 0, 0, 1⟩

def delegationState : State Unit Unit Unit :=
  ⟨.delegation, "local", "memory1", "owner",
    ⟨{("owner", "g1"), ("alice", "c1")},
      fun key => if key = ("owner", "g1") then rootRecord else childRecord⟩,
    (), (), (), 2, 3, 0, 1, 3, ""⟩

def delegationEvent : Event :=
  ⟨"owner", "local", "memory1", 3, 1, .reference ("owner", "g1")⟩

theorem delegation_state_independently_valid : StateValid delegationState := by decide

theorem delegation_admission_independently_valid :
    Admission delegationState delegationEvent host 3 := by decide

theorem native_ancestor_revoke_root_only :
    (revokeCore delegationState delegationEvent).1 = .revoked ∧
    (revokeCore delegationState delegationEvent).2.revision = 3 ∧
    lookup (revokeCore delegationState delegationEvent).2.grants ("owner", "g1") =
      some { rootRecord with revoked := true } ∧
    lookup (revokeCore delegationState delegationEvent).2.grants ("alice", "c1") =
      some childRecord := by
  simp [revokeCore, delegationState, delegationEvent, authorizedActor, targetKey, lookup,
    rootRecord, changed, markRevoked]

theorem child_issuer_can_revoke_without_authority_actor :
    let event := { delegationEvent with actor := "alice", target := .reference ("alice", "c1") }
    (revokeCore delegationState event).1 = .revoked ∧
      lookup (revokeCore delegationState event).2.grants ("owner", "g1") = some rootRecord := by
  simp [revokeCore, delegationState, authorizedActor, targetKey, lookup,
    childRecord, changed, markRevoked]

theorem amendment_uses_reference_issuer :
    let state := { delegationState with mode := .amendment }
    let event := { delegationEvent with actor := "alice", target := .reference ("alice", "c1") }
    (revokeCore state event).1 = .revoked := by
  simp [revokeCore, delegationState, authorizedActor, targetKey, lookup,
    childRecord]

theorem unauthorized_precedes_missing_lookup :
    revokeCore effectState { effectEvent with actor := "alice", target := .effect "missing" } =
      (.unauthorized, effectState) := by
  apply unauthorized_no_core_mutation
  decide

theorem authorized_missing_rejected_without_mutation :
    revokeCore effectState { effectEvent with target := .effect "missing" } =
      (.hostInputFailure, effectState) := by
  apply missing_no_core_mutation
  · rfl
  · simp [lookup, effectState, targetKey]

theorem mismatched_host_claim_rejected :
    checkAdmission effectState effectEvent { host with actor := "alice" } 3 = false := by decide

end NativeFixture
end FormalResearch.Construct.OperationalRevoke
