# Complete source: GRWTSK.Topology.GeneralTopology.Adadic.Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `465ed420fe290c7ee432921afd00994bc36e0b4f` · SHA-256 `9494c7299fd46f65082a7ad2ec0a29db2784864ae834cec4f7a688e1847a142b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AdadicStratum.Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AdadicStratum.Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Kernel/Adadic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Matrix.Basic


namespace GRWTSK.Topology.GeneralTopology.AdadicStratum.Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d

namespace Surface.Kernel

open Surface.Boolean

universe u

/-!
Adadic layout and kernel admission.

This module defines a finite 7-bit adadic frame for stratified filesystem and
kernel-admission logic.

The seven bits are grouped into three strata:

* topological cover:
  `coverOpen`, `coverBoundary`;
* arithmetic core:
  `arithmeticCore`, `arithmeticResidue`;
* control flow:
  `controlFlow`, `kernelAdmission`, `handshake`.

The Handshake law is represented by strict cursor ordering:

  `controlFlow < kernelAdmission < handshake`.

A native admission is proof-carrying: it contains a frame, cursor, native
homological substrate, admissibility certificate, full cursor-order certificate,
and Handshake precedence certificate.
-/

/-- The three strata of the 7-bit adadic frame. -/
inductive Adadic.Stratum where
  | topologicalCover
  | arithmeticCore
  | controlFlow
deriving Repr, DecidableEq

/--
The 7-bit adadic frame layout.

The order is intentional and is used by cursor ordering and bitstream
serialization.
-/
inductive Adadic.Bit where
  | coverOpen
  | coverBoundary
  | arithmeticCore
  | arithmeticResidue
  | controlFlow
  | kernelAdmission
  | handshake
deriving Repr, DecidableEq

/-- The canonical bit order of the 7-bit adadic frame. -/
def Adadic.Bit.order : List Adadic.Bit :=
  [ .coverOpen
  , .coverBoundary
  , .arithmeticCore
  , .arithmeticResidue
  , .controlFlow
  , .kernelAdmission
  , .handshake
  ]

/-- Natural index of a bit in the 7-bit frame. -/
def Adadic.Bit.indexNat : Adadic.Bit → Nat
  | .coverOpen => 0
  | .coverBoundary => 1
  | .arithmeticCore => 2
  | .arithmeticResidue => 3
  | .controlFlow => 4
  | .kernelAdmission => 5
  | .handshake => 6

/-- Finite index of a bit in the 7-bit frame. -/
def Adadic.Bit.index : Adadic.Bit → Fin 7
  | .coverOpen => ⟨0, by decide⟩
  | .coverBoundary => ⟨1, by decide⟩
  | .arithmeticCore => ⟨2, by decide⟩
  | .arithmeticResidue => ⟨3, by decide⟩
  | .controlFlow => ⟨4, by decide⟩
  | .kernelAdmission => ⟨5, by decide⟩
  | .handshake => ⟨6, by decide⟩

/-- Decode a finite index into an adadic bit. -/
def Adadic.Bit.ofFin7 (i : Fin 7) : Adadic.Bit :=
  match i.val with
  | 0 => .coverOpen
  | 1 => .coverBoundary
  | 2 => .arithmeticCore
  | 3 => .arithmeticResidue
  | 4 => .controlFlow
  | 5 => .kernelAdmission
  | _ => .handshake

/-- Stratum containing a bit. -/
def Adadic.Bit.stratum : Adadic.Bit → Adadic.Stratum
  | .coverOpen => .topologicalCover
  | .coverBoundary => .topologicalCover
  | .arithmeticCore => .arithmeticCore
  | .arithmeticResidue => .arithmeticCore
  | .controlFlow => .controlFlow
  | .kernelAdmission => .controlFlow
  | .handshake => .controlFlow

/-- A bit strictly precedes another bit in the canonical adadic order. -/
def Adadic.Bit.precedes (a b : Adadic.Bit) : Prop :=
  a.indexNat < b.indexNat

/-- The kernel-admission bit strictly precedes the handshake bit. -/
theorem Adadic.Bit.kernelAdmission_precedes_handshake :
    Adadic.Bit.precedes .kernelAdmission .handshake := by
  unfold Adadic.Bit.precedes Adadic.Bit.indexNat
  decide

/-- The control-flow bit strictly precedes the kernel-admission bit. -/
theorem Adadic.Bit.controlFlow_precedes_kernelAdmission :
    Adadic.Bit.precedes .controlFlow .kernelAdmission := by
  unfold Adadic.Bit.precedes Adadic.Bit.indexNat
  decide

/-- The full 7-bit adadic frame. -/
abbrev Adadic.Frame :=
  Adadic.Bit → Bool

/-- Empty adadic frame. -/
def Adadic.Frame.empty : Adadic.Frame :=
  fun _ => false

/-- Saturated adadic frame. -/
def Adadic.Frame.full : Adadic.Frame :=
  fun _ => true

/--
Standard native frame.

All seven structural bits are present.
-/
def Adadic.Frame.standard : Adadic.Frame :=
  Adadic.Frame.full

/-- Topological cover slice of a frame. -/
structure Adadic.TopologicalCover where
  isOpen : Bool
  boundary : Bool
deriving Repr, DecidableEq

/-- Arithmetic-core slice of a frame. -/
structure Adadic.ArithmeticCore where
  core : Bool
  residue : Bool
deriving Repr, DecidableEq

/-- Control-flow slice of a frame. -/
structure Adadic.ControlFlow where
  flow : Bool
  kernelAdmission : Bool
  handshake : Bool
deriving Repr, DecidableEq

/-- Extract the topological-cover slice. -/
def Adadic.Frame.topologicalCover
    (frame : Adadic.Frame) :
    Adadic.TopologicalCover where
  isOpen := frame .coverOpen
  boundary := frame .coverBoundary

/-- Extract the arithmetic-core slice. -/
def Adadic.Frame.arithmeticCore
    (frame : Adadic.Frame) :
    Adadic.ArithmeticCore where
  core := frame .arithmeticCore
  residue := frame .arithmeticResidue

/-- Extract the control-flow slice. -/
def Adadic.Frame.controlFlow
    (frame : Adadic.Frame) :
    Adadic.ControlFlow where
  flow := frame .controlFlow
  kernelAdmission := frame .kernelAdmission
  handshake := frame .handshake

/-- Topological cover is complete when both cover bits are present. -/
def Adadic.Frame.topologicalCoverComplete
    (frame : Adadic.Frame) :
    Bool :=
  frame .coverOpen && frame .coverBoundary

/-- Arithmetic core is complete when core and residue bits are present. -/
def Adadic.Frame.arithmeticCoreComplete
    (frame : Adadic.Frame) :
    Bool :=
  frame .arithmeticCore && frame .arithmeticResidue

/-- Control flow is complete when flow, admission, and handshake bits are present. -/
def Adadic.Frame.controlFlowComplete
    (frame : Adadic.Frame) :
    Bool :=
  frame .controlFlow &&
    frame .kernelAdmission &&
      frame .handshake

/--
Kernel-admission predicate for a frame.

A frame is kernel-admissible when all three strata are present:
topological cover, arithmetic core, and control flow.
-/
def Adadic.Frame.kernelAdmissible
    (frame : Adadic.Frame) :
    Bool :=
  Adadic.Frame.topologicalCoverComplete frame &&
    Adadic.Frame.arithmeticCoreComplete frame &&
      Adadic.Frame.controlFlowComplete frame

/-- The standard frame is kernel-admissible. -/
theorem Adadic.Frame.standard_kernelAdmissible :
    Adadic.Frame.kernelAdmissible Adadic.Frame.standard = true := by
  decide

/-- Encode a frame as a `1 × 7` Boolean matrix. -/
def Adadic.Frame.toMatrix
    (frame : Adadic.Frame) :
    BoolMatrix 1 7 :=
  fun _ j => frame (Adadic.Bit.ofFin7 j)

/-- Decode a `1 × 7` Boolean matrix into a frame. -/
def Adadic.Frame.ofMatrix
    (matrix : BoolMatrix 1 7) :
    Adadic.Frame :=
  fun bit => matrix ⟨0, by decide⟩ bit.index

/-- A Boolean bitstream is a list of bits in canonical frame order. -/
abbrev Adadic.Bitstream :=
  List Bool

/-- Read a Boolean bitstream at index `n`, defaulting to `false`. -/
def Adadic.Bitstream.getD : Adadic.Bitstream → Nat → Bool
  | [], _ => false
  | b :: _, 0 => b
  | _ :: bits, n + 1 => Adadic.Bitstream.getD bits n

/-- Serialize a frame into a canonical 7-bit bitstream. -/
def Adadic.Frame.toBitstream
    (frame : Adadic.Frame) :
    Adadic.Bitstream :=
  Adadic.Bit.order.map frame

/-- Decode a bitstream into a frame, defaulting missing entries to `false`. -/
def Adadic.Frame.ofBitstream
    (bits : Adadic.Bitstream) :
    Adadic.Frame :=
  fun bit => Adadic.Bitstream.getD bits bit.indexNat

/-- Cursor assigning an execution order to every adadic bit. -/
abbrev Adadic.Cursor :=
  Adadic.Bit → Nat

/-- The canonical cursor follows the bit-index order. -/
def Adadic.Cursor.standard : Adadic.Cursor :=
  Adadic.Bit.indexNat

/-- Boolean form of strict cursor ordering across all seven bits. -/
def Adadic.Cursor.strictlyOrdered
    (cursor : Adadic.Cursor) :
    Bool :=
  decide (cursor .coverOpen < cursor .coverBoundary) &&
  decide (cursor .coverBoundary < cursor .arithmeticCore) &&
  decide (cursor .arithmeticCore < cursor .arithmeticResidue) &&
  decide (cursor .arithmeticResidue < cursor .controlFlow) &&
  decide (cursor .controlFlow < cursor .kernelAdmission) &&
  decide (cursor .kernelAdmission < cursor .handshake)

/-- Boolean form of the Handshake precedence law. -/
def Adadic.Cursor.handshakePrecedence
    (cursor : Adadic.Cursor) :
    Bool :=
  decide (cursor .controlFlow < cursor .kernelAdmission) &&
    decide (cursor .kernelAdmission < cursor .handshake)

/-- The standard cursor is strictly ordered. -/
theorem Adadic.Cursor.standard_strictlyOrdered :
    Adadic.Cursor.strictlyOrdered Adadic.Cursor.standard = true := by
  decide

/-- The standard cursor satisfies Handshake precedence. -/
theorem Adadic.Cursor.standard_handshakePrecedence :
    Adadic.Cursor.handshakePrecedence Adadic.Cursor.standard = true := by
  decide

/-- Proof-carrying strict cursor ordering. -/
structure Adadic.CursorOrderCertificate
    (cursor : Adadic.Cursor) where
  coverOpen_lt_coverBoundary :
    cursor .coverOpen < cursor .coverBoundary
  coverBoundary_lt_arithmeticCore :
    cursor .coverBoundary < cursor .arithmeticCore
  arithmeticCore_lt_arithmeticResidue :
    cursor .arithmeticCore < cursor .arithmeticResidue
  arithmeticResidue_lt_controlFlow :
    cursor .arithmeticResidue < cursor .controlFlow
  controlFlow_lt_kernelAdmission :
    cursor .controlFlow < cursor .kernelAdmission
  kernelAdmission_lt_handshake :
    cursor .kernelAdmission < cursor .handshake

/-- Proof-carrying Handshake precedence certificate. -/
structure Adadic.HandshakeCertificate
    (cursor : Adadic.Cursor) where
  controlFlow_before_kernelAdmission :
    cursor .controlFlow < cursor .kernelAdmission
  kernelAdmission_before_handshake :
    cursor .kernelAdmission < cursor .handshake

/-- Standard strict cursor-order certificate. -/
def Adadic.CursorOrderCertificate.standard :
    Adadic.CursorOrderCertificate Adadic.Cursor.standard where
  coverOpen_lt_coverBoundary := by decide
  coverBoundary_lt_arithmeticCore := by decide
  arithmeticCore_lt_arithmeticResidue := by decide
  arithmeticResidue_lt_controlFlow := by decide
  controlFlow_lt_kernelAdmission := by decide
  kernelAdmission_lt_handshake := by decide

/-- Standard Handshake certificate. -/
def Adadic.HandshakeCertificate.standard :
    Adadic.HandshakeCertificate Adadic.Cursor.standard where
  controlFlow_before_kernelAdmission := by decide
  kernelAdmission_before_handshake := by decide

/-- Native homological substrate carried by a kernel admission. -/
structure Adadic.HomologicalSubstrate where
  homology : Bool
  prismaticTag : Bool
  symmetryGroup : Bool
  sieve : Bool
deriving Repr, DecidableEq

/-- Standard native homological substrate. -/
def Adadic.HomologicalSubstrate.standard :
    Adadic.HomologicalSubstrate where
  homology := true
  prismaticTag := true
  symmetryGroup := true
  sieve := true

/-- The native substrate is active when all four homological channels are active. -/
def Adadic.HomologicalSubstrate.native
    (substrate : Adadic.HomologicalSubstrate) :
    Bool :=
  substrate.homology &&
    substrate.prismaticTag &&
      substrate.symmetryGroup &&
        substrate.sieve

/-- The standard substrate is native. -/
theorem Adadic.HomologicalSubstrate.standard_native :
    Adadic.HomologicalSubstrate.native
      Adadic.HomologicalSubstrate.standard = true := by
  decide

/--
Proof-carrying kernel admission.

The admission includes:
* a 7-bit frame;
* a per-bit cursor;
* a kernel-admissibility proof for the frame;
* a strict cursor-order proof;
* a Handshake precedence proof.
-/
structure Adadic.Admission where
  frame : Adadic.Frame
  cursor : Adadic.Cursor
  frame_admissible :
    Adadic.Frame.kernelAdmissible frame = true
  cursor_order :
    Adadic.CursorOrderCertificate cursor
  handshake :
    Adadic.HandshakeCertificate cursor

/-- Standard proof-carrying admission. -/
def Adadic.Admission.standard :
    Adadic.Admission where
  frame := Adadic.Frame.standard
  cursor := Adadic.Cursor.standard
  frame_admissible := Adadic.Frame.standard_kernelAdmissible
  cursor_order := Adadic.CursorOrderCertificate.standard
  handshake := Adadic.HandshakeCertificate.standard

/-- A native kernel admission over a homological substrate. -/
structure Adadic.NativeAdmission where
  substrate : Adadic.HomologicalSubstrate
  admission : Adadic.Admission
  substrate_native :
    Adadic.HomologicalSubstrate.native substrate = true

/-- Standard native kernel admission. -/
def Adadic.NativeAdmission.standard :
    Adadic.NativeAdmission where
  substrate := Adadic.HomologicalSubstrate.standard
  admission := Adadic.Admission.standard
  substrate_native := Adadic.HomologicalSubstrate.standard_native

/-- The frame of any native admission is kernel-admissible. -/
theorem Adadic.NativeAdmission.frame_kernelAdmissible
    (native : Adadic.NativeAdmission) :
    Adadic.Frame.kernelAdmissible native.admission.frame = true :=
  native.admission.frame_admissible

/-- The substrate of any native admission is native. -/
theorem Adadic.NativeAdmission.substrate_is_native
    (native : Adadic.NativeAdmission) :
    Adadic.HomologicalSubstrate.native native.substrate = true :=
  native.substrate_native

/-- The standard native admission has a kernel-admissible frame. -/
theorem Adadic.NativeAdmission.standard_frame_kernelAdmissible :
    Adadic.Frame.kernelAdmissible
      Adadic.NativeAdmission.standard.admission.frame = true :=
  Adadic.NativeAdmission.frame_kernelAdmissible
    Adadic.NativeAdmission.standard

/-- The standard native admission satisfies Handshake precedence as a Boolean law. -/
theorem Adadic.NativeAdmission.standard_handshakePrecedence :
    Adadic.Cursor.handshakePrecedence
      Adadic.NativeAdmission.standard.admission.cursor = true := by
  decide

/-- The standard native admission satisfies strict cursor ordering as a Boolean law. -/
theorem Adadic.NativeAdmission.standard_cursor_strictlyOrdered :
    Adadic.Cursor.strictlyOrdered
      Adadic.NativeAdmission.standard.admission.cursor = true := by
  decide

/-- A compact admission ledger entry. -/
structure Adadic.LedgerEntry where
  frame : Adadic.Frame
  cursor : Adadic.Cursor
  accepted : Bool

/-- Convert a native admission into a ledger entry. -/
def Adadic.NativeAdmission.toLedgerEntry
    (native : Adadic.NativeAdmission) :
    Adadic.LedgerEntry where
  frame := native.admission.frame
  cursor := native.admission.cursor
  accepted := Adadic.Frame.kernelAdmissible native.admission.frame

/-- The standard ledger entry is accepted. -/
theorem Adadic.NativeAdmission.standard_ledger_accepted :
    (Adadic.NativeAdmission.toLedgerEntry
      Adadic.NativeAdmission.standard).accepted = true := by
  decide

/--
A finite adadic layout package.

This isolates the frame into topological, arithmetic, and control strata while
retaining the original frame and cursor.
-/
structure Adadic.Layout where
  frame : Adadic.Frame
  cursor : Adadic.Cursor
  topological : Adadic.TopologicalCover
  arithmetic : Adadic.ArithmeticCore
  control : Adadic.ControlFlow

/-- Build a layout package from a frame and cursor. -/
def Adadic.Layout.ofFrame
    (frame : Adadic.Frame)
    (cursor : Adadic.Cursor) :
    Adadic.Layout where
  frame := frame
  cursor := cursor
  topological := Adadic.Frame.topologicalCover frame
  arithmetic := Adadic.Frame.arithmeticCore frame
  control := Adadic.Frame.controlFlow frame

/-- The standard native layout. -/
def Adadic.Layout.standard :
    Adadic.Layout :=
  Adadic.Layout.ofFrame
    Adadic.NativeAdmission.standard.admission.frame
    Adadic.NativeAdmission.standard.admission.cursor

/-- The standard layout has an active topological cover. -/
theorem Adadic.Layout.standard_topological_active :
    Adadic.Layout.standard.topological.isOpen = true ∧
      Adadic.Layout.standard.topological.boundary = true := by
  decide

/-- The standard layout has an active arithmetic core. -/
theorem Adadic.Layout.standard_arithmetic_active :
    Adadic.Layout.standard.arithmetic.core = true ∧
      Adadic.Layout.standard.arithmetic.residue = true := by
  decide

/-- The standard layout has active control flow and Handshake. -/
theorem Adadic.Layout.standard_control_active :
    Adadic.Layout.standard.control.flow = true ∧
      Adadic.Layout.standard.control.kernelAdmission = true ∧
        Adadic.Layout.standard.control.handshake = true := by
  decide

/--
The Handshake precedence law for a native admission.

This packages the core ordering statement:

  `controlFlow < kernelAdmission < handshake`.
-/
theorem Adadic.NativeAdmission.handshake_precedence_law
    (native : Adadic.NativeAdmission) :
    native.admission.cursor .controlFlow <
        native.admission.cursor .kernelAdmission ∧
      native.admission.cursor .kernelAdmission <
        native.admission.cursor .handshake :=
  ⟨ native.admission.handshake.controlFlow_before_kernelAdmission
  , native.admission.handshake.kernelAdmission_before_handshake
  ⟩

end Surface.Kernel
```
