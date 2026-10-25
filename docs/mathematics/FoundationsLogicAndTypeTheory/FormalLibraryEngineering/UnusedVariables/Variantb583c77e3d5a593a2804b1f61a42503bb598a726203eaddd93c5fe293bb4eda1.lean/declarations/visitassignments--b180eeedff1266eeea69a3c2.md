# visitAssignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bc2080b6be2adc331cadda754c17f4d2b5a77f9bccfaa5c453bf16e89eab0b7",
  "kind": "def",
  "lexical_name": "visitAssignments",
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
  "slug": "visitassignments--b180eeedff1266eeea69a3c2",
  "source": {
    "blob": "5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b180eeedff1266eeea69a3c2066a3f8a10a273a68717bb369f1403f8fbdd94db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bc2080b6be2adc331cadda754c17f4d2b5a77f9bccfaa5c453bf16e89eab0b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def visitAssignments (set : IO.Ref (Std.HashSet USize))
    (fvarUses : IO.Ref (Std.HashSet FVarId))
    (assignments : Array (PersistentHashMap MVarId Expr)) : IO Unit := do
  MonadCacheT.run do
    for assignment in assignments do
      visitNode assignment.root
where
  /-- Visit a `PersistentHashMap.Node`, collecting all fvars in it into `fvarUses` -/
  visitNode node : MonadCacheT Expr Unit IO Unit := do
    if ← insertObj set node then
      match node with
      | .entries entries => for e in entries do visitEntry e
      | .collision _ vs _ => for e in vs do visitExpr e
  /-- Visit a `PersistentHashMap.Entry`, collecting all fvars in it into `fvarUses` -/
  visitEntry e : MonadCacheT Expr Unit IO Unit := do
    if ← insertObj set e then
      match e with
      | .entry _ e => visitExpr e
      | .ref node => visitNode node
      | .null => pure ()
  /-- Visit an `Expr`, collecting all fvars in it into `fvarUses` -/
  visitExpr e : MonadCacheT Expr Unit IO Unit := do
    if ← insertObj set e then
      ForEachExpr.visit (e := e) fun e => do
        match e with
        | .fvar id => fvarUses.modify (·.insert id); return false
        | _ => return e.hasFVar

/-- Given `aliases` as a map from an alias to what it aliases, we get the original
term by recursion. This has no cycle detection, so if `aliases` contains a loop
then this function will recurse infinitely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
