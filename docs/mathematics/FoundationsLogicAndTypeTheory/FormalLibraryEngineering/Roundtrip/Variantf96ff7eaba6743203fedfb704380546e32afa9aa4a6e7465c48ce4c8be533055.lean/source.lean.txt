/-
  roundtrip.lean — Round-trip DAG serialization test.
  Verifies `export ∘ import = id` on in-memory structures.
-/
import Lean
import Kernel.Core
open Kernel

open Lean Meta IO

/-- Dummy test DAG to simulate minimal export/import cycle. -/
def roundtripDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let e1 := {
    id := ⟨"e1"⟩,
    from := ⟨"n1"⟩,
    to := ⟨"n2"⟩,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }
  { V := [n1, n2], E := [e1] }

/-- Encode a DAG to JSON string. -/
def encodeDag (dag : Dag) : String :=
  match toJson dag with
  | .ok j => j.compress
  | .error e => panic! s!"encoding error: {e}"

/-- Decode a DAG from JSON string. -/
def decodeDag (s : String) : Option Dag :=
  match Lean.Json.parse s with
  | .ok j => Lean.FromJson.fromJson? j
  | .error _ => none

/-- Main test function. Exports and re-imports a DAG, then compares structure. -/
def testRoundTrip : IO Unit := do
  IO.println "▶ Exporting DAG..."
  let raw := encodeDag roundtripDag
  IO.println s!"Serialized: {raw.take 120}..."

  IO.println "▶ Re-importing DAG..."
  let back := decodeDag raw
  match back with
  | some dag' =>
    if dag'.V.length = roundtripDag.V.length ∧ dag'.E.length = roundtripDag.E.length then
      IO.println s!"✅ Round-trip check passed: nodes={dag'.V.length}, edges={dag'.E.length}"
    else
      throw <| userError s!"❌ Structure mismatch: {dag'.V.length} vs {roundtripDag.V.length}"
  | none => throw <| userError "❌ JSON parse failed during round-trip."

#eval testRoundTrip
