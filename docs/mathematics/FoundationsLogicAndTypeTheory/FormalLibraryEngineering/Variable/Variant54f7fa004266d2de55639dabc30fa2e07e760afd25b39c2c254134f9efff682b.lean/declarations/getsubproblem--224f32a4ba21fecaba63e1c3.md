# getSubproblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90be64f5ffb77c7b50715b3437f0f40c28dd40b3a419cf52be5759465879b411",
  "kind": "def",
  "lexical_name": "getSubproblem",
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
  "slug": "getsubproblem--224f32a4ba21fecaba63e1c3",
  "source": {
    "blob": "2ebed7cc7b7fdba59fdc00aafb6a28e795942551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:224f32a4ba21fecaba63e1c3a8eb51fa53e76a1f5c47816db2bfe66e3f6235d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90be64f5ffb77c7b50715b3437f0f40c28dd40b3a419cf52be5759465879b411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getSubproblem
    (binder : TSyntax ``bracketedBinder) (ty : Term) :
    TermElabM (Option (MessageData × TSyntax ``bracketedBinder)) := do
  let res : Term.TermElabResult (Option (MessageData × TSyntax ``bracketedBinder)) ←
    Term.observing do
    withTheReader Term.Context (fun ctx => {ctx with ignoreTCFailures := true}) do
    Term.withAutoBoundImplicit do
      _ ← Term.elabType ty
      Term.synthesizeSyntheticMVars (postpone := .yes) (ignoreStuckTC := true)
      let fvarIds := (← getLCtx).getFVarIds
      if let some mvarId ← pendingActionableSynthMVar binder then
        trace[«variable?»] "Actionable mvar:{mvarId}"
        -- TODO alter goal based on configuration, for example Semiring -> CommRing.
        -- 1. Find the new fvars that this instance problem depends on:
        let fvarIds' := (← mvarId.getDecl).lctx.getFVarIds.filter
                          (fun fvar => !(fvarIds.contains fvar))
        -- 2. Abstract the instance problem with respect to these fvars
        let goal ← mvarId.withContext do instantiateMVars <|
                    (← mkForallFVars (usedOnly := true) (fvarIds'.map .fvar) (← mvarId.getType))
        -- Note: pretty printing is not guaranteed to round-trip, but it's what we can do.
        let ty' ← PrettyPrinter.delab goal
        let binder' ← withRef binder `(bracketedBinderF| [$ty'])
        return some (← addMessageContext m!"{mvarId}", binder')
      else
        return none
  match res with
  | .ok v _ => return v
  | .error .. => Term.applyResult res

/-- Tries elaborating binders, inserting new binders whenever typeclass inference fails.
`i` is the index of the next binder that needs to be checked.

The `toOmit` array keeps track of which binders should be removed at the end,
in particular the `variable_alias` binders and any redundant binders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ebed7cc7b7fdba59fdc00aafb6a28e795942551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
