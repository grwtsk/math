# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fabric.Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec493229154c66251eca768b95d7210a336170ad` · SHA-256 `c67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FilesystemCodec.Codec
import DAF.Fabric.Core

/-!
# Valid filesystem packets as fabric presentations

The state space in this adapter is
`FilesystemMatrixCodec.ValidPacketType`, never the unrestricted packet type.
Separate boundary presentations expose payload length, bare matrix contents,
and the full framed packet.  The full-packet observation retains information
that a matrix-only observation can lose, as witnessed by the two zero-payload
packets below.
-/

namespace FilesystemCodec.Adapters.Fabric

open CategoryTheory

/-- The lossless packet codec induced directly by canonical blocking. -/
def allPacketCodec {r : Nat} (hr : 0 < r) :
    FilesystemMatrixCodec BitString r where
  encode := block hr
  decode := fun packet => some (unblock packet)
  decode_encode := by intro payload; simp

/-- Every canonical packet lies in the image of `allPacketCodec`. -/
theorem allPacketCodec_valid {r : Nat} (hr : 0 < r) (packet : BitPacket r) :
    (allPacketCodec hr).ValidPacket packet :=
  ⟨unblock packet, block_unblock hr packet⟩

/-- Static system retaining a complete valid packet. -/
def fullPacketSystem
    (C : FilesystemMatrixCodec Snapshot r) : DAF.System where
  Input := PUnit
  State := C.ValidPacketType
  Resolution := PUnit
  Observation := fun _ => C.ValidPacketType
  step := fun _ packet => packet
  observe := fun _ packet => packet

/-- Static system exposing only the payload length. -/
def payloadLengthSystem : DAF.System where
  Input := PUnit
  State := Nat
  Resolution := PUnit
  Observation := fun _ => Nat
  step := fun _ length => length
  observe := fun _ length => length

/-- Static system exposing only the dependent bare matrix. -/
def variableMatrixSystem (r : Nat) : DAF.System where
  Input := PUnit
  State := VariableMatrix r
  Resolution := PUnit
  Observation := fun _ => VariableMatrix r
  step := fun _ matrix => matrix
  observe := fun _ matrix => matrix

/-- Full framed-packet presentation. -/
def fullPacketPresentation
    (C : FilesystemMatrixCodec Snapshot r) : DAF.Fabric.Presentation where
  system := fullPacketSystem C
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `FilesystemCodec.ValidPacketPresentation
  version := ⟨0, 1, 0⟩

/-- Payload-length boundary presentation. -/
def payloadLengthPresentation : DAF.Fabric.Presentation where
  system := payloadLengthSystem
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `FilesystemCodec.PayloadLengthPresentation
  version := ⟨0, 1, 0⟩

/-- Matrix-only boundary presentation. -/
def matrixPresentation (r : Nat) : DAF.Fabric.Presentation where
  system := variableMatrixSystem r
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `FilesystemCodec.VariableMatrixPresentation
  version := ⟨0, 1, 0⟩

/-- Boundary contract exposing exact payload length. -/
def payloadLengthContract
    (C : FilesystemMatrixCodec Snapshot r) :
    DAF.Fabric.Presentation.Hom
      (fullPacketPresentation C) payloadLengthPresentation where
  mapInput := id
  mapState := fun packet => packet.1.payloadBits
  pullResolution := id
  mapObservation := fun _ packet => packet.1.payloadBits
  step_natural := by intros; rfl
  observe_natural := by intros; rfl
  invariant_natural := by intros; trivial

/-- Boundary contract exposing the matrix while forgetting its payload frame. -/
def matrixContract
    (C : FilesystemMatrixCodec Snapshot r) :
    DAF.Fabric.Presentation.Hom
      (fullPacketPresentation C) (matrixPresentation r) where
  mapInput := id
  mapState := fun packet => packet.1.toVariableMatrix
  pullResolution := id
  mapObservation := fun _ packet => packet.1.toVariableMatrix
  step_natural := by intros; rfl
  observe_natural := by intros; rfl
  invariant_natural := by intros; trivial

/-- The identity face retains the complete validated packet. -/
def fullPacketContract
    (C : FilesystemMatrixCodec Snapshot r) :
    DAF.Fabric.Presentation.Hom
      (fullPacketPresentation C) (fullPacketPresentation C) :=
  DAF.Fabric.Presentation.Hom.id _

/-- Constant simplicial incidence shape for the validated-packet fixture. -/
def constantPacketShape : DAF.Fabric.Shape :=
  (Functor.const (SimplexCategoryᵒᵖ)).obj PUnit

/-- A coherent fabric whose cells retain full valid packet states. -/
def validPacketFabric
    (C : FilesystemMatrixCodec Snapshot r) : DAF.Fabric.Fabric where
  shape := constantPacketShape
  presentation := fun _ _ => fullPacketPresentation C
  contract := fun _ _ => fullPacketContract C
  contract_id := by intros; rfl
  contract_comp := by
    intros
    apply DAF.Fabric.Presentation.Hom.ext <;> rfl

/--
Two valid full-packet states can be distinct even when their matrix-only face
observations agree.  The distinction is exactly their retained payload length.
-/
theorem fullPacket_distinguishes_matrixOnly :
    ∃ p q : (allPacketCodec (r := 2) (by decide)).ValidPacketType,
      p ≠ q ∧
      p.1.toVariableMatrix = q.1.toVariableMatrix := by
  rcases variableMatrix_forgets_payload_length with ⟨p, q, hpq, hmatrix⟩
  let p' : (allPacketCodec (r := 2) (by decide)).ValidPacketType :=
    ⟨p, allPacketCodec_valid (by decide) p⟩
  let q' : (allPacketCodec (r := 2) (by decide)).ValidPacketType :=
    ⟨q, allPacketCodec_valid (by decide) q⟩
  refine ⟨p', q', ?_, hmatrix⟩
  intro hpq'
  exact hpq (congrArg Subtype.val hpq')

end FilesystemCodec.Adapters.Fabric
```
