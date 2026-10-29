import Mathlib.Data.Finset.Union
import Mathlib.Data.Finset.Card
import Mathlib.Tactic.Tauto

/-!
# The native Construct envelope's finite record and restriction slice

This is the three-record, no-explicit-relation slice of the actual
`construct-graph-specimen-v1-candidate` schema: Content with a string JSON
payload, Shell with six context strings, and Envelope with ordered pinned
references to both. It models decoded closed record shapes, not a JSON parser.
Label sets are already decoded canonical sets; sorted-array and duplicate
rejection remain part of the independent parser-refinement obligation.
The fixture is the Content/Shell/Envelope subgraph of the native reference
vector `ten-kinds-claims-only`; original IDs, hashes and attribution are retained.

Opaque restriction labels have only the native union propagation meaning.
The proofs give its least closure and attenuation for any conjunctive label
interpretation; they do not authenticate claims or grant permission. Full graph
sharing/cycles, parser refinement, frame-byte/work accounting, operational
grant/revoke/commit transitions and C++ refinement remain separate obligations.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.Construct.Envelope

def graphProfile : String := "construct-graph-specimen-v1-candidate"
def recordSchema : String := "construct-record-v1-candidate"
def payloadSchema : String := "json-value-v1-candidate"
def restrictionPolicy : String := "opaque-union-v1-candidate"

def nativeHead : String := "987d1b70965c668ee659804ad5e7147d1807a700"

/-- Exact inspected native source hashes, not proof or runtime acceptance states. -/
def nativeSourceHashes : List (String × String) :=
  [("src/construct/graph.cpp",
    "7f98670cbd901a1480938b7ab1837477caddc39900d9e8322e75a2b763ba5d88"),
   ("tools/repo/construct_graph_vectors.py",
    "ae9e93606bcdb32cac555c44ae604eabc98c5fb82bcae45832fc8328b4801545"),
   ("docs/contracts/construct-graph-v1-candidate.json",
    "4ce4aae90d56a3d90ff1b36f31bc6666d691f8f368db46a1327bfad60ad0533a"),
   ("tools/repo/fixtures/construct-graph-v1.json",
    "c771a6840042138a2ca9931ff1c1fcdceb4edade24e9f1065d9c4916e4cc20c5")]

structure SourceIdentity where
  system : String
  record : String
  version : String
  sha256 : String
  deriving DecidableEq

structure Attribution where
  mode : String
  actor : String
  deriving DecidableEq

structure Restrictions where
  policy : String
  own : Finset String
  effective : Finset String
  deriving DecidableEq

structure Header where
  id : String
  kind : String
  schema : String
  source : SourceIdentity
  attribution : Attribution
  restrictions : Restrictions
  deriving DecidableEq

structure Reference where
  id : String
  version : String
  sha256 : String
  deriving DecidableEq

def reference (header : Header) : Reference :=
  ⟨header.id, header.source.version, header.source.sha256⟩

structure Content where
  header : Header
  payloadSchema : String
  payload : String
  deriving DecidableEq

structure Contexts where
  sustenance : String
  safety : String
  relation : String
  agency : String
  actualization : String
  collectiveConsequence : String
  deriving DecidableEq

structure Shell where
  header : Header
  contexts : Contexts
  deriving DecidableEq

structure EnvelopeRecord where
  header : Header
  shell : Reference
  payload : Reference
  deriving DecidableEq

structure Packet where
  profile : String
  content : Content
  shell : Shell
  envelope : EnvelopeRecord
  deriving DecidableEq

inductive Slot where
  | shell
  | payload
  | envelope
  deriving DecidableEq

abbrev Labels := Slot → Finset String

/-- The actual two ordered containment edges, with native positions zero and one. -/
def bodyLinks : List (Slot × Slot × ℕ) :=
  [(.envelope, .shell, 0), (.envelope, .payload, 1)]

/-- Closed form of propagation on this exact finite containment graph. -/
def close (labels : Labels) : Labels
  | .shell => labels .shell
  | .payload => labels .payload
  | .envelope => labels .envelope ∪ labels .shell ∪ labels .payload

theorem close_extensive (labels : Labels) (slot : Slot) : labels slot ⊆ close labels slot := by
  cases slot with
  | shell => exact Finset.Subset.refl _
  | payload => exact Finset.Subset.refl _
  | envelope =>
    exact (Finset.subset_union_left).trans Finset.subset_union_left

theorem close_monotone {first second : Labels} (h : ∀ slot, first slot ⊆ second slot) :
    ∀ slot, close first slot ⊆ close second slot := by
  intro slot
  cases slot with
  | shell => exact h .shell
  | payload => exact h .payload
  | envelope =>
    exact Finset.union_subset_union
      (Finset.union_subset_union (h .envelope) (h .shell)) (h .payload)

theorem close_idempotent (labels : Labels) : close (close labels) = close labels := by
  funext slot
  cases slot <;>
    simp [close, Finset.union_left_comm, Finset.union_comm]

/-- Independent declarative closure constraints, without running a validator. -/
def Closed (labels : Labels) : Prop :=
  labels .shell ⊆ labels .envelope ∧ labels .payload ⊆ labels .envelope

theorem close_closed (labels : Labels) : Closed (close labels) := by
  constructor
  · exact Finset.subset_union_right.trans Finset.subset_union_left
  · exact Finset.subset_union_right

theorem close_least {own candidate : Labels} (contains : ∀ slot, own slot ⊆ candidate slot)
    (closed : Closed candidate) : ∀ slot, close own slot ⊆ candidate slot := by
  intro slot
  cases slot with
  | shell => exact contains .shell
  | payload => exact contains .payload
  | envelope =>
    exact Finset.union_subset
      (Finset.union_subset (contains .envelope) ((contains .shell).trans closed.1))
      ((contains .payload).trans closed.2)

def ownLabels (packet : Packet) : Labels
  | .shell => packet.shell.header.restrictions.own
  | .payload => packet.content.header.restrictions.own
  | .envelope => packet.envelope.header.restrictions.own

def effectiveLabels (packet : Packet) : Labels
  | .shell => packet.shell.header.restrictions.effective
  | .payload => packet.content.header.restrictions.effective
  | .envelope => packet.envelope.header.restrictions.effective

def lowerAscii (character : Char) : Prop := 'a' ≤ character ∧ character ≤ 'z'
def digitAscii (character : Char) : Prop := '0' ≤ character ∧ character ≤ '9'

def TokenValid (text : String) : Prop :=
  1 ≤ text.length ∧ text.length ≤ 64 ∧ lowerAscii (text.toList.headD ' ') ∧
    ∀ character ∈ text.toList,
      lowerAscii character ∨ digitAscii character ∨ character = '_' ∨
        character = '.' ∨ character = ':' ∨ character = '-'

def HashValid (text : String) : Prop :=
  text.length = 64 ∧ ∀ character ∈ text.toList,
    digitAscii character ∨ ('a' ≤ character ∧ character ≤ 'f')

def SourceValid (source : SourceIdentity) : Prop :=
  TokenValid source.system ∧ TokenValid source.record ∧ TokenValid source.version ∧
    HashValid source.sha256

def AttributionValid (attribution : Attribution) : Prop :=
  attribution.mode ∈ ["author_statement", "inherited_assertion", "observation",
    "interpretation", "qualification", "disagreement"] ∧ TokenValid attribution.actor

def HeaderValid (header : Header) : Prop :=
  TokenValid header.id ∧ header.schema = recordSchema ∧ SourceValid header.source ∧
    AttributionValid header.attribution ∧ header.restrictions.policy = restrictionPolicy ∧
    header.restrictions.own.card ≤ 16 ∧ header.restrictions.effective.card ≤ 64 ∧
    (∀ label ∈ header.restrictions.own, TokenValid label) ∧
    ∀ label ∈ header.restrictions.effective, TokenValid label

def SourceConsistent (first second : SourceIdentity) : Prop :=
  first.system = second.system ∧ first.record = second.record ∧ first.version = second.version →
    first.sha256 = second.sha256

/-- The native identity profile's per-string decoded UTF-8 cap. -/
def TextValid (text : String) : Prop := text.utf8ByteSize ≤ 16384

def ContextsValid (contexts : Contexts) : Prop :=
  TextValid contexts.sustenance ∧ TextValid contexts.safety ∧ TextValid contexts.relation ∧
    TextValid contexts.agency ∧ TextValid contexts.actualization ∧
    TextValid contexts.collectiveConsequence

/-- The decoded slice's independent shape, identity, and least-closure specification. -/
def EnvelopeValid (packet : Packet) : Prop :=
  packet.profile = graphProfile ∧
    HeaderValid packet.content.header ∧ HeaderValid packet.shell.header ∧
    HeaderValid packet.envelope.header ∧
    packet.content.header.kind = "Content" ∧ packet.shell.header.kind = "Shell" ∧
    packet.envelope.header.kind = "Envelope" ∧ packet.content.payloadSchema = payloadSchema ∧
    packet.envelope.shell = reference packet.shell.header ∧
    packet.envelope.payload = reference packet.content.header ∧
    packet.content.header.id ≠ packet.shell.header.id ∧
    packet.content.header.id ≠ packet.envelope.header.id ∧
    packet.shell.header.id ≠ packet.envelope.header.id ∧
    TextValid packet.content.payload ∧ ContextsValid packet.shell.contexts ∧
    SourceConsistent packet.content.header.source packet.shell.header.source ∧
    SourceConsistent packet.content.header.source packet.envelope.header.source ∧
    SourceConsistent packet.shell.header.source packet.envelope.header.source ∧
    effectiveLabels packet .shell = close (ownLabels packet) .shell ∧
    effectiveLabels packet .payload = close (ownLabels packet) .payload ∧
    effectiveLabels packet .envelope = close (ownLabels packet) .envelope ∧
    (ownLabels packet .envelope ∪ ownLabels packet .shell ∪ ownLabels packet .payload).card ≤ 64

instance (text : String) : Decidable (TokenValid text) := by
  unfold TokenValid lowerAscii digitAscii
  infer_instance

instance (text : String) : Decidable (HashValid text) := by
  unfold HashValid digitAscii
  infer_instance

instance (source : SourceIdentity) : Decidable (SourceValid source) := by
  unfold SourceValid
  infer_instance

instance (attribution : Attribution) : Decidable (AttributionValid attribution) := by
  unfold AttributionValid
  infer_instance

instance (header : Header) : Decidable (HeaderValid header) := by
  unfold HeaderValid
  infer_instance

instance (first second : SourceIdentity) : Decidable (SourceConsistent first second) := by
  unfold SourceConsistent
  infer_instance

instance (text : String) : Decidable (TextValid text) := by
  unfold TextValid
  infer_instance

instance (contexts : Contexts) : Decidable (ContextsValid contexts) := by
  unfold ContextsValid
  infer_instance

instance (packet : Packet) : Decidable (EnvelopeValid packet) := by
  unfold EnvelopeValid
  infer_instance

/-- Executable checks inspect data; no supplied proof field can make them accept. -/
def checkEnvelope (packet : Packet) : Bool :=
  decide (packet.profile = graphProfile) &&
    decide (HeaderValid packet.content.header) && decide (HeaderValid packet.shell.header) &&
    decide (HeaderValid packet.envelope.header) &&
    decide (packet.content.header.kind = "Content") &&
    decide (packet.shell.header.kind = "Shell") &&
    decide (packet.envelope.header.kind = "Envelope") &&
    decide (packet.content.payloadSchema = payloadSchema) &&
    decide (packet.envelope.shell = reference packet.shell.header) &&
    decide (packet.envelope.payload = reference packet.content.header) &&
    decide (packet.content.header.id ≠ packet.shell.header.id) &&
    decide (packet.content.header.id ≠ packet.envelope.header.id) &&
    decide (packet.shell.header.id ≠ packet.envelope.header.id) &&
    decide (TextValid packet.content.payload) && decide (ContextsValid packet.shell.contexts) &&
    decide (SourceConsistent packet.content.header.source packet.shell.header.source) &&
    decide (SourceConsistent packet.content.header.source packet.envelope.header.source) &&
    decide (SourceConsistent packet.shell.header.source packet.envelope.header.source) &&
    decide (effectiveLabels packet .shell = close (ownLabels packet) .shell) &&
    decide (effectiveLabels packet .payload = close (ownLabels packet) .payload) &&
    decide (effectiveLabels packet .envelope = close (ownLabels packet) .envelope) &&
    decide ((ownLabels packet .envelope ∪ ownLabels packet .shell ∪
      ownLabels packet .payload).card ≤ 64)

theorem checkEnvelope_correct (packet : Packet) :
    checkEnvelope packet = true ↔ EnvelopeValid packet := by
  simp only [checkEnvelope, EnvelopeValid, Bool.and_eq_true, decide_eq_true_eq, and_assoc]

/-- Projection resolves the whole pinned local reference within the decoded slice. -/
def projectPayload (packet : Packet) : Option Content :=
  if packet.envelope.payload = reference packet.content.header then some packet.content else none

def projectShell (packet : Packet) : Option Shell :=
  if packet.envelope.shell = reference packet.shell.header then some packet.shell else none

/-- Wrapping retains both whole original records and adds two exact ordered references. -/
def wrap (metadata : Header) (shell : Shell) (content : Content) : Packet :=
  { profile := graphProfile
    content := content
    shell := shell
    envelope :=
      { header := { metadata with
          kind := "Envelope"
          schema := recordSchema
          restrictions := { metadata.restrictions with
            policy := restrictionPolicy
            effective := metadata.restrictions.own ∪ shell.header.restrictions.own ∪
              content.header.restrictions.own } }
        shell := reference shell.header
        payload := reference content.header } }

theorem wrap_projections (metadata : Header) (shell : Shell) (content : Content) :
    projectShell (wrap metadata shell content) = some shell ∧
      projectPayload (wrap metadata shell content) = some content := by
  simp only [projectShell, projectPayload, wrap, ↓reduceIte, and_self]

/-- The returned payload preserves its occurrence, full source, attribution and body. -/
theorem wrap_payload_preserved (metadata : Header) (shell : Shell) (content : Content) :
    (wrap metadata shell content).content.header.id = content.header.id ∧
      (wrap metadata shell content).content.header.source = content.header.source ∧
      (wrap metadata shell content).content.header.attribution = content.header.attribution ∧
      (wrap metadata shell content).content.payload = content.payload := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem valid_payload_projection (packet : Packet) (valid : EnvelopeValid packet) :
    projectPayload packet = some packet.content := by
  have pinned : packet.envelope.payload = reference packet.content.header := by
    unfold EnvelopeValid at valid
    tauto
  simp only [projectPayload, pinned, ↓reduceIte]

theorem valid_restriction_closure (packet : Packet) (valid : EnvelopeValid packet) :
    effectiveLabels packet = close (ownLabels packet) := by
  funext slot
  unfold EnvelopeValid at valid
  cases slot <;> tauto

/-- The checked effective labels are the least extension satisfying both containment edges. -/
theorem valid_closure_least (packet : Packet) (valid : EnvelopeValid packet)
    (candidate : Labels) (contains : ∀ slot, ownLabels packet slot ⊆ candidate slot)
    (closed : Closed candidate) : ∀ slot, effectiveLabels packet slot ⊆ candidate slot := by
  rw [valid_restriction_closure packet valid]
  exact close_least contains closed

/-- Native labels are opaque; every conjunctive interpretation inherits child obligations. -/
theorem restriction_attenuation {X : Type*} (packet : Packet) (valid : EnvelopeValid packet)
    (satisfies : String → X → Prop) (value : X)
    (obeys : ∀ label ∈ effectiveLabels packet .envelope, satisfies label value) :
    ∀ label ∈ effectiveLabels packet .payload, satisfies label value := by
  have closed : Closed (effectiveLabels packet) := by
    rw [valid_restriction_closure packet valid]
    exact close_closed _
  exact fun label member ↦ obeys label (closed.2 member)

namespace NativeFixture

def contentHash : String :=
  "0d7f2c7c7b2475dc8de26caef57262c43bdc82c27bbfc7393065480629b0d358"
def shellHash : String :=
  "9ef6a988d1ef7be27eb22ce8b21c20f048f956080f3c76bee785ee4da0b817b3"
def envelopeHash : String :=
  "66639c6e8ff3e6e155e8883f80fd219992225b107a6a95e450613e628de6256d"

def header (id kind hash : String) (own effective : Finset String) : Header :=
  ⟨id, kind, recordSchema, ⟨"synthetic", id, "v1", hash⟩,
    ⟨"author_statement", "synthetic-author"⟩, ⟨restrictionPolicy, own, effective⟩⟩

def content : Content :=
  ⟨header "content" "Content" contentHash {"private"} {"private"},
    payloadSchema, "Synthetic sentence."⟩

def shell : Shell :=
  ⟨header "shell" "Shell" shellHash ∅ ∅,
    ⟨"Synthetic context.", "Synthetic context.", "Synthetic context.",
      "Synthetic context.", "Synthetic context.", "Synthetic context."⟩⟩

def metadata : Header := header "envelope" "Envelope" envelopeHash ∅ {"private"}

def packet : Packet := wrap metadata shell content

/-- All premises are discharged on actual native reference data, independently of wrapping. -/
theorem native_fixture_valid : EnvelopeValid packet := by decide

theorem native_fixture_accepted : checkEnvelope packet = true :=
  (checkEnvelope_correct packet).mpr native_fixture_valid

theorem native_fixture_projection : projectPayload packet = some content ∧
    projectShell packet = some shell := by
  exact (wrap_projections metadata shell content).symm

theorem native_fixture_restrictions : effectiveLabels packet .envelope = {"private"} ∧
    effectiveLabels packet .payload = {"private"} := by decide

/-- The native vector contains the same sentence in a separately identified projection. -/
def equalPayloadOccurrence : Content :=
  ⟨header "projection" "Content"
    "4d95b5e498a4e52679312f86dbb0d39be32a5b8b50bbec182caa386627825000" ∅ ∅,
    payloadSchema, "Synthetic sentence."⟩

theorem equal_payload_distinct_occurrences : content.payload = equalPayloadOccurrence.payload ∧
    content.header.id ≠ equalPayloadOccurrence.header.id := by decide

def stripped : Packet :=
  { packet with envelope := { packet.envelope with
      header := { packet.envelope.header with
        restrictions := { packet.envelope.header.restrictions with effective := ∅ } } } }

theorem stripped_restrictions_rejected : checkEnvelope stripped = false := by decide

def staleReference : Packet :=
  { packet with envelope := { packet.envelope with
      payload := { packet.envelope.payload with version := "v2" } } }

theorem stale_reference_rejected : checkEnvelope staleReference = false := by decide

theorem inherited_attribution_preserved :
    projectPayload (wrap metadata shell { content with
      header := { content.header with
        attribution := ⟨"inherited_assertion", "synthetic-author"⟩ } }) =
      some { content with
        header := { content.header with
          attribution := ⟨"inherited_assertion", "synthetic-author"⟩ } } :=
  (wrap_projections metadata shell _).2

end NativeFixture
end FormalResearch.Construct.Envelope
