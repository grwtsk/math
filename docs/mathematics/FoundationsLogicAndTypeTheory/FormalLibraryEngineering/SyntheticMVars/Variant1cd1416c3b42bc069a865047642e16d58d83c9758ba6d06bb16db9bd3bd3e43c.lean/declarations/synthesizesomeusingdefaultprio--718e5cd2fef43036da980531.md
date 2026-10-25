# synthesizeSomeUsingDefaultPrio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3b5825a2c5ce23cd6674b4b5445dcbc895ce779e4a0398eb8f29449aeecc967",
  "kind": "def",
  "lexical_name": "synthesizeSomeUsingDefaultPrio",
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
  "slug": "synthesizesomeusingdefaultprio--718e5cd2fef43036da980531",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:718e5cd2fef43036da9805319d66bd49ff57c40fbb589fa0073ad4ea1258b864",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3b5825a2c5ce23cd6674b4b5445dcbc895ce779e4a0398eb8f29449aeecc967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def synthesizeSomeUsingDefaultPrio (prio : Nat) : TermElabM Bool := do
  let rec visit (pendingMVars : List MVarId) (pendingMVarsNew : List MVarId) : TermElabM Bool := do
    match pendingMVars with
    | [] => return false
    | mvarId :: pendingMVars =>
      let some mvarDecl ← getSyntheticMVarDecl? mvarId | visit pendingMVars (mvarId :: pendingMVarsNew)
      match mvarDecl.kind with
      | .typeClass .. => -- TODO: use `errorMsg?` in `typeClass`.
        if (← withRef mvarDecl.stx <| synthesizeUsingDefaultPrio mvarId prio) then
          modify fun s => { s with pendingMVars := pendingMVars.reverse ++ pendingMVarsNew }
          return true
        else
          visit pendingMVars (mvarId :: pendingMVarsNew)
      | _ => visit pendingMVars (mvarId :: pendingMVarsNew)
  /- Recall that s.pendingMVars is essentially a stack. The first metavariable was the last one created.
     We want to apply the default instance in reverse creation order. Otherwise,
     `toString 0` will produce a `OfNat String _` cannot be synthesized error. -/
  visit (← get).pendingMVars.reverse []

/--
  Apply default value to any pending synthetic metavariable of kind `SyntheticMVarKind.withDefault`
  Return true if something was synthesized. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
