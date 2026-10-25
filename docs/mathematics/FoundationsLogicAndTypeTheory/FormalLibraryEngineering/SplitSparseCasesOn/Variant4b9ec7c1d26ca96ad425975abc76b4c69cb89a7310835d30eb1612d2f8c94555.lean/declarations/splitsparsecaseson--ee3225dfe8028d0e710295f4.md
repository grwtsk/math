# splitSparseCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9fdcbd6641f81c8875e8e0f4214ee637e69ebbd95fffb3f478815dc1d11426a",
  "kind": "def",
  "lexical_name": "splitSparseCasesOn",
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
  "slug": "splitsparsecaseson--ee3225dfe8028d0e710295f4",
  "source": {
    "blob": "d92f1c72417be9a2c0917095714a51c2e965f656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant4b9ec7c1d26ca96ad425975abc76b4c69cb89a7310835d30eb1612d2f8c94555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee3225dfe8028d0e710295f4371f5c3065c89fde0db2e6cbdd9c71d36df28287",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant4b9ec7c1d26ca96ad425975abc76b4c69cb89a7310835d30eb1612d2f8c94555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9fdcbd6641f81c8875e8e0f4214ee637e69ebbd95fffb3f478815dc1d11426a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def splitSparseCasesOn (mvarId : MVarId) : MetaM (Array MVarId) := do
  let some (_, lhs) ← matchEqHEqLHS? (← mvarId.getType) | throwError "Target not an equality"
  lhs.withApp fun f xs => do
  let .const matchDeclName _  := f | throwError "Not a const application"
  let some sparseCasesOnInfo ← getSparseCasesOnInfo matchDeclName | throwError "Not a sparse casesOn application"
  withTraceNode `Meta.Match.matchEqs (msg := (fun _ => return m!"splitSparseCasesOn")) do
  try
    trace[Meta.Match.matchEqs] "splitSparseCasesOn running on\n{mvarId}"
    if xs.size < sparseCasesOnInfo.arity then
      throwError "Not enough arguments for sparse casesOn application"
    let majorIdx := sparseCasesOnInfo.majorPos
    unless xs[majorIdx]!.isFVar do
      throwError "Major premise is not a free variable:{indentExpr xs[majorIdx]!}"
    let fvarId := xs[majorIdx]!.fvarId!
    let subgoals ← mvarId.cases fvarId (interestingCtors? := sparseCasesOnInfo.insterestingCtors)
    subgoals.mapM fun s => s.mvarId.withContext do
      if s.ctorName.isNone then
        unless s.fields.size = 1 do
          throwError "Unexpected number of fields for catch-all branch: {s.fields}"
        let sparseCasesOnEqName ← getSparseCasesOnEq matchDeclName
        let some (_, lhs) ← matchEqHEqLHS? (← s.mvarId.getType) | throwError "Target not an equality"
        let eqProof := mkConst sparseCasesOnEqName lhs.getAppFn.constLevels!
        let eqProof := mkAppN eqProof lhs.getAppArgs[:sparseCasesOnInfo.arity]
        let eqProof := mkApp eqProof s.fields[0]!
        rewriteGoalUsingEq s.mvarId eqProof
      else
        s.mvarId.modifyTargetEqLHS fun lhs =>
          unfoldDefinition lhs
  catch e =>
    trace[Meta.Match.matchEqs] "splitSparseCasesOn failed{indentD e.toMessageData}"
    throw e
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant4b9ec7c1d26ca96ad425975abc76b4c69cb89a7310835d30eb1612d2f8c94555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant4b9ec7c1d26ca96ad425975abc76b4c69cb89a7310835d30eb1612d2f8c94555.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f1c72417be9a2c0917095714a51c2e965f656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
