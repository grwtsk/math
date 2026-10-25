# getMajorTypeIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13a2af1f8ce072c6f91abd551a35b2e0cc849dfe906c3ccb2f428967f6fe0e9b",
  "kind": "def",
  "lexical_name": "getMajorTypeIndices",
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
  "slug": "getmajortypeindices--4c53108b7d25b4954623e521",
  "source": {
    "blob": "285ee1f4878be40473f8219f0f2eecd0d0b213b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c53108b7d25b4954623e521ce4a6736d7eb6dd0533f1a8bfb489e105426ee2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13a2af1f8ce072c6f91abd551a35b2e0cc849dfe906c3ccb2f428967f6fe0e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMajorTypeIndices (mvarId : MVarId) (tacticName : Name) (recursorInfo : RecursorInfo) (majorType : Expr) : MetaM (Array Expr) := do
  let majorTypeArgs := majorType.getAppArgs
  recursorInfo.indicesPos.toArray.mapM fun idxPos => do
    if h : idxPos ≥ majorTypeArgs.size then
      throwTacticEx tacticName mvarId m!"major premise type is ill-formed{indentExpr majorType}"
    else
      let idx := majorTypeArgs[idxPos]
      unless idx.isFVar do throwTacticEx tacticName mvarId m!"major premise type index {idx} is not a variable{indentExpr majorType}"
      majorTypeArgs.size.forM fun i _ => do
        let arg := majorTypeArgs[i]
        if i != idxPos && arg == idx then
          throwTacticEx tacticName mvarId m!"'{idx}' is an index in major premise, but it occurs more than once{indentExpr majorType}"
        if i < idxPos then
          if (← exprDependsOn arg idx.fvarId!) then
            throwTacticEx tacticName mvarId m!"'{idx}' is an index in major premise, but it occurs in previous arguments{indentExpr majorType}"
        -- If arg is also and index and a variable occurring after `idx`, we need to make sure it doesn't depend on `idx`.
        -- Note that if `arg` is not a variable, we will fail anyway when we visit it.
        if i > idxPos && recursorInfo.indicesPos.contains i && arg.isFVar then
          let idxDecl ← idx.fvarId!.getDecl
          if (← localDeclDependsOn idxDecl arg.fvarId!) then
            throwTacticEx tacticName mvarId m!"'{idx}' is an index in major premise, but it depends on index occurring at position #{i+1}"
      return idx

/--
Auxiliary method for implementing `induction`-like tactics.
It creates the prefix of a recursor application up-to `motive`.
The motive is computed by abstracting `major` and `indices` at `mvarId.getType`.
It retrieves indices from `majorType` using `recursorInfo`.
Remark: `mvarId` and `tacticName` are used to generate error messages.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `285ee1f4878be40473f8219f0f2eecd0d0b213b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
