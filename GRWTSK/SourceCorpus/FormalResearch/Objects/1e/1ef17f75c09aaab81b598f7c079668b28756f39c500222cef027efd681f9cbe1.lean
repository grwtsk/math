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

/-- Candidate native graph profile used by the decoded three-record packet. -/
def graphProfile : String := "construct-graph-specimen-v1-candidate"
/-- Candidate native schema identifier required on every record header. -/
def recordSchema : String := "construct-record-v1-candidate"
/-- Candidate native schema identifier for the Content JSON value. -/
def payloadSchema : String := "json-value-v1-candidate"
/-- Native opaque-label policy identifier for union propagation. -/
def restrictionPolicy : String := "opaque-union-v1-candidate"

/-- Native repository commit whose schema, validator and reference vector were inspected. -/
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

/-- Decoded source provenance tuple; the hash pins the identified record version. -/
structure SourceIdentity where
  /-- Token identifying the source system that supplied this record. -/
  system : String
  /-- Source-system record identifier, separate from the local occurrence ID. -/
  record : String
  /-- Token identifying the pinned source-record version. -/
  version : String
  /-- Lowercase hexadecimal SHA-256 string for the pinned source-record version. -/
  sha256 : String
  deriving DecidableEq

/-- Decoded attribution mode and actor claim retained with the record. -/
structure Attribution where
  /-- One of the six native attribution modes; validation does not authenticate the claim. -/
  mode : String
  /-- Token naming the actor to whom the decoded claim is attributed. -/
  actor : String
  deriving DecidableEq

/-- Decoded canonical label sets for the native opaque-union restriction policy. -/
structure Restrictions where
  /-- Identifier of the policy used to interpret label propagation. -/
  policy : String
  /-- Labels declared on this record before containment propagation. -/
  own : Finset String
  /-- Declared propagated labels, checked against the least containment closure. -/
  effective : Finset String
  deriving DecidableEq

/-- Decoded common record metadata, including occurrence identity, provenance and
restrictions.
-/
structure Header where
  /-- Local record occurrence identifier used by containment references. -/
  id : String
  /-- Native record-kind string, checked against the record's decoded shape. -/
  kind : String
  /-- Candidate record-schema identifier declared by this occurrence. -/
  schema : String
  /-- Pinned source-system identity retained for this occurrence. -/
  source : SourceIdentity
  /-- Attribution claim retained independently of payload projection. -/
  attribution : Attribution
  /-- Declared own and effective restriction labels for this record. -/
  restrictions : Restrictions
  deriving DecidableEq

/-- Pinned local reference containing an occurrence ID, source version and source hash. -/
structure Reference where
  /-- Local occurrence identifier of the referenced record. -/
  id : String
  /-- Required source version of the referenced occurrence. -/
  version : String
  /-- Required source hash of the referenced occurrence. -/
  sha256 : String
  deriving DecidableEq

/-- Extract the complete pinned local reference from a record header. -/
def reference (header : Header) : Reference :=
  ⟨header.id, header.source.version, header.source.sha256⟩

/-- Decoded Content record with its header and string-valued JSON payload. -/
structure Content where
  /-- Common metadata for the Content occurrence. -/
  header : Header
  /-- Schema identifier declared for the decoded payload value. -/
  payloadSchema : String
  /-- Original string-valued JSON payload retained without rewriting. -/
  payload : String
  deriving DecidableEq

/-- The six string context fields of the native Shell record. -/
structure Contexts where
  /-- Decoded sustenance context string. -/
  sustenance : String
  /-- Decoded safety context string. -/
  safety : String
  /-- Decoded relation context string. -/
  relation : String
  /-- Decoded agency context string. -/
  agency : String
  /-- Decoded actualization context string. -/
  actualization : String
  /-- Decoded collective-consequence context string. -/
  collectiveConsequence : String
  deriving DecidableEq

/-- Decoded Shell record retaining its common header and six context strings. -/
structure Shell where
  /-- Common metadata for the Shell occurrence. -/
  header : Header
  /-- The six original context strings retained by shell projection. -/
  contexts : Contexts
  deriving DecidableEq

/-- Decoded Envelope record with ordered pinned Shell and Content references. -/
structure EnvelopeRecord where
  /-- Common metadata for the enclosing Envelope occurrence. -/
  header : Header
  /-- Pinned Shell reference at native containment position zero. -/
  shell : Reference
  /-- Pinned Content reference at native containment position one. -/
  payload : Reference
  deriving DecidableEq

/-- Closed decoded graph slice containing one Content, one Shell and their Envelope. -/
structure Packet where
  /-- Native graph profile identifier declared by this packet. -/
  profile : String
  /-- Original Content occurrence available for pinned payload projection. -/
  content : Content
  /-- Original Shell occurrence available for pinned shell projection. -/
  shell : Shell
  /-- Enclosing record whose two references bind the retained occurrences. -/
  envelope : EnvelopeRecord
  deriving DecidableEq

/-- The three record positions in the decoded containment graph. -/
inductive Slot where
  | shell
  | payload
  | envelope
  deriving DecidableEq

/-- Restriction-label assignment to each of the three record positions. -/
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

/-- Read the declared own restriction labels of each packet occurrence. -/
def ownLabels (packet : Packet) : Labels
  | .shell => packet.shell.header.restrictions.own
  | .payload => packet.content.header.restrictions.own
  | .envelope => packet.envelope.header.restrictions.own

/-- Read the declared effective restriction labels of each packet occurrence. -/
def effectiveLabels (packet : Packet) : Labels
  | .shell => packet.shell.header.restrictions.effective
  | .payload => packet.content.header.restrictions.effective
  | .envelope => packet.envelope.header.restrictions.effective

/-- Recognize lowercase ASCII letters used by native graph tokens. -/
def lowerAscii (character : Char) : Prop := 'a' ≤ character ∧ character ≤ 'z'
/-- Recognize ASCII decimal digits used by graph tokens and hashes. -/
def digitAscii (character : Char) : Prop := '0' ≤ character ∧ character ≤ '9'

/-- Native graph token shape: 1–64 characters, a lowercase initial letter and allowed ASCII
suffixes.
-/
def TokenValid (text : String) : Prop :=
  1 ≤ text.length ∧ text.length ≤ 64 ∧ lowerAscii (text.toList.headD ' ') ∧
    ∀ character ∈ text.toList,
      lowerAscii character ∨ digitAscii character ∨ character = '_' ∨
        character = '.' ∨ character = ':' ∨ character = '-'

/-- Recognize exactly 64 lowercase hexadecimal characters for a decoded SHA-256 string. -/
def HashValid (text : String) : Prop :=
  text.length = 64 ∧ ∀ character ∈ text.toList,
    digitAscii character ∨ ('a' ≤ character ∧ character ≤ 'f')

/-- Validate all three source tokens and the pinned source hash independently. -/
def SourceValid (source : SourceIdentity) : Prop :=
  TokenValid source.system ∧ TokenValid source.record ∧ TokenValid source.version ∧
    HashValid source.sha256

/-- Validate the native six-mode attribution vocabulary and actor-token shape. -/
def AttributionValid (attribution : Attribution) : Prop :=
  attribution.mode ∈ ["author_statement", "inherited_assertion", "observation",
    "interpretation", "qualification", "disagreement"] ∧ TokenValid attribution.actor

/-- Validate common metadata, policy identity, bounded label sets and every label token. -/
def HeaderValid (header : Header) : Prop :=
  TokenValid header.id ∧ header.schema = recordSchema ∧ SourceValid header.source ∧
    AttributionValid header.attribution ∧ header.restrictions.policy = restrictionPolicy ∧
    header.restrictions.own.card ≤ 16 ∧ header.restrictions.effective.card ≤ 64 ∧
    (∀ label ∈ header.restrictions.own, TokenValid label) ∧
    ∀ label ∈ header.restrictions.effective, TokenValid label

/-- Require equal hashes whenever two provenance tuples identify the same source-record
version.
-/
def SourceConsistent (first second : SourceIdentity) : Prop :=
  first.system = second.system ∧ first.record = second.record ∧ first.version = second.version →
    first.sha256 = second.sha256

/-- The native identity profile's per-string decoded UTF-8 cap. -/
def TextValid (text : String) : Prop := text.utf8ByteSize ≤ 16384

/-- Require every decoded Shell context string to satisfy the native UTF-8 byte cap. -/
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

/-- Resolve the entire pinned Shell reference and return the unchanged local Shell
occurrence.
-/
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

/-- Original Content provenance hash in the native ten-kinds-claims-only reference vector. -/
def contentHash : String :=
  "0d7f2c7c7b2475dc8de26caef57262c43bdc82c27bbfc7393065480629b0d358"
/-- Original Shell provenance hash in the native ten-kinds-claims-only reference vector. -/
def shellHash : String :=
  "9ef6a988d1ef7be27eb22ce8b21c20f048f956080f3c76bee785ee4da0b817b3"
/-- Original Envelope provenance hash in the native ten-kinds-claims-only reference vector. -/
def envelopeHash : String :=
  "66639c6e8ff3e6e155e8883f80fd219992225b107a6a95e450613e628de6256d"

/-- Build reference-vector headers with the original synthetic provenance and attribution. -/
def header (id kind hash : String) (own effective : Finset String) : Header :=
  ⟨id, kind, recordSchema, ⟨"synthetic", id, "v1", hash⟩,
    ⟨"author_statement", "synthetic-author"⟩, ⟨restrictionPolicy, own, effective⟩⟩

/-- Actual native reference Content with its private label and original sentence. -/
def content : Content :=
  ⟨header "content" "Content" contentHash {"private"} {"private"},
    payloadSchema, "Synthetic sentence."⟩

/-- Actual native reference Shell with all six original context strings. -/
def shell : Shell :=
  ⟨header "shell" "Shell" shellHash ∅ ∅,
    ⟨"Synthetic context.", "Synthetic context.", "Synthetic context.",
      "Synthetic context.", "Synthetic context.", "Synthetic context."⟩⟩

/-- Actual reference Envelope metadata with its propagated private label. -/
def metadata : Header := header "envelope" "Envelope" envelopeHash ∅ {"private"}

/-- Wrap the native reference Shell and Content using their original Envelope metadata. -/
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

/-- Hostile packet obtained by deleting the required propagated Envelope label. -/
def stripped : Packet :=
  { packet with envelope := { packet.envelope with
      header := { packet.envelope.header with
        restrictions := { packet.envelope.header.restrictions with effective := ∅ } } } }

theorem stripped_restrictions_rejected : checkEnvelope stripped = false := by decide

/-- Hostile packet whose payload reference requests an unavailable source version. -/
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
