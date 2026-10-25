# withToClear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a674ec7df37cb2899e6aac347d10e78d11976f1cd0f095f69cee4c88e9831fb",
  "kind": "def",
  "lexical_name": "withToClear",
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
  "slug": "withtoclear--84cf00d0d736c768bd4b0650",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 786,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84cf00d0d736c768bd4b0650b553c733ae96a1b7f5ebc4289b0c3778c6992666",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a674ec7df37cb2899e6aac347d10e78d11976f1cd0f095f69cee4c88e9831fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withToClear (toClear : Array FVarId) (type : Expr) (k : TermElabM α) : TermElabM α := do
  if toClear.isEmpty then
    k
  else
    let toClear ← sortFVarIds toClear
    trace[Elab.match] ">> toClear {toClear.map mkFVar}"
    let mut lctx ← getLCtx
    let mut localInsts ← getLocalInstances
    for fvarId in toClear.reverse do
      if !(← dependsOn type fvarId) then
        if !(← lctx.anyM fun localDecl => pure (localDecl.fvarId != fvarId) <&&> localDeclDependsOn localDecl fvarId) then
          lctx := lctx.erase fvarId
          localInsts := localInsts.filter fun localInst => localInst.fvar.fvarId! != fvarId
    withLCtx lctx localInsts k

/--
  Generate equalities `h : discr = pattern` for discriminants annotated with `h :`.
  We use these equalities to elaborate the right-hand-side of a `match` alternative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
