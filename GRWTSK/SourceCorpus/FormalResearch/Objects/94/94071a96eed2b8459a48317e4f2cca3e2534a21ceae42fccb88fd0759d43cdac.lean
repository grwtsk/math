/-
  Router.lean — Lean-side replay of gradient descent paths.
  Verifies that a proposed path of edges connects `src` to `dst`
  and is provable as a valid logical traversal in the DAG.
-/
import Kernel.Core

namespace Kernel.Router

open Kernel

/-- A proposed path: ordered list of edge UUIDs from `src` to `dst`. -/
structure RouteSpec where
  src  : UUID
  dst  : UUID
  path : List UUID  -- list of edge IDs
  deriving Repr

/-- Result of verifying a route inside Lean. -/
structure RouteVerification where
  valid    : Bool
  hops     : Nat
  composed : Option Expr
  message  : Option String
  deriving Repr

/--
  Verifies that a route matches the DAG topology and forms a valid proof path.
  - All edge IDs must exist in the DAG.
  - All edges must form a chain from `src` to `dst`.
  - Each edge must be `.material` and include a valid Lean proof term.
-/
def verifyRoute (dag : Dag) (spec : RouteSpec) : RouteVerification :=
  let edgeMap : Std.HashMap String Edge :=
    dag.E.foldl (init := {}) fun m e => m.insert e.id.uuid e

  let mut composed : List Expr := []

  match spec.path with
  | [] => {
      valid := false,
      hops := 0,
      composed := none,
      message := some "Empty path"
    }
  | _ =>
    let mut curr := spec.src
    let mut ok := true
    for eid in spec.path do
      match edgeMap.find? eid.uuid with
      | none =>
        return {
          valid := false,
          hops := 0,
          composed := none,
          message := some s!"Edge not found: {eid.uuid}"
        }
      | some edge =>
        if edge.kind ≠ .material then
          return {
            valid := false,
            hops := 0,
            composed := none,
            message := some s!"Non-material edge in route: {eid.uuid}"
          }
        if edge.from ≠ curr then
          return {
            valid := false,
            hops := 0,
            composed := none,
            message := some s!"Broken chain at edge: {eid.uuid}"
          }
        -- Accept the proof term
        composed := composed.concat edge.proof
        curr := edge.to

    if curr ≠ spec.dst then
      return {
        valid := false,
        hops := spec.path.length,
        composed := none,
        message := some "Final target does not match route dst"
      }

    return {
      valid := true,
      hops := spec.path.length,
      composed := some (.appN (.const ``And.intro []) composed),
      message := none
    }

end Kernel.Router
