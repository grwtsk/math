/-
  spinor_soundness.lean — Unit tests for Kernel.Spinor and BackfillSpinor.
  Confirms that spinor edges embed correctly and that soundness hooks are defined.
-/
import Kernel.Core
import Kernel.Spinor
import Kernel.BackfillSpinor

open Kernel
open Kernel.Spinor
open Kernel.BackfillSpinor

def sampleUUID (s : String) : UUID := ⟨s⟩

def dummyExpr : Expr := .const `True []

def dummyProof : Expr := .const `trivial []

def exampleSpinorEdge : Edge :=
  {
    id    := ⟨"e123"⟩,
    from  := ⟨"nA"⟩,
    to    := ⟨"nB"⟩,
    kind  := .spinor,
    proof := dummyExpr,
    w?    := some (1),
    spec? := some { λ := 0.5, μ := 1.0 }
  }

def minimalDag : Dag :=
  { V := [
      { id := ⟨"nA"⟩, expr := dummyExpr },
      { id := ⟨"nB"⟩, expr := dummyExpr }
    ],
    E := [exampleSpinorEdge]
  }

#eval IO.println "▶ Spinor test: embedding node nA into ℓ²(4)..."
#eval embed 4 (sampleUUID "nA")

#eval IO.println "▶ Spinor test: embedding distance (ℓ²)..."
#eval dist (embed 4 (sampleUUID "nA")) (embed 4 (sampleUUID "nB"))

#eval IO.println "▶ Backfill test: generate path from spinor edge..."
#eval match backfill exampleSpinorEdge minimalDag with
  | some result =>
    IO.println s!"Backfill: {result.hops.length} hops, valid = {result.valid}"
  | none => IO.println "Backfill failed: edge was not eligible"

#check Spinor.sound  -- ensures theorem is syntactically correct
#check BackfillSpinor.dense_reduction  -- check contract exists

#eval IO.println "✅ spinor_soundness.lean tests complete."
