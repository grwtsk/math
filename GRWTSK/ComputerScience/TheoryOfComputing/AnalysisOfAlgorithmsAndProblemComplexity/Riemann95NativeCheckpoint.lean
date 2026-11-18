/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95NativeCheckpointWire
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95StageRetrySearch
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

/-!
Finite checkpoints for the native prime-addressed HS-95 machine. The adapter
validates the expected window and prime address and uses the canonical finite
representatives of the two blank-extended half-tapes.

The handoff theorems preserve the original optional native result after a
specified number of instructions. The checkpoint contains a configuration,
without evidence connecting that configuration to a particular earlier run.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint

open ConjectureMachines (Cfg ListBlank)
open Riemann95StageRetrySearch (normalizeHalf mk_normalizeHalf)

private def normalizeBits (bits : Bits) : Bits :=
  normalizeHalf (ListBlank.mk bits)

private theorem normalizeBits_idempotent (bits : Bits) :
    normalizeBits (normalizeBits bits) = normalizeBits bits :=
  congrArg normalizeHalf (mk_normalizeHalf (ListBlank.mk bits))

private def normalizeConfiguration {w : ℕ} (c : Configuration w) : Configuration w :=
  { c with left := normalizeBits c.left, right := normalizeBits c.right }

private def encodeRecord {w : ℕ} (c : Configuration w) : Record :=
  ⟨w, c.address.val, c.position, c.scanned, normalizeBits c.left, normalizeBits c.right⟩

private def decodeRecord (w : ℕ) (record : Record) : Option (Configuration w) :=
  if record.window = w ∧
      normalizeBits record.left = record.left ∧ normalizeBits record.right = record.right then
    (checkAddress w record.prime).map fun address =>
      ⟨address, record.position, record.scanned, record.left, record.right⟩
  else none

private theorem decodeRecord_encodeRecord {w : ℕ} (c : Configuration w) :
    decodeRecord w (encodeRecord c) = some (normalizeConfiguration c) := by
  rcases c with ⟨address, position, scanned, left, right⟩
  have addressOK : checkAddress w address.val = some address := by
    rw [checkAddress, dite_eq_left address.property]
  simp [decodeRecord, encodeRecord, normalizeConfiguration, normalizeBits_idempotent, addressOK]

private theorem encodeRecord_of_decodeRecord_eq_some {w : ℕ} {record : Record}
    {c : Configuration w} (accepted : decodeRecord w record = some c) :
    encodeRecord c = record := by
  unfold decodeRecord at accepted
  split at accepted
  · rename_i valid
    obtain ⟨address, addressRead, same⟩ := Option.map_eq_some_iff.mp accepted
    have prime : address.val = record.prime := by
      unfold checkAddress at addressRead
      split at addressRead
      · exact congrArg Subtype.val (Option.some.inj addressRead).symm
      · contradiction
    subst c
    rcases record with ⟨window, p, position, scanned, left, right⟩
    rcases valid with ⟨rfl, leftOK, rightOK⟩
    simp [encodeRecord, prime, leftOK, rightOK]
  · contradiction

private theorem handoffView_normalizeConfiguration {w : ℕ} (c : Configuration w) :
    handoffView (normalizeConfiguration c) = handoffView c := by
  cases c
  simp [handoffView, project, normalizeConfiguration, normalizeBits, mk_normalizeHalf]

/-- Encode a prime-addressed configuration with normalized half-tapes. -/
def encodeCheckpoint {w : ℕ} (c : Configuration w) : Bits :=
  writeRecord (encodeRecord c)

/-- Read a checkpoint at the expected prime window. -/
def decodeCheckpoint (w : ℕ) (input : Bits) : Option (Configuration w) :=
  (readRecord input).bind (decodeRecord w)

/-- The round trip recovers the full native tape and the absolute head coordinate. -/
theorem handoffView_decodeCheckpoint_encodeCheckpoint {w : ℕ} (c : Configuration w) :
    (decodeCheckpoint w (encodeCheckpoint c)).map handoffView = some (handoffView c) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some, handoffView_normalizeConfiguration]

/-- Every accepted input is the canonical encoding of the decoded configuration. -/
theorem encodeCheckpoint_of_decodeCheckpoint_eq_some {w : ℕ} {input : Bits}
    {c : Configuration w} (accepted : decodeCheckpoint w input = some c) :
    encodeCheckpoint c = input := by
  obtain ⟨record, wire, native⟩ := Option.bind_eq_some_iff.mp accepted
  rw [encodeCheckpoint, encodeRecord_of_decodeRecord_eq_some native]
  exact writeRecord_of_readRecord_eq_some wire

/-- Within a fixed window, the checkpoint identifies precisely the native
handoff view, including the absolute head coordinate. -/
theorem encodeCheckpoint_eq_iff {w : ℕ} {c d : Configuration w} :
    encodeCheckpoint c = encodeCheckpoint d ↔ handoffView c = handoffView d := by
  constructor
  · intro same
    have recovered := congrArg (fun bits => (decodeCheckpoint w bits).map handoffView) same
    simpa only [handoffView_decodeCheckpoint_encodeCheckpoint, Option.some.injEq] using recovered
  · intro same
    have source := congrArg Prod.fst same
    have address : c.address = d.address := by
      have state := congrArg (fun cfg => cfg.state) source
      change decodeAddress c.address = decodeAddress d.address at state
      simpa only [encode_decode] using congrArg (encodeAddress w) state
    have position : c.position = d.position := congrArg Prod.snd same
    have scanned : c.scanned = d.scanned := congrArg (fun cfg => cfg.tape.head) source
    have left : normalizeBits c.left = normalizeBits d.left :=
      congrArg (fun cfg : Cfg 95 2 => normalizeHalf cfg.tape.left) source
    have right : normalizeBits c.right = normalizeBits d.right :=
      congrArg (fun cfg : Cfg 95 2 => normalizeHalf cfg.tape.right) source
    simp only [encodeCheckpoint, encodeRecord, address, position, scanned, left, right]

/-- A checkpoint continuation preserves the native optional result view.
The outer option records decoding success and the inner option records
whether the machine completed the requested instructions. -/
theorem runOn_decodeCheckpoint_encodeCheckpoint {w : ℕ} (c : Configuration w)
    {original resumed : List ℕ} (length : original.length = resumed.length)
    (originalTarget resumedTarget : ℕ) :
    (decodeCheckpoint w (encodeCheckpoint c)).map
        (fun d => (runOn resumed resumedTarget d).map handoffView) =
      some ((runOn original originalTarget c).map handoffView) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some]
  exact congrArg some
    (runOn_handoffView_eq (handoffView_normalizeConfiguration c).symm
      length originalTarget resumedTarget).symm

/-- A successfully reached checkpoint can replace the intermediate configuration
in a chunked run without consuming an additional native instruction. -/
theorem runOn_append_with_checkpoint {w mid : ℕ} {c : Configuration w} {e : Configuration mid}
    {first original resumed : List ℕ}
    (prefixRun : runOn first mid c = some e)
    (length : original.length = resumed.length) (originalTarget resumedTarget : ℕ) :
    (decodeCheckpoint mid (encodeCheckpoint e)).map
        (fun d => (runOn resumed resumedTarget d).map handoffView) =
      some ((runOn (first ++ original) originalTarget c).map handoffView) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some]
  exact congrArg some
    (runOn_append_with_handoff prefixRun (handoffView_normalizeConfiguration e).symm
      length originalTarget resumedTarget).symm

end GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint
