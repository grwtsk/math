# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0551d4e72f65d6272d96659edcdea2eccbced54adb07c02e4fa0d171d3e134d6",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--403045f33404faf858fe60ab",
  "source": {
    "blob": "6b82412e40f6d57fd738b28148934f343d3ae5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:403045f33404faf858fe60ab2f6e2f6c8863b73318dd435080334bed0145c236",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0551d4e72f65d6272d96659edcdea2eccbced54adb07c02e4fa0d171d3e134d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| squeeze_wrap $a $x => $tac) => do
    let stx := tac.raw
    let usedSimps ← match stx.getKind with
    | ``Parser.Tactic.simp => do
      let { ctx, dischargeWrapper } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
      dischargeWrapper.with fun discharge? =>
        simpLocation ctx discharge? (expandOptLocation stx[5])
    | ``Parser.Tactic.simpAll => do
      let { ctx, .. } ← mkSimpContext stx
        (eraseLocal := true) (kind := .simpAll) (ignoreStarArg := true)
      let (result?, usedSimps) ← simpAll (← getMainGoal) ctx
      match result? with
      | none => replaceMainGoal []
      | some mvarId => replaceMainGoal [mvarId]
      pure usedSimps
    | ``Parser.Tactic.dsimp => do
      let { ctx, .. } ← withMainContext <| mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
      dsimpLocation' ctx (expandOptLocation stx[5])
    | _ => Elab.throwUnsupportedSyntax
    let a := a.getId; let x := x.getId
    squeezeScopes.modify fun map => Id.run do
      let some map1 := map.find? a | return map
      let newSimps := match map1.find? x with
      | some (stx, oldSimps) => (stx, usedSimps :: oldSimps)
      | none => (stx, [usedSimps])
      map.insert a (map1.insert x newSimps)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b82412e40f6d57fd738b28148934f343d3ae5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
