# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Snapshot.Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5181f5298833e1ef46fbb120dc5964fbaab72cea` · SHA-256 `fcf46e1c0b2c59ce6283a189e8f9815b2a55000be15118edd1ae881c0bf2572a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SortId.Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SortId.Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1","mathematical_subject":"Computation.DataStructures","original_sha256":"e82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/Snapshot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.List.Basic
import Mathlib.Tactic

/-!
# Model profile 1: finite semantic snapshot and signature

This first supported profile is an exact finite Lean model of K1--K3. Its
immutable specification input is the kernel obligation ledger at source-only
commit `c8c09fd232e13c523fccb5b35d7e565073fb1a3a`, file
`docs/math/kernel-obligations-k1-k9.md`, SHA-256
`631d75e1d44ec76169cc0892247d4e9782b94f20aa934da9ec20ae26d4162aa8`.
The native kernel at `619861f9139dac17593d9fa0433b5ffb54af11f7` implements only
the earlier opaque-string envelope. Nothing here activates its ABI or v2 wire
format, establishes cryptographic collision resistance, or imports a native
protected capability. Source commit/tree strings are provenance, not proofs.

Profile 1 fixes dense zero-based sorted table identities, explicit source
occurrence order with separate unique IDs, a many-sorted first-order binder-free
signature, linear ordered surface slots, and natural valuations below 2^64.
Every assumption is an explicit source declaration; no assumption is discharged
by validating this record. Exact whole-record equality supplies model scope.
Limits bound semantic records, names, arities, depth, values and declared
reference-check work. They are not byte-parser, allocator or Lean runtime limits.
Wire encoding, memory accounting and native refinement remain separate gates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SortId.Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- A signature-sort identity, distinct from symbol and constructor identities. -/
structure SortId where
  /-- Zero-based position in the snapshot's canonical sort table. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- An identity for a symbol value; it does not identify an occurrence of that value. -/
structure SymbolId where
  /-- Zero-based position in the snapshot's canonical symbol table. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- An identity selecting one ordered, sorted constructor declaration. -/
structure ConstructorId where
  /-- Zero-based position in the canonical constructor table. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- The identity of one source position, retained even when symbol values repeat. -/
structure OccurrenceId where
  /-- Source-assigned natural identity; admission requires uniqueness and a 64-bit bound. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- An identity for one node in a candidate's topologically ordered node table. -/
structure NodeId where
  /-- Zero-based table position, checked separately from references to this node. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- A primitive-resource channel, separate from grammatical roles and phase bits. -/
structure PrimitiveId where
  /-- Zero-based coordinate in the snapshot's primitive table and valuation vectors. -/
  value : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- Hash-shaped provenance fields never identify mathematical objects by themselves. -/
structure SourceScope where
  /-- Declared source repository identity; verification performs no remote lookup. -/
  repository : String
  /-- Full lowercase Git commit spelling carried as provenance, not as a proof. -/
  commit : String
  /-- Full lowercase Git tree spelling binding the declared source content. -/
  tree : String
  /-- Name of the source target whose assumptions and records are being declared. -/
  target : String
  /-- Source-target revision; changing it changes exact whole-record scope. -/
  revision : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- Explicit quotas for finite semantic records and reference-check operations. -/
structure Limits where
  /-- Maximum aggregate table records, including occurrences and assumptions. -/
  maxRecords : ℕ
  /-- Maximum character count of bounded names, symbol values and assumption statements. -/
  maxNameLength : ℕ
  /-- Maximum child count and local terminal count of a constructor. -/
  maxArity : ℕ
  /-- Maximum nodes in a syntax certificate or term size in the full profile. -/
  maxNodes : ℕ
  /-- Maximum certified tree depth, with nullary nodes assigned depth one. -/
  maxDepth : ℕ
  /-- Maximum admitted natural valuation coordinate; it must itself be below 2^64. -/
  maxValue : ℕ
  /-- Maximum declared semantic work measure, not elapsed time or allocator consumption. -/
  maxWork : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- A canonical symbol-table entry with an exact, bounded string value. -/
structure Symbol where
  /-- Distinct table identity used by source occurrences and constructor terminals. -/
  id : SymbolId
  /-- Exact symbol spelling; no normalization or approximate matching is performed. -/
  value : String
  deriving DecidableEq, Repr, Inhabited

/-- A source-declared assumption; admitting the record does not discharge its statement. -/
structure Assumption where
  /-- Canonical table position used to identify the declared assumption. -/
  id : ℕ
  /-- Nonempty bounded source text; its mathematical truth is not inferred from storage. -/
  statement : String
  deriving DecidableEq, Repr, Inhabited

/-- One immutable source occurrence, distinguishing identity from repeated symbol value. -/
structure Occurrence where
  /-- Unique source-position identity retained through every syntax yield. -/
  id : OccurrenceId
  /-- Reference to the exact symbol-table entry at this source position. -/
  symbol : SymbolId
  deriving DecidableEq, Repr, Inhabited

/-- One slot of a constructor's ordered surface template. -/
inductive SurfaceSlot where
  /-- Insert the complete yield of the child at this ordered input position. -/
  | child (index : ℕ)
  /-- Insert the occurrence owned by this constructor's local terminal position. -/
  | terminal (index : ℕ)
  deriving DecidableEq, Repr, Inhabited

/-- A binder-free, many-sorted constructor with a linear ordered surface template. -/
structure Constructor where
  /-- Canonical constructor-table identity. -/
  id : ConstructorId
  /-- Required child sorts in argument order. -/
  inputSorts : List SortId
  /-- Sort produced by applying this constructor to its checked children. -/
  outputSort : SortId
  /-- Exact symbol identities of terminals owned locally by the application. -/
  terminalSymbols : List SymbolId
  /-- Ordered interleaving using each declared child and local terminal exactly once. -/
  surface : List SurfaceSlot
  /-- Bounded natural contribution to each primitive-resource valuation coordinate. -/
  primitiveContribution : List ℕ
  deriving DecidableEq, Repr, Inhabited

/-- No field is looked up from a mutable registry during verification. -/
structure Snapshot where
  /-- Semantic snapshot-profile version; this projection checker accepts version one. -/
  profileVersion : ℕ
  /-- Immutable provenance fields included in exact operand equality. -/
  source : SourceScope
  /-- Canonically indexed assumptions explicitly attached to this source scope. -/
  assumptions : List Assumption
  /-- Declared admission quotas shared by the snapshot and its dependent certificates. -/
  limits : Limits
  /-- Nonempty dense sequence of supported sort identities. -/
  sorts : List SortId
  /-- Dense symbol table with pairwise distinct exact values. -/
  symbols : List Symbol
  /-- Dense constructor declarations, checked against these sorts, symbols and primitives. -/
  constructors : List Constructor
  /-- Dense primitive-resource coordinate identities. -/
  primitives : List PrimitiveId
  /-- Exact source order; occurrence identities need not be numerically sorted. -/
  occurrences : List Occurrence
  deriving DecidableEq, Repr, Inhabited

/-- Project child positions without changing their order in the surface template. -/
def childSlots (surface : List SurfaceSlot) : List ℕ :=
  surface.filterMap fun slot => match slot with
    | .child i => some i
    | .terminal _ => none

/-- Project local terminal positions without changing their surface order. -/
def terminalSlots (surface : List SurfaceSlot) : List ℕ :=
  surface.filterMap fun slot => match slot with
    | .child _ => none
    | .terminal i => some i

/-- Profile 1 source provenance uses lowercase full Git SHA-1 spellings only. -/
def GitObjectSpelling (value : String) : Prop :=
  value.length = 40 ∧ ∀ character ∈ value.toList, character ∈ "0123456789abcdef".toList

instance (value : String) : Decidable (GitObjectSpelling value) := by
  unfold GitObjectSpelling
  infer_instance

/-- Explicit finite semantic work measure; it is not elapsed time or machine memory. -/
def snapshotWork (snapshot : Snapshot) : ℕ :=
  let records := snapshot.sorts.length + snapshot.symbols.length +
    snapshot.constructors.length + snapshot.primitives.length +
    snapshot.occurrences.length + snapshot.assumptions.length
  (records + 1) ^ 2 + (snapshot.constructors.map fun c =>
    c.inputSorts.length + c.terminalSymbols.length + c.surface.length +
      c.primitiveContribution.length).sum

/-- Check references, arity, linear ordered slots and every primitive contribution. -/
def ConstructorValid (snapshot : Snapshot) (constructor : Constructor) : Prop :=
  constructor.outputSort ∈ snapshot.sorts ∧
  (∀ sort ∈ constructor.inputSorts, sort ∈ snapshot.sorts) ∧
  (∀ symbol ∈ constructor.terminalSymbols, symbol ∈ snapshot.symbols.map Symbol.id) ∧
  constructor.inputSorts.length ≤ snapshot.limits.maxArity ∧
  constructor.terminalSymbols.length ≤ snapshot.limits.maxArity ∧
  childSlots constructor.surface = List.range constructor.inputSorts.length ∧
  terminalSlots constructor.surface = List.range constructor.terminalSymbols.length ∧
  constructor.primitiveContribution.length = snapshot.primitives.length ∧
  (∀ value ∈ constructor.primitiveContribution,
    value ≤ snapshot.limits.maxValue ∧ value < 2 ^ 64)

/-- K1 is structural admission only; no candidate equation or theorem is concluded. -/
def SnapshotValid (snapshot : Snapshot) : Prop :=
  snapshot.profileVersion = 1 ∧
  snapshot.source.repository ≠ "" ∧ snapshot.source.target ≠ "" ∧
  GitObjectSpelling snapshot.source.commit ∧ GitObjectSpelling snapshot.source.tree ∧
  snapshot.source.repository.length ≤ snapshot.limits.maxNameLength ∧
  snapshot.source.target.length ≤ snapshot.limits.maxNameLength ∧
  snapshot.limits.maxValue < 2 ^ 64 ∧
  snapshot.sorts ≠ [] ∧
  snapshot.sorts = (List.range snapshot.sorts.length).map SortId.mk ∧
  snapshot.symbols.map Symbol.id =
    (List.range snapshot.symbols.length).map SymbolId.mk ∧
  snapshot.constructors.map Constructor.id =
    (List.range snapshot.constructors.length).map ConstructorId.mk ∧
  snapshot.primitives = (List.range snapshot.primitives.length).map PrimitiveId.mk ∧
  snapshot.assumptions.map Assumption.id = List.range snapshot.assumptions.length ∧
  (snapshot.symbols.map Symbol.value).Nodup ∧
  (snapshot.occurrences.map Occurrence.id).Nodup ∧
  (∀ symbol ∈ snapshot.symbols,
    symbol.value.length ≤ snapshot.limits.maxNameLength) ∧
  (∀ assumption ∈ snapshot.assumptions,
    assumption.statement ≠ "" ∧
    assumption.statement.length ≤ snapshot.limits.maxNameLength) ∧
  (∀ occurrence ∈ snapshot.occurrences,
    occurrence.id.value < 2 ^ 64 ∧ occurrence.symbol ∈ snapshot.symbols.map Symbol.id) ∧
  (∀ constructor ∈ snapshot.constructors, ConstructorValid snapshot constructor) ∧
  snapshot.sorts.length + snapshot.symbols.length + snapshot.constructors.length +
    snapshot.primitives.length + snapshot.occurrences.length + snapshot.assumptions.length ≤
      snapshot.limits.maxRecords ∧
  snapshotWork snapshot ≤ snapshot.limits.maxWork

instance (snapshot : Snapshot) (constructor : Constructor) :
    Decidable (ConstructorValid snapshot constructor) := by
  unfold ConstructorValid
  infer_instance

instance (snapshot : Snapshot) : Decidable (SnapshotValid snapshot) := by
  unfold SnapshotValid
  infer_instance

/-- Executable reflection of the complete finite K1 predicate. -/
def checkSnapshot (snapshot : Snapshot) : Bool := decide (SnapshotValid snapshot)

theorem checkSnapshot_eq_true_iff (snapshot : Snapshot) :
    checkSnapshot snapshot = true ↔ SnapshotValid snapshot := by
  simp [checkSnapshot]

theorem checkSnapshot_sound (snapshot : Snapshot) (accepted : checkSnapshot snapshot = true) :
    SnapshotValid snapshot :=
  (checkSnapshot_eq_true_iff snapshot).mp accepted

/-- A proof-bearing Lean object, not a digest-tagged or Boolean-tagged native handle. -/
structure CheckedSnapshot where
  /-- The complete admitted projection, retained rather than replaced by a digest. -/
  value : Snapshot
  /-- Proof that every structural and resource condition holds for this exact value. -/
  valid : SnapshotValid value

/-- Return the exact snapshot together with its K1 proof, or fail admission. -/
def admitSnapshot (snapshot : Snapshot) : Option CheckedSnapshot :=
  if valid : SnapshotValid snapshot then some ⟨snapshot, valid⟩ else none

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
