-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ByteRange.Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f","mathematical_subject":"Computation.DataStructures","original_sha256":"e65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/SharedBinaryMatrixStream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Matrix.Basic
public import Mathlib.Data.List.MinMax
public import Mathlib.Data.Prod.Lex
import Mathlib.Tactic

/-!
# Finite shared binary-matrix stream contract

This module is the theorem-facing description of a bounded shared-memory
protocol.  It proves only finite layout, publication, and encoding facts.  A
Rust or browser implementation may reproduce these formulas and submit the
resulting finite data to an executable checker; such data is a deterministic
derivation, not a Lean kernel receipt and not an analytic theorem certificate.

In particular, prime labels, scheduling metadata, matrix frames, and transport
records do not imply an operator-norm estimate or any theorem about prime
distribution.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f

public section

namespace Surface.Core.SharedBinaryMatrixStream

/-! ## Fixed-width byte layout -/

@[expose] def cacheLineBytes : Nat := 64
@[expose] def streamHeaderBytes : Nat := 64
@[expose] def channelStrideBytes : Nat := 32
@[expose] def eventWordCount : Nat := 8
@[expose] def eventAbiVersion : Int := 1

/-- A half-open byte range `[offset, offset + byteLength)`. -/
@[surface_novel]
structure ByteRange where
  offset : Nat
  byteLength : Nat
deriving DecidableEq, Repr

@[expose] def ByteRange.endOffset (range : ByteRange) : Nat :=
  range.offset + range.byteLength

@[expose] def ByteRange.Aligned (range : ByteRange) (alignment : Nat) : Prop :=
  0 < alignment ∧
    range.offset % alignment = 0 ∧
    range.byteLength % alignment = 0

@[expose] def ByteRange.InBounds (range : ByteRange) (totalBytes : Nat) : Prop :=
  range.endOffset ≤ totalBytes

@[expose] def ByteRange.Disjoint (left right : ByteRange) : Prop :=
  left.endOffset ≤ right.offset ∨ right.endOffset ≤ left.offset

/-- Canonical physical range for one channel index.  The index, rather than a
prime label, determines ownership of the byte range. -/
@[expose] def channelRange {channelCount : Nat} (index : Fin channelCount) :
    ByteRange where
  offset := streamHeaderBytes + index.val * channelStrideBytes
  byteLength := channelStrideBytes

@[expose] def streamBufferBytes (channelCount : Nat) : Nat :=
  streamHeaderBytes + channelCount * channelStrideBytes

@[surface_novel, surface_published]
theorem channelRange_aligned {channelCount : Nat} (index : Fin channelCount) :
    (channelRange index).Aligned channelStrideBytes := by
  constructor
  · norm_num [channelStrideBytes]
  constructor <;>
    simp [channelRange, streamHeaderBytes, channelStrideBytes]

@[surface_novel, surface_published]
theorem channelRange_inBounds {channelCount : Nat} (index : Fin channelCount) :
    (channelRange index).InBounds (streamBufferBytes channelCount) := by
  simp only [ByteRange.InBounds, ByteRange.endOffset, channelRange,
    streamBufferBytes, streamHeaderBytes, channelStrideBytes]
  omega

@[surface_novel, surface_published]
theorem channelRange_pairwiseDisjoint {channelCount : Nat}
    {left right : Fin channelCount} (hne : left ≠ right) :
    ByteRange.Disjoint (channelRange left) (channelRange right) := by
  have hval : left.val ≠ right.val := by
    intro h
    exact hne (Fin.ext h)
  simp only [ByteRange.Disjoint, ByteRange.endOffset, channelRange,
    streamHeaderBytes, channelStrideBytes]
  omega

/-- Finite descriptor emitted by a deterministic layout generator. -/
@[surface_novel]
structure LayoutDescriptor (channelCount : Nat) where
  totalBytes : Nat
  channels : Fin channelCount → ByteRange

@[expose] def LayoutDescriptor.Valid {channelCount : Nat}
    (layout : LayoutDescriptor channelCount) : Prop :=
  layout.totalBytes = streamBufferBytes channelCount ∧
    (∀ index, (layout.channels index).Aligned channelStrideBytes) ∧
    (∀ index, (layout.channels index).InBounds layout.totalBytes) ∧
    ∀ left right, left ≠ right →
      ByteRange.Disjoint (layout.channels left) (layout.channels right)

/-- The canonical layout prediction.  Rust may reproduce this arithmetic, but
the Lean theorem below is authority only for this Lean definition. -/
@[expose] def predictiveLayoutGenerator (channelCount : Nat) :
    LayoutDescriptor channelCount where
  totalBytes := streamBufferBytes channelCount
  channels := channelRange

@[surface_novel, surface_published]
theorem predictiveLayoutGenerator_sound (channelCount : Nat) :
    (predictiveLayoutGenerator channelCount).Valid := by
  refine ⟨rfl, ?_, ?_, ?_⟩
  · exact fun index ↦ channelRange_aligned index
  · exact fun index ↦ channelRange_inBounds index
  · exact fun _left _right hne ↦ channelRange_pairwiseDisjoint hne

/-! ## Bounded matrix frames and revisioned publication -/

/-- A matrix frame whose row and column bounds are carried by `Fin`. -/
@[surface_novel]
structure BinaryMatrixFrame (rows columns : Nat) where
  revision : Nat
  bit : Fin rows → Fin columns → Bool

/-- Exact finite formula used by the deterministic frame predictor. -/
@[expose] def predictedBit (seed columns : Nat) (row column : Nat) : Bool :=
  decide ((seed + row * columns + column) % 2 = 1)

@[expose] def BinaryMatrixFrame.PredictedBy {rows columns : Nat}
    (frame : BinaryMatrixFrame rows columns) (seed revision : Nat) : Prop :=
  frame.revision = revision ∧
    ∀ row column,
      frame.bit row column = predictedBit seed columns row.val column.val

/-- A deterministic, bounded frame generator. -/
@[expose] def predictiveFrameGenerator (rows columns seed revision : Nat) :
    BinaryMatrixFrame rows columns where
  revision := revision
  bit := fun row column ↦ predictedBit seed columns row.val column.val

@[surface_novel, surface_published]
theorem predictiveFrameGenerator_sound (rows columns seed revision : Nat) :
    (predictiveFrameGenerator rows columns seed revision).PredictedBy
      seed revision := by
  exact ⟨rfl, fun _row _column ↦ rfl⟩

/-! ## Checked client cell edits -/

/-- A bounded client request to replace exactly one matrix cell.  The row and
column coordinates cannot escape the frame dimensions because both are
carried by `Fin`. -/
@[surface_novel]
structure MatrixCellEdit (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  value : Bool
deriving DecidableEq, Repr

/-- The finite admission condition for a client edit: the submitted bit must
agree exactly with the same parity formula used by the frame predictor. -/
@[expose] def MatrixCellEdit.ValidFor {rows columns : Nat}
    (edit : MatrixCellEdit rows columns) (seed : Nat) : Prop :=
  edit.value = predictedBit seed columns edit.row.val edit.column.val

instance {rows columns : Nat} (edit : MatrixCellEdit rows columns) (seed : Nat) :
    Decidable (edit.ValidFor seed) := by
  unfold MatrixCellEdit.ValidFor
  infer_instance

/-- Executable client-side-compatible admission check.  `true` is meaningful
only for this exact finite edit, seed, and statically carried column bound. -/
@[expose] def verifyCellEdit {rows columns : Nat}
    (seed : Nat) (edit : MatrixCellEdit rows columns) : Bool :=
  decide (edit.ValidFor seed)

@[surface_novel, surface_published]
theorem verifyCellEdit_sound {rows columns : Nat}
    (seed : Nat) (edit : MatrixCellEdit rows columns)
    (h : verifyCellEdit seed edit = true) : edit.ValidFor seed := by
  exact of_decide_eq_true h

/-- Apply one bounded cell edit without changing the frame revision. -/
@[expose] def BinaryMatrixFrame.applyCellEdit {rows columns : Nat}
    (frame : BinaryMatrixFrame rows columns)
    (edit : MatrixCellEdit rows columns) : BinaryMatrixFrame rows columns where
  revision := frame.revision
  bit := fun row column ↦
    if row = edit.row ∧ column = edit.column then edit.value
    else frame.bit row column

/-- An admitted edit preserves the full predicted-frame invariant.  Thus a
client change that disagrees with the Rust/Lean parity contract cannot use
this theorem to enter a predicted publication. -/
@[surface_novel, surface_published]
theorem BinaryMatrixFrame.applyCellEdit_predictedBy
    {rows columns seed revision : Nat}
    (frame : BinaryMatrixFrame rows columns)
    (edit : MatrixCellEdit rows columns)
    (hframe : frame.PredictedBy seed revision)
    (hedit : edit.ValidFor seed) :
    (frame.applyCellEdit edit).PredictedBy seed revision := by
  constructor
  · exact hframe.1
  · intro row column
    by_cases hcell : row = edit.row ∧ column = edit.column
    · rcases hcell with ⟨rfl, rfl⟩
      simpa [BinaryMatrixFrame.applyCellEdit, MatrixCellEdit.ValidFor] using hedit
    · simp [BinaryMatrixFrame.applyCellEdit, hcell, hframe.2 row column]

/-- Three logical frame slots and the one revision that is currently
published.  This describes the stable snapshot after synchronization; it does
not claim that a particular runtime used atomics correctly. -/
@[surface_novel]
structure RevisionedPublication (rows columns : Nat) where
  slots : Fin 3 → BinaryMatrixFrame rows columns
  publishedSlot : Fin 3
  publishedRevision : Nat
  revision_matches : (slots publishedSlot).revision = publishedRevision

@[expose] def RevisionedPublication.current {rows columns : Nat}
    (publication : RevisionedPublication rows columns) :
    BinaryMatrixFrame rows columns :=
  publication.slots publication.publishedSlot

@[surface_novel, surface_published]
theorem RevisionedPublication.current_revision {rows columns : Nat}
    (publication : RevisionedPublication rows columns) :
    publication.current.revision = publication.publishedRevision :=
  publication.revision_matches

/-! ## Fixed-width bidirectional event transport -/

/-- Semantic event payload.  The ABI version is supplied by the encoder. -/
@[surface_novel]
structure UserEvent where
  sourceRevision : Int
  nodeId : Int
  eventCode : Int
  flags : Int
  primary : Int
  secondary : Int
  timestampLow : Int
deriving DecidableEq, Repr

abbrev EventWords := Fin 8 → Int

/-- The mathematical range of one signed 32-bit transport word. -/
@[expose] def SignedInt32 (value : Int) : Prop :=
  -(2 ^ 31 : Int) ≤ value ∧ value < (2 ^ 31 : Int)

/-- Every word in the fixed-width event payload fits the concrete Rust and
browser `Int32` representation. -/
@[expose] def EventWords.Signed32 (words : EventWords) : Prop :=
  ∀ index, SignedInt32 (words index)

instance (words : EventWords) : Decidable words.Signed32 := by
  unfold EventWords.Signed32 SignedInt32
  infer_instance

@[expose] def encodeEvent (event : UserEvent) : EventWords :=
  ![eventAbiVersion, event.sourceRevision, event.nodeId, event.eventCode,
    event.flags, event.primary, event.secondary, event.timestampLow]

@[expose] def decodeEvent (words : EventWords) : Option UserEvent :=
  if words 0 = eventAbiVersion then
    some {
      sourceRevision := words 1
      nodeId := words 2
      eventCode := words 3
      flags := words 4
      primary := words 5
      secondary := words 6
      timestampLow := words 7
    }
  else
    none

@[surface_novel, surface_published]
theorem decodeEvent_encodeEvent (event : UserEvent) :
    decodeEvent (encodeEvent event) = some event := by
  simp [decodeEvent, encodeEvent, eventAbiVersion]

/-- Executable semantic gate for a decoded user event.  It is intentionally
smaller than application policy: it checks only the bounded wire contract. -/
@[expose] def UserEvent.Valid (event : UserEvent) : Prop :=
  (encodeEvent event).Signed32 ∧
    0 < event.nodeId ∧
    0 < event.eventCode ∧ event.eventCode ≤ 10 ∧
    0 ≤ event.flags ∧ event.flags < 64

instance (event : UserEvent) : Decidable event.Valid := by
  unfold UserEvent.Valid
  infer_instance

@[expose] def verifyEvent (event : UserEvent) : Bool :=
  decide event.Valid

@[surface_novel, surface_published]
theorem verifyEvent_sound (event : UserEvent)
    (h : verifyEvent event = true) : event.Valid := by
  exact of_decide_eq_true h

/-! ## Tension-ranked host routing

The routing layer below is a finite directed multigraph presented as a fixed
number of outgoing fiber slots at each host vertex.  It formalizes one
top-priority hop only; it does not assert liveness, network delivery, a
multi-hop path, or an optimal global schedule.
-/

/-- Versioned request name shared by finite Lean/Rust/browser descriptions.
Matching this string is metadata compatibility, not theorem authority. -/
@[expose] def fiberTensionColorContourSchema : String :=
  "surface.fiber-tension-color-contour-request.v1"

/-- Largest tension admitted by the theorem-facing wire contract. -/
@[expose] def maxFiberTension : Nat := 2 ^ 32 - 1

/-- One directed fiber leaving the host whose adjacency row contains it.
`enabled = false` keeps a fixed slot in the layout without making it a
candidate for travel. -/
@[surface_novel]
structure HostFiber (hostCount : Nat) where
  target : Fin hostCount
  tension : Nat
  enabled : Bool
deriving DecidableEq, Repr

@[expose] def HostFiber.Valid {hostCount : Nat}
    (fiber : HostFiber hostCount) : Prop :=
  fiber.tension ≤ maxFiberTension

instance {hostCount : Nat} (fiber : HostFiber hostCount) :
    Decidable fiber.Valid := by
  unfold HostFiber.Valid
  infer_instance

/-- A bounded adjacency matrix.  `fibers source slot` is directed from
`source` to its stored target.  Parallel fibers are allowed and remain
distinguished by their stable slot indices. -/
@[surface_novel]
structure HostFiberNetwork (hostCount edgeSlots : Nat) where
  fibers : Fin hostCount → Fin edgeSlots → HostFiber hostCount

@[expose] def HostFiberNetwork.Valid {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots) : Prop :=
  ∀ source slot, (network.fibers source slot).Valid

instance {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots) :
    Decidable network.Valid := by
  unfold HostFiberNetwork.Valid
  infer_instance

/-- Stable lexicographic scheduling rank.  Larger ranks travel first:

1. greater tension;
2. smaller target host index;
3. smaller edge-slot index.

The nested lexicographic product is a mathematical comparison key, not a wire
offset. -/
abbrev FiberRank := Nat ×ₗ (OrderDual Nat ×ₗ OrderDual Nat)

@[expose] def HostFiberNetwork.fiberRank {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (slot : Fin edgeSlots) : FiberRank :=
  toLex ((network.fibers source slot).tension,
    toLex (OrderDual.toDual (network.fibers source slot).target.val,
      OrderDual.toDual slot.val))

@[surface_novel, surface_published]
theorem HostFiberNetwork.fiberRank_lt_of_tension_lt
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (left right : Fin edgeSlots)
    (h : (network.fibers source left).tension <
      (network.fibers source right).tension) :
    network.fiberRank source left < network.fiberRank source right := by
  simp [HostFiberNetwork.fiberRank, Prod.Lex.toLex_lt_toLex, h]

@[surface_novel, surface_published]
theorem HostFiberNetwork.fiberRank_lt_of_target_lt
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (left right : Fin edgeSlots)
    (htension : (network.fibers source left).tension =
      (network.fibers source right).tension)
    (htarget : (network.fibers source right).target.val <
      (network.fibers source left).target.val) :
    network.fiberRank source left < network.fiberRank source right := by
  simp [HostFiberNetwork.fiberRank, Prod.Lex.toLex_lt_toLex,
    htension, htarget]

@[surface_novel, surface_published]
theorem HostFiberNetwork.fiberRank_lt_of_slot_lt
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (left right : Fin edgeSlots)
    (htension : (network.fibers source left).tension =
      (network.fibers source right).tension)
    (htarget : (network.fibers source left).target =
      (network.fibers source right).target)
    (hslot : right.val < left.val) :
    network.fiberRank source left < network.fiberRank source right := by
  simp [HostFiberNetwork.fiberRank, Prod.Lex.toLex_lt_toLex,
    htension, htarget, hslot]

/-- Enabled outgoing slots, in stable declaration order. -/
@[expose] def HostFiberNetwork.outgoingSlots {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) : List (Fin edgeSlots) :=
  (List.finRange edgeSlots).filter fun slot ↦
    (network.fibers source slot).enabled

/-- Select exactly one outgoing fiber by the tension rank, or `none` when the
host has no enabled fiber.  `List.argmax` is executable and deterministic. -/
@[expose] def HostFiberNetwork.selectOutgoingSlot {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) : Option (Fin edgeSlots) :=
  (network.outgoingSlots source).argmax (network.fiberRank source)

@[surface_novel, surface_published]
theorem HostFiberNetwork.selectOutgoingSlot_enabled
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected) :
    (network.fibers source selected).enabled = true := by
  have hoption : selected ∈
      (network.outgoingSlots source).argmax (network.fiberRank source) := by
    simpa [HostFiberNetwork.selectOutgoingSlot, Option.mem_def] using hselected
  have hmem : selected ∈ network.outgoingSlots source :=
    List.argmax_mem hoption
  simpa [HostFiberNetwork.outgoingSlots] using hmem

/-- Every enabled candidate has rank at most the selected fiber.  This is the
finite theorem that carries the high-tension and stable tie-break policy. -/
@[surface_novel, surface_published]
theorem HostFiberNetwork.candidate_rank_le_selected
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true) :
    network.fiberRank source candidate ≤ network.fiberRank source selected := by
  have hselectedMem : selected ∈
      (network.outgoingSlots source).argmax (network.fiberRank source) := by
    simpa [HostFiberNetwork.selectOutgoingSlot, Option.mem_def] using hselected
  have hcandidateMem : candidate ∈ network.outgoingSlots source := by
    simp [HostFiberNetwork.outgoingSlots, hcandidate]
  exact List.le_of_mem_argmax hcandidateMem hselectedMem

@[surface_novel, surface_published]
theorem HostFiberNetwork.candidate_tension_le_selected
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true) :
    (network.fibers source candidate).tension ≤
      (network.fibers source selected).tension := by
  have hrank := network.candidate_rank_le_selected source selected candidate
    hselected hcandidate
  exact le_of_not_gt fun htension ↦
    (not_lt_of_ge hrank)
      (network.fiberRank_lt_of_tension_lt source selected candidate htension)

@[surface_novel, surface_published]
theorem HostFiberNetwork.selected_target_le_candidate_of_tension_eq
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true)
    (htension : (network.fibers source selected).tension =
      (network.fibers source candidate).tension) :
    (network.fibers source selected).target.val ≤
      (network.fibers source candidate).target.val := by
  have hrank := network.candidate_rank_le_selected source selected candidate
    hselected hcandidate
  exact le_of_not_gt fun htarget ↦
    (not_lt_of_ge hrank)
      (network.fiberRank_lt_of_target_lt source selected candidate
        htension htarget)

@[surface_novel, surface_published]
theorem HostFiberNetwork.selected_slot_le_candidate_of_ties
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true)
    (htension : (network.fibers source selected).tension =
      (network.fibers source candidate).tension)
    (htarget : (network.fibers source selected).target =
      (network.fibers source candidate).target) :
    selected.val ≤ candidate.val := by
  have hrank := network.candidate_rank_le_selected source selected candidate
    hselected hcandidate
  exact le_of_not_gt fun hslot ↦
    (not_lt_of_ge hrank)
      (network.fiberRank_lt_of_slot_lt source selected candidate
        htension htarget hslot)

@[surface_novel, surface_published]
theorem HostFiberNetwork.selectOutgoingSlot_none_iff
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) :
    network.selectOutgoingSlot source = none ↔
      ∀ slot, (network.fibers source slot).enabled = false := by
  simp [HostFiberNetwork.selectOutgoingSlot,
    HostFiberNetwork.outgoingSlots]

/-! ## Bounded CIE 1931 XYZ fixed-point transport

These values are a finite wire representation of nonnegative XYZ channels.
The scale is one million integer units per rational unit, and the inclusive
channel cap retains the common `1.088830` reference-white Z coordinate.  This
does not formalize the full unbounded CIE color space, chromatic adaptation,
an sRGB transfer function, perceptual equivalence, or a geometric color model.
-/

@[expose] def cieXyzScale : Nat := 1_000_000
@[expose] def cieXyzChannelMax : Nat := 1_088_830

/-- Three exact nonnegative fixed-point integers. -/
@[surface_novel]
structure CieXyzFixed where
  xScaled : Nat
  yScaled : Nat
  zScaled : Nat
deriving DecidableEq, Repr

@[expose] def CieXyzFixed.Bounded (color : CieXyzFixed) : Prop :=
  color.xScaled ≤ cieXyzChannelMax ∧
    color.yScaled ≤ cieXyzChannelMax ∧
    color.zScaled ≤ cieXyzChannelMax

instance (color : CieXyzFixed) : Decidable color.Bounded := by
  unfold CieXyzFixed.Bounded
  infer_instance

/-- Exact rational interpretation of the three fixed-point integers. -/
@[expose] def CieXyzFixed.toRational (color : CieXyzFixed) : ℚ × ℚ × ℚ :=
  (color.xScaled / cieXyzScale,
    color.yScaled / cieXyzScale,
    color.zScaled / cieXyzScale)

@[surface_novel, surface_published]
theorem CieXyzFixed.toRational_nonnegative (color : CieXyzFixed) :
    0 ≤ color.toRational.1 ∧
      0 ≤ color.toRational.2.1 ∧
      0 ≤ color.toRational.2.2 := by
  simp only [CieXyzFixed.toRational]
  exact ⟨by positivity, by positivity, by positivity⟩

@[surface_novel, surface_published]
theorem CieXyzFixed.toRational_le_channelCap
    (color : CieXyzFixed) (hbounded : color.Bounded) :
    color.toRational.1 ≤ (cieXyzChannelMax : ℚ) / cieXyzScale ∧
      color.toRational.2.1 ≤ (cieXyzChannelMax : ℚ) / cieXyzScale ∧
      color.toRational.2.2 ≤ (cieXyzChannelMax : ℚ) / cieXyzScale := by
  rcases hbounded with ⟨hx, hy, hz⟩
  have hscale : (0 : ℚ) < cieXyzScale := by
    norm_num [cieXyzScale]
  simp only [CieXyzFixed.toRational]
  constructor
  · apply (div_le_div_iff_of_pos_right hscale).2
    exact_mod_cast hx
  constructor
  · apply (div_le_div_iff_of_pos_right hscale).2
    exact_mod_cast hy
  · apply (div_le_div_iff_of_pos_right hscale).2
    exact_mod_cast hz

inductive CieXyzChannel
  | x
  | y
  | z
deriving DecidableEq, Repr

@[expose] def CieXyzFixed.channelValue
    (color : CieXyzFixed) : CieXyzChannel → Nat
  | .x => color.xScaled
  | .y => color.yScaled
  | .z => color.zScaled

@[expose] def CieXyzFixed.replaceChannel
    (color : CieXyzFixed) (channel : CieXyzChannel)
    (value : Nat) : CieXyzFixed :=
  match channel with
  | .x => { color with xScaled := value }
  | .y => { color with yScaled := value }
  | .z => { color with zScaled := value }

/-- Revisioned state synchronized across finite transports. -/
@[surface_novel]
structure CieXyzState where
  revision : Nat
  color : CieXyzFixed
deriving DecidableEq, Repr

/-- Runtime-facing full-color proposal.  The client supplies the revision it
observed and one complete bounded XYZ replacement. -/
@[surface_novel]
structure CieXyzProposal where
  baseRevision : Nat
  color : CieXyzFixed
deriving DecidableEq, Repr

@[expose] def CieXyzProposal.ValidFor
    (proposal : CieXyzProposal) (state : CieXyzState) : Prop :=
  proposal.baseRevision = state.revision ∧ proposal.color.Bounded

instance (proposal : CieXyzProposal) (state : CieXyzState) :
    Decidable (proposal.ValidFor state) := by
  unfold CieXyzProposal.ValidFor
  infer_instance

@[expose] def verifyCieXyzProposal
    (state : CieXyzState) (proposal : CieXyzProposal) : Bool :=
  decide (proposal.ValidFor state)

@[surface_novel, surface_published]
theorem verifyCieXyzProposal_sound
    (state : CieXyzState) (proposal : CieXyzProposal)
    (h : verifyCieXyzProposal state proposal = true) :
    proposal.ValidFor state := by
  exact of_decide_eq_true h

@[expose] def CieXyzState.applyProposal
    (state : CieXyzState) (proposal : CieXyzProposal) : CieXyzState where
  revision := state.revision + 1
  color := proposal.color

@[surface_novel, surface_published]
theorem CieXyzState.applyProposal_revision
    (state : CieXyzState) (proposal : CieXyzProposal) :
    (state.applyProposal proposal).revision = state.revision + 1 :=
  rfl

@[surface_novel, surface_published]
theorem CieXyzState.applyProposal_color
    (state : CieXyzState) (proposal : CieXyzProposal) :
    (state.applyProposal proposal).color = proposal.color :=
  rfl

@[surface_novel, surface_published]
theorem CieXyzState.applyProposal_bounded
    (state : CieXyzState) (proposal : CieXyzProposal)
    (hvalid : proposal.ValidFor state) :
    (state.applyProposal proposal).color.Bounded := by
  exact hvalid.2

/-- Compare-and-set color request.  Both the revision and full expected color
must match, so an edit prepared against a stale window cannot use this gate. -/
@[surface_novel]
structure CieXyzEdit where
  sourceRevision : Nat
  expected : CieXyzFixed
  channel : CieXyzChannel
  value : Nat
deriving DecidableEq, Repr

@[expose] def CieXyzEdit.ValidFor
    (edit : CieXyzEdit) (state : CieXyzState) : Prop :=
  edit.sourceRevision = state.revision ∧
    edit.expected = state.color ∧
    state.color.Bounded ∧
    edit.value ≤ cieXyzChannelMax

instance (edit : CieXyzEdit) (state : CieXyzState) :
    Decidable (edit.ValidFor state) := by
  unfold CieXyzEdit.ValidFor
  infer_instance

/-- Executable exact finite admission check. -/
@[expose] def verifyCieXyzEdit
    (state : CieXyzState) (edit : CieXyzEdit) : Bool :=
  decide (edit.ValidFor state)

@[surface_novel, surface_published]
theorem verifyCieXyzEdit_sound
    (state : CieXyzState) (edit : CieXyzEdit)
    (h : verifyCieXyzEdit state edit = true) : edit.ValidFor state := by
  exact of_decide_eq_true h

/-- Deterministic state transition.  Policy must call this only after the
finite admission check; the definition itself remains total and executable. -/
@[expose] def CieXyzState.applyEdit
    (state : CieXyzState) (edit : CieXyzEdit) : CieXyzState where
  revision := state.revision + 1
  color := state.color.replaceChannel edit.channel edit.value

@[surface_novel, surface_published]
theorem CieXyzState.applyEdit_revision
    (state : CieXyzState) (edit : CieXyzEdit) :
    (state.applyEdit edit).revision = state.revision + 1 :=
  rfl

@[surface_novel, surface_published]
theorem CieXyzState.applyEdit_selectedChannel
    (state : CieXyzState) (edit : CieXyzEdit) :
    (state.applyEdit edit).color.channelValue edit.channel = edit.value := by
  rcases edit with ⟨sourceRevision, expected, channel, value⟩
  cases channel <;> rfl

@[surface_novel, surface_published]
theorem CieXyzState.applyEdit_otherChannel
    (state : CieXyzState) (edit : CieXyzEdit)
    (other : CieXyzChannel) (hne : other ≠ edit.channel) :
    (state.applyEdit edit).color.channelValue other =
      state.color.channelValue other := by
  rcases edit with ⟨sourceRevision, expected, channel, value⟩
  cases channel <;> cases other <;>
    simp_all [CieXyzState.applyEdit, CieXyzFixed.replaceChannel,
      CieXyzFixed.channelValue]

/-- An admitted compare-and-set edit preserves all three channel bounds. -/
@[surface_novel, surface_published]
theorem CieXyzState.applyEdit_bounded
    (state : CieXyzState) (edit : CieXyzEdit)
    (hvalid : edit.ValidFor state) :
    (state.applyEdit edit).color.Bounded := by
  rcases hvalid with ⟨_hrevision, _hexpected, hbounded, hvalue⟩
  rcases hbounded with ⟨hx, hy, hz⟩
  cases hchannel : edit.channel <;>
    simp [CieXyzState.applyEdit, CieXyzFixed.replaceChannel,
      CieXyzFixed.Bounded, hchannel, hx, hy, hz, hvalue]

/-! ## Exact finite XYZ discrepancy

This section measures only the coordinate disagreement between one expected
or proposed fixed-point XYZ value and one observed or admitted value.  Signed
deltas use the orientation `observed - expected`.  A missing observation is
tracked separately and is never converted into a zero or numeric mismatch.
These definitions do not assert transport liveness, color equivalence, or a
homology theorem.
-/

/-- Exact signed per-channel difference, oriented as observed minus expected. -/
@[surface_novel]
structure CieXyzDiscrepancy where
  xDelta : Int
  yDelta : Int
  zDelta : Int
deriving DecidableEq, Repr

@[expose] def cieXyzSignedDelta (expected observed : Nat) : Int :=
  (observed : Int) - (expected : Int)

@[expose] def CieXyzDiscrepancy.between
    (expected observed : CieXyzFixed) : CieXyzDiscrepancy where
  xDelta := cieXyzSignedDelta expected.xScaled observed.xScaled
  yDelta := cieXyzSignedDelta expected.yScaled observed.yScaled
  zDelta := cieXyzSignedDelta expected.zScaled observed.zScaled

@[expose] def discrepancyChannelSupport (delta : Int) : Nat :=
  if delta = 0 then 0 else 1

@[expose] def CieXyzDiscrepancy.supportCount
    (discrepancy : CieXyzDiscrepancy) : Nat :=
  discrepancyChannelSupport discrepancy.xDelta +
    discrepancyChannelSupport discrepancy.yDelta +
    discrepancyChannelSupport discrepancy.zDelta

@[expose] def CieXyzDiscrepancy.l1Mass
    (discrepancy : CieXyzDiscrepancy) : Nat :=
  discrepancy.xDelta.natAbs +
    discrepancy.yDelta.natAbs +
    discrepancy.zDelta.natAbs

@[expose] def CieXyzDiscrepancy.linfMass
    (discrepancy : CieXyzDiscrepancy) : Nat :=
  max discrepancy.xDelta.natAbs
    (max discrepancy.yDelta.natAbs discrepancy.zDelta.natAbs)

@[surface_novel, surface_published]
theorem CieXyzDiscrepancy.supportCount_le_three
    (discrepancy : CieXyzDiscrepancy) :
    discrepancy.supportCount ≤ 3 := by
  simp only [CieXyzDiscrepancy.supportCount, discrepancyChannelSupport]
  split <;> split <;> split <;> omega

@[surface_novel, surface_published]
theorem CieXyzDiscrepancy.linfMass_le_l1Mass
    (discrepancy : CieXyzDiscrepancy) :
    discrepancy.linfMass ≤ discrepancy.l1Mass := by
  simp only [CieXyzDiscrepancy.linfMass, CieXyzDiscrepancy.l1Mass]
  omega

@[surface_novel, surface_published]
theorem CieXyzDiscrepancy.l1Mass_eq_zero_iff
    (expected observed : CieXyzFixed) :
    (CieXyzDiscrepancy.between expected observed).l1Mass = 0 ↔
      expected = observed := by
  constructor
  · intro hzero
    simp only [CieXyzDiscrepancy.between, CieXyzDiscrepancy.l1Mass] at hzero
    have hx : (cieXyzSignedDelta expected.xScaled observed.xScaled).natAbs = 0 := by
      omega
    have hy : (cieXyzSignedDelta expected.yScaled observed.yScaled).natAbs = 0 := by
      omega
    have hz : (cieXyzSignedDelta expected.zScaled observed.zScaled).natAbs = 0 := by
      omega
    have hx' := Int.natAbs_eq_zero.mp hx
    have hy' := Int.natAbs_eq_zero.mp hy
    have hz' := Int.natAbs_eq_zero.mp hz
    rcases expected with ⟨expectedX, expectedY, expectedZ⟩
    rcases observed with ⟨observedX, observedY, observedZ⟩
    congr <;> simp only [cieXyzSignedDelta] at hx' hy' hz' <;> omega
  · rintro rfl
    simp [CieXyzDiscrepancy.between, CieXyzDiscrepancy.l1Mass,
      cieXyzSignedDelta]

/-- Presence and numeric disagreement are two independent finite fields. -/
@[surface_novel]
structure CieXyzStageMeasure where
  missingStageCount : Nat
  numeric : Option CieXyzDiscrepancy
deriving DecidableEq, Repr

@[expose] def measureCieXyzStage
    (expected : CieXyzFixed) (observed : Option CieXyzFixed) :
    CieXyzStageMeasure :=
  match observed with
  | none => { missingStageCount := 1, numeric := none }
  | some admitted =>
      { missingStageCount := 0
        numeric := some (CieXyzDiscrepancy.between expected admitted) }

@[surface_novel, surface_published]
theorem measureCieXyzStage_missingStageCount_le_one
    (expected : CieXyzFixed) (observed : Option CieXyzFixed) :
    (measureCieXyzStage expected observed).missingStageCount ≤ 1 := by
  cases observed <;> simp [measureCieXyzStage]

@[surface_novel, surface_published]
theorem measureCieXyzStage_none
    (expected : CieXyzFixed) :
    measureCieXyzStage expected none =
      { missingStageCount := 1, numeric := none } :=
  rfl

@[surface_novel, surface_published]
theorem measureCieXyzStage_some
    (expected observed : CieXyzFixed) :
    measureCieXyzStage expected (some observed) =
      { missingStageCount := 0
        numeric := some (CieXyzDiscrepancy.between expected observed) } :=
  rfl

/-- The imperative core is finite data: declarative hosts supply one network,
and synchronized clients carry one exact revisioned XYZ state. -/
@[surface_novel]
structure FiberTensionColorContourContract
    (hostCount edgeSlots : Nat) where
  network : HostFiberNetwork hostCount edgeSlots
  network_valid : network.Valid
  colorState : CieXyzState
  color_bounded : colorState.color.Bounded

/-- The full finite stream state. Every carrier is bounded by a `Fin` index.
The arrays are raw fixed-width slots: an implementation must separately track
occupancy and require `decodeEvent` followed by `verifyEvent` before treating
an occupied slot as a valid user event. -/
@[surface_novel]
structure Contract
    (channelCount rows columns eventCapacity : Nat) where
  layout : LayoutDescriptor channelCount
  layout_valid : layout.Valid
  publication : RevisionedPublication rows columns
  inbound : Fin eventCapacity → EventWords
  outbound : Fin eventCapacity → EventWords

/-! ## Authority boundary -/

/-- A finite shared-memory stream has no analytic-contraction authority. -/
@[expose] def ProvesAnalyticContraction
    {channelCount rows columns eventCapacity : Nat}
    (_stream : Contract channelCount rows columns eventCapacity) :
    Prop :=
  False

@[surface_novel, surface_published]
theorem does_not_prove_analyticContraction
    {channelCount rows columns eventCapacity : Nat}
    (stream : Contract channelCount rows columns eventCapacity) :
    ¬ ProvesAnalyticContraction stream := by
  simp [ProvesAnalyticContraction]

end Surface.Core.SharedBinaryMatrixStream
