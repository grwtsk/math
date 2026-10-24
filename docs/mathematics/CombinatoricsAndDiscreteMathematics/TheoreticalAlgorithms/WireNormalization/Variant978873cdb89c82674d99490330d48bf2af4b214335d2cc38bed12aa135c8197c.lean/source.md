# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b6c7664d791efd334c0e449b0e34082c43369a7` · SHA-256 `214405b8f11d858a8caa8b0c1e8eca0b13f47dba4366825f1ce7c3a021d4a69a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireTerm.Variant37c3f2cd4469a0e9a1e938303fb172ab9e5b640c5ff5526b181c8c5c7a0d173a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37c3f2cd4469a0e9a1e938303fb172ab9e5b640c5ff5526b181c8c5c7a0d173a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WireTerm.Variant37c3f2cd4469a0e9a1e938303fb172ab9e5b640c5ff5526b181c8c5c7a0d173a","mathematical_subject":"Computation.DataStructures","original_sha256":"37c3f2cd4469a0e9a1e938303fb172ab9e5b640c5ff5526b181c8c5c7a0d173a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/WireNormalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction

/-!
# Source-bound wire decoding for the actual first-order normalizer

Natural constructor IDs in the wire syntax are decoded before independent
signature/context admission. The source record is compared in full. The code
proves a structural node cost and the semantic reduction budget; neither is a
native allocator or elapsed-time bound. A foreign JSON/IPC implementation
still requires its own refinement to this wire datatype.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireTerm.Variant37c3f2cd4469a0e9a1e938303fb172ab9e5b640c5ff5526b181c8c5c7a0d173a

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

namespace WireNormalization

/-- Raw data carries natural IDs, without an attached mathematical validity proof. -/
inductive WireTerm where
  | var (index : ℕ)
  | atom (constructor : ℕ)
  | apply (constructor : ℕ) (argument : WireTerm)
  deriving DecidableEq, Repr

/-- Interpret raw wire constructor identifiers as the actual Model term syntax. -/
def WireTerm.decode : WireTerm → Term
  | .var i => .variable i
  | .atom c => .nullary ⟨c⟩
  | .apply c t => .unary ⟨c⟩ t.decode

/-- Encode actual Model terms using raw natural constructor identifiers. -/
def WireTerm.encode : Term → WireTerm
  | .variable i => .var i
  | .nullary c => .atom c.value
  | .unary c t => .apply c.value (WireTerm.encode t)

theorem decode_encode (term : Term) : (WireTerm.encode term).decode = term := by
  induction term with
  | «variable» i => rfl
  | nullary c => rfl
  | unary c t ih => simp only [WireTerm.encode, WireTerm.decode, ih]

theorem encode_decode (wire : WireTerm) : WireTerm.encode wire.decode = wire := by
  induction wire with
  | var i => rfl
  | atom c => rfl
  | apply c t ih => simp only [WireTerm.decode, WireTerm.encode, ih]

/-- Count structural nodes of a wire term. -/
def WireTerm.nodeCost : WireTerm → ℕ
  | .var _ => 1
  | .atom _ => 1
  | .apply _ t => 1 + t.nodeCost

theorem nodeCost_eq_size (wire : WireTerm) : wire.nodeCost = wire.decode.size := by
  induction wire with
  | var i => rfl
  | atom c => rfl
  | apply c t ih => simp only [WireTerm.nodeCost, WireTerm.decode, Term.size, ih]

/-- Raw normalization input with source, context size and encoded term. -/
structure Packet where
  /-- The complete source scope claimed by the raw input. -/
  source : SourceScope
  /-- The unchanged source context size claimed by the raw input. -/
  contextSize : ℕ
  /-- The raw term to be independently decoded and validated. -/
  payload : WireTerm
  deriving DecidableEq, Repr

/-- Admission binds exact source, context, every constructor/variable, and start quota. -/
def PacketValid (packet : Packet) : Prop :=
  packet.source = FullFixtures.snapshot.source ∧
  packet.contextSize = FullFixtures.declaration.variableCount ∧
  TermValid FullFixtures.snapshot packet.contextSize packet.payload.decode ∧
  packet.payload.nodeCost ≤ FullFixtures.snapshot.limits.maxNodes

instance (packet : Packet) : Decidable (PacketValid packet) :=
  by unfold PacketValid; infer_instance

/-- Decide the exact source, context, typing and node-quota admission predicate. -/
def checkPacket (packet : Packet) : Bool := decide (PacketValid packet)

theorem checkPacket_correct (packet : Packet) : checkPacket packet = true ↔ PacketValid packet :=
  by simp only [checkPacket, decide_eq_true_eq]

/-- A decoded packet carrying its independently checked admission proof. -/
structure CheckedPacket where
  /-- The admitted raw packet retained with its proof. -/
  packet : Packet
  valid : PacketValid packet

/-- Return a proof-bearing packet exactly when the independent predicate holds. -/
def admitPacket (packet : Packet) : Option CheckedPacket :=
  if valid : PacketValid packet then some ⟨packet, valid⟩ else none

/-- Every successful raw admission carries the independently checked actual predicate. -/
theorem admitPacket_sound (packet : Packet) (checked : CheckedPacket)
    (accepted : admitPacket packet = some checked) : checked.packet = packet := by
  unfold admitPacket at accepted
  split at accepted
  · exact (congrArg CheckedPacket.packet (Option.some.inj accepted)).symm
  · simp at accepted

/-- Normalize on the full admitted relation; a quota is not the termination argument. -/
def normalizePacket (checked : CheckedPacket) : Packet :=
  { checked.packet with
    payload := WireTerm.encode (tagNormalize ⟨1⟩ checked.packet.payload.decode) }

theorem normalizePacket_valid (checked : CheckedPacket) :
    PacketValid (normalizePacket checked) := by
  rcases checked.valid with ⟨source, context, typed, quota⟩
  refine ⟨source, context, ?_, ?_⟩
  · simpa only [normalizePacket, decode_encode] using
      tag_normalize_preserves_typing ⟨1⟩ checked.packet.payload.decode
        FullFixtures.snapshot checked.packet.contextSize typed
  · obtain ⟨n, trace, _⟩ := tag_normalize_spec ⟨1⟩ checked.packet.payload.decode
    have cost := tag_trace_size trace
    rw [nodeCost_eq_size] at quota
    simp only [normalizePacket, nodeCost_eq_size, decode_encode]
    omega

/-- Decoding binds the output to a reachable normal term and the actual trace budget. -/
theorem normalizePacket_semantics (checked : CheckedPacket) :
    ∃ n, FormalResearch.MathematicalTooling.Reduction.Trace (TagStep ⟨1⟩) n
      checked.packet.payload.decode (normalizePacket checked).payload.decode ∧
      n ≤ tagHeight ⟨1⟩ checked.packet.payload.decode ∧
      ∀ result, ¬TagStep ⟨1⟩ (normalizePacket checked).payload.decode result := by
  obtain ⟨n, trace, normal⟩ := tag_normalize_spec ⟨1⟩ checked.packet.payload.decode
  simp only [normalizePacket, decode_encode]
  refine ⟨n, trace, ?_, normal⟩
  rw [tag_height_eq_mathematical_height]
  exact (Nat.le_add_right n _).trans ((tagReducer ⟨1⟩).trace_height_bound trace)

theorem normalizePacket_readout (checked : CheckedPacket) (assignment : List ℕ)
    (valid : TagAssignmentValid assignment) :
    evaluateTerm FullFixtures.interpreterTable assignment (normalizePacket checked).payload.decode =
      evaluateTerm FullFixtures.interpreterTable assignment checked.packet.payload.decode := by
  simp only [normalizePacket, decode_encode]
  exact tag_normalize_preserves_evaluation _ assignment valid

/-- Concrete raw packet encoding the licensed double-tag reduction fixture. -/
def fixture : Packet :=
  ⟨FullFixtures.snapshot.source, FullFixtures.declaration.variableCount,
    .apply 1 (.apply 1 (.atom 0))⟩

theorem fixture_admitted : checkPacket fixture = true := by decide

/-- The concrete fixture paired with its decidable admission proof. -/
def checkedFixture : CheckedPacket := ⟨fixture, by decide⟩

theorem fixture_normalized : (normalizePacket checkedFixture).payload = .atom 0 := by
  change WireTerm.encode (tagNormalize ⟨1⟩ (termOfSyntax FullFixtures.tree)) = .atom 0
  rw [checked_tag_tag_normalizes]
  rfl

theorem wrong_context_rejected : checkPacket { fixture with contextSize := 0 } = false := by decide

theorem undeclared_constructor_rejected :
    checkPacket { fixture with payload := .atom 2 } = false := by decide

theorem changed_source_rejected :
    checkPacket { fixture with source := { fixture.source with revision := 99 } } = false := by
  decide

end WireNormalization
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
