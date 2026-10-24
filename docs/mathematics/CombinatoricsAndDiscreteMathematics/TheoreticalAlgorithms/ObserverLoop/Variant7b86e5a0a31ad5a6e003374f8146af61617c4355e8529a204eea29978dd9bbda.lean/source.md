# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObserverLoop.Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17533eb00dd23c8612dc8fe8deb0e7febedb6243` · SHA-256 `65039bdd1e5c8dd1225e95833d74aae467df3d23592d891d802a805fb617b1c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportSystem.Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TransportSystem.Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23","mathematical_subject":"Computation.DataStructures","original_sha256":"3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FilesystemDynamics/ObserverLoop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Causal.QuantizerTower
import FilesystemCodec.Commitment

/-!
# Observable recursion on lossless filesystem packet images

A filesystem recursion is transported only through
`snapshotEquivValidPacket`, so packet states are values actually emitted by the
chosen codec.  Arbitrary ambient `BitPacket` values are never silently treated
as snapshots.  Conjugate snapshot and valid-packet systems have equivalent
causal quotients.

Lossless observers must retain row count, exact `payloadBits`, and matrix
contents (or prove how omitted fields are recovered).  The matrix-only system
below is intentionally classified as lossy: canonical packets can share a
matrix while differing in payload boundary.  A fixed-width digest is also a
valid observer, but remains many-to-one unless injectivity is proved
separately; this module provides no digest inverse or uniqueness theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportSystem.Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23

namespace FilesystemObserverLoop

open ObservableRecursion
open FilesystemCodec

universe uI uS uR uO

/-- Transport an observable system through an exact state representation. -/
def transportSystem
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution) :
    System Input Encoded Resolution where
  Observation := M.Observation
  step input encoded := code (M.step input (code.symm encoded))
  observe ρ encoded := M.observe ρ (code.symm encoded)

@[simp]
theorem transportSystem_step_code
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution)
    (input : Input)
    (state : State) :
    (transportSystem code M).step input (code state) =
      code (M.step input state) := by
  simp [transportSystem]

@[simp]
theorem transportSystem_observe_code
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution)
    (ρ : Resolution)
    (state : State) :
    (transportSystem code M).observe ρ (code state) =
      M.observe ρ state := by
  simp [transportSystem]

@[simp]
theorem transportSystem_run_code
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution)
    (inputs : List Input)
    (state : State) :
    (transportSystem code M).run inputs (code state) =
      code (M.run inputs state) := by
  induction inputs generalizing state with
  | nil => rfl
  | cons input rest ih =>
      rw [System.run_cons, System.run_cons,
        transportSystem_step_code, ih]

/-- Execution from an arbitrary encoded state, expressed through decoding. -/
theorem transportSystem_run
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution)
    (inputs : List Input)
    (encoded : Encoded) :
    (transportSystem code M).run inputs encoded =
      code (M.run inputs (code.symm encoded)) := by
  rw [← transportSystem_run_code code M inputs (code.symm encoded)]
  simp

/-- The recursion transported from snapshots to the codec's valid image. -/
noncomputable def packetSystem
    {Input : Type uI}
    {Snapshot : Type uS}
    {Resolution : Type uR}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (M : System Input Snapshot Resolution) :
    System Input C.ValidPacketType Resolution :=
  transportSystem C.snapshotEquivValidPacket M

private theorem transport_causalEquivalent
    {Input : Type uI}
    {State : Type uS}
    {Encoded : Type*}
    {Resolution : Type uR}
    (code : State ≃ Encoded)
    (M : System Input State Resolution)
    {x y : State}
    (h : M.CausalEquivalent x y) :
    (transportSystem code M).CausalEquivalent (code x) (code y) := by
  intro inputs ρ
  simp only [transportSystem_run_code, transportSystem_observe_code]
  exact h inputs ρ

/-- Snapshot and valid-packet presentations have equivalent causal states. -/
noncomputable def filesystemCausalStateEquivPacketCausalState
    {Input : Type uI}
    {Snapshot : Type uS}
    {Resolution : Type uR}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (M : System Input Snapshot Resolution) :
    M.CausalState ≃ (packetSystem C M).CausalState where
  toFun := Quotient.map C.snapshotEquivValidPacket
    (fun _ _ h =>
      transport_causalEquivalent C.snapshotEquivValidPacket M h)
  invFun := Quotient.map C.snapshotEquivValidPacket.symm (by
    intro x y h
    change
      (transportSystem C.snapshotEquivValidPacket M).CausalEquivalent x y at h
    intro inputs ρ
    have hxy := h inputs ρ
    rw [transportSystem_run C.snapshotEquivValidPacket M inputs x,
      transportSystem_run C.snapshotEquivValidPacket M inputs y] at hxy
    simpa [transportSystem] using hxy)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change M.toCausal
        (C.snapshotEquivValidPacket.symm
          (C.snapshotEquivValidPacket x)) = M.toCausal x
    rw [C.snapshotEquivValidPacket.symm_apply_apply]
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change (packetSystem C M).toCausal
        (C.snapshotEquivValidPacket
          (C.snapshotEquivValidPacket.symm x)) =
      (packetSystem C M).toCausal x
    rw [C.snapshotEquivValidPacket.apply_symm_apply]

@[simp]
theorem filesystemCausalStateEquivPacketCausalState_toCausal
    {Input : Type uI}
    {Snapshot : Type uS}
    {Resolution : Type uR}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (M : System Input Snapshot Resolution)
    (snapshot : Snapshot) :
    filesystemCausalStateEquivPacketCausalState C M (M.toCausal snapshot) =
      (packetSystem C M).toCausal
        (C.snapshotEquivValidPacket snapshot) :=
  rfl

/-! ## Explicit full and lossy packet observations -/

/-- Identity recursion exposing the complete valid packet, including framing. -/
def fullPacketSystem
    {Snapshot : Type uS}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width) :
    System PUnit C.ValidPacketType PUnit where
  Observation := fun _ => C.ValidPacketType
  step := fun _ packet => packet
  observe := fun _ packet => packet

/-- Identity recursion exposing only the dependent bare matrix. -/
def matrixOnlyPacketSystem
    {Snapshot : Type uS}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width) :
    System PUnit C.ValidPacketType PUnit where
  Observation := fun _ => VariableMatrix width
  step := fun _ packet => packet
  observe := fun _ packet => packet.1.toVariableMatrix

private theorem identityRun
    {Input State Resolution : Type*}
    (M : System Input State Resolution)
    (hstep : ∀ input state, M.step input state = state)
    (inputs : List Input)
    (state : State) :
    M.run inputs state = state := by
  induction inputs generalizing state with
  | nil => rfl
  | cons input rest ih =>
      rw [System.run_cons, hstep]
      exact ih state

/-- Full framed-packet causal equivalence is packet equality. -/
theorem fullPacket_causalEquivalent_iff_eq
    {Snapshot : Type uS}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (x y : C.ValidPacketType) :
    (fullPacketSystem C).CausalEquivalent x y ↔ x = y := by
  constructor
  · intro h
    exact h [] PUnit.unit
  · intro h
    subst y
    exact (fullPacketSystem C).causalEquivalent_refl x

/-- Matrix-only causal equivalence is exactly equality after dropping framing. -/
theorem matrixOnly_causalEquivalent_iff
    {Snapshot : Type uS}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (x y : C.ValidPacketType) :
    (matrixOnlyPacketSystem C).CausalEquivalent x y ↔
      x.1.toVariableMatrix = y.1.toVariableMatrix := by
  constructor
  · intro h
    exact h [] PUnit.unit
  · intro h inputs ρ
    rw [identityRun (matrixOnlyPacketSystem C) (by intros; rfl) inputs x,
      identityRun (matrixOnlyPacketSystem C) (by intros; rfl) inputs y]
    exact h

end FilesystemObserverLoop
```
