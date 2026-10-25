# getInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd009ea6b47e981dafcf7700c13906e40edd5ab2194a728be9608dfca9cc8362",
  "kind": "def",
  "lexical_name": "getInstances",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "getinstances--05ee4a46b1e4711d39e287da",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05ee4a46b1e4711d39e287da511c821949810105d33b3e90ea797e52abdeeb1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd009ea6b47e981dafcf7700c13906e40edd5ab2194a728be9608dfca9cc8362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getInstances (type : Expr) : MetaM (Array Instance) := do
  -- We must retrieve `localInstances` before we use `forallTelescopeReducing` because it will update the set of local instances
  let localInstances ← getLocalInstances
  forallTelescopeReducing type fun _ type => do
    let className? ← isClass? type
    match className? with
    | none   => throwError "type class instance expected{indentExpr type}"
    | some className =>
      let globalInstances ← getGlobalInstancesIndex
      let result ← globalInstances.getUnify type
      -- Using insertion sort because it is stable and the array `result` should be mostly sorted.
      -- Most instances have default priority.
      let result := result.insertionSort fun e₁ e₂ => e₁.priority < e₂.priority
      let erasedInstances ← getErasedInstances
      let env ← getEnv
      let mut result ← result.filterMapM fun e => match e.val with
        | .const constName us =>
          if erasedInstances.contains constName then
            return none
          else if env.isExporting && !env.contains constName then
            -- private instances must not leak into public scope
            return none
          else
            return some {
              val := e.val.updateConst! (← us.mapM (fun _ => mkFreshLevelMVar))
              synthOrder := e.synthOrder
            }
        | _ => panic! "global instance is not a constant"
      for linst in localInstances do
        if linst.className == className then
          let synthOrder ← forallTelescopeReducing (← inferType linst.fvar) fun xs _ => do
            if xs.isEmpty then return #[]
            let mut order := #[]
            for i in *...xs.size, x in xs do
              if (← getFVarLocalDecl x).binderInfo == .instImplicit then
                order := order.push i
            return order
          result := result.push { val := linst.fvar, synthOrder }
      trace[Meta.synthInstance.instances] result.map (·.val)
      return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
