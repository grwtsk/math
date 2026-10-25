# propagateProjEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846bcf0347b54699f6e1456e16a780031ed0ef769687f8e79a156153d01d72aa",
  "kind": "def",
  "lexical_name": "propagateProjEq",
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
  "slug": "propagateprojeq--cd4c5f6d67fb7664863cbea4",
  "source": {
    "blob": "cc4329f8cb9bb83ae6e252881fff85f0fff40aa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proj/Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd4c5f6d67fb7664863cbea4f41fcfa578a721b5ddcb31344e932e2ce48b84a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proj/Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846bcf0347b54699f6e1456e16a780031ed0ef769687f8e79a156153d01d72aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateProjEq (parent : Expr) : GoalM Unit := do
  let .const declName _ := parent.getAppFn | return ()
  let some info ← getProjectionFnInfo? declName | return ()
  unless info.numParams + 1 == parent.getAppNumArgs do return ()
  -- It is wasteful to add equation if `parent` is not the root of its congruence class
  unless (← isCongrRoot parent) do return ()
  let arg := parent.appArg!
  let ctorNode ← getRootENode arg
  let ctor := ctorNode.self
  unless ctor.isAppOf info.ctorName do return ()
  let parentNew ← if isSameExpr arg ctor then
    pure parent
  else
    let parentNew ← if ctorNode.heqProofs then
      /-
      When the equivalence class contains heterogeneous equalities,
      type of `arg` and `ctor` may not be definitionally equal.
      To ensure the projection application is type correct, we use
      the `ctor` parameters.
      -/
      let projFn := parent.getAppFn
      let params := ctor.getAppArgs[:info.numParams].toArray
      shareCommon (mkApp (mkAppN projFn params) ctor)
    else
      shareCommon (mkApp parent.appFn! ctor)
    internalize parentNew (← getGeneration parent)
    pure parentNew
  trace_goal[grind.debug.proj] "{parentNew}"
  let idx := info.numParams + info.i
  unless idx < ctor.getAppNumArgs do return ()
  let v := ctor.getArg! idx
  let h ← mkEqRefl v
  let h := mkExpectedPropHint h (← mkEq parentNew v)
  pushEq parentNew v h

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proj/Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proj/Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4329f8cb9bb83ae6e252881fff85f0fff40aa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
