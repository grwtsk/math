# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RouterReplay.Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faf96cd33c37e576ae9837ac7f0115244aed19b6` · SHA-256 `8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  router_replay.lean — Test for Kernel.Router.verifyRoute.
  Validates that a material edge path is correctly replayed from src to dst.
-/
import Kernel.Core
import Kernel.Router

open Kernel
open Kernel.Router

/-- Construct a small DAG with a linear material path: n1 → n2 → n3. -/
def linearDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let n3 := { id := ⟨"n3"⟩, expr := .const `True [] }

  let e1 := {
    id := ⟨"e1"⟩,
    from := n1.id,
    to := n2.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  let e2 := {
    id := ⟨"e2"⟩,
    from := n2.id,
    to := n3.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  { V := [n1, n2, n3], E := [e1, e2] }

/-- The expected route specification: n1 → e1 → n2 → e2 → n3. -/
def linearRoute : RouteSpec :=
  { src := ⟨"n1"⟩, dst := ⟨"n3"⟩, path := [⟨"e1"⟩, ⟨"e2"⟩] }

/-- Run the route verification and print result. -/
def testRouter : IO Unit := do
  IO.println "▶ Verifying route from n1 to n3..."
  let result := verifyRoute linearDag linearRoute

  if result.valid then
    IO.println s!"✅ Route valid. {result.hops} hops."
    match result.composed with
    | some pf => IO.println s!"Constructed proof term: {pf}"
    | none    => IO.println "⚠️ No composed proof returned."
  else
    IO.println s!"❌ Route invalid: {result.message.getD "unknown error"}"

#eval testRouter
```
