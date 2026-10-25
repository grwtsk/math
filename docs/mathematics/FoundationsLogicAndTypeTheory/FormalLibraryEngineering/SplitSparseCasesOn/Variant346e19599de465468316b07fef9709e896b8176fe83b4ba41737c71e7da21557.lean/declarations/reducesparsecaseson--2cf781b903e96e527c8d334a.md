# reduceSparseCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9bd6a02115ba1bef95533c15d5aca5cb3c746a79a53ada27af71d7a007e95c5",
  "kind": "def",
  "lexical_name": "reduceSparseCasesOn",
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
  "slug": "reducesparsecaseson--2cf781b903e96e527c8d334a",
  "source": {
    "blob": "0eb18a5c625e4fbad81c7672779590660331e94d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cf781b903e96e527c8d334a178641b78479b912b25455e5b54b58219ceb775f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9bd6a02115ba1bef95533c15d5aca5cb3c746a79a53ada27af71d7a007e95c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def reduceSparseCasesOn (mvarId : MVarId) : MetaM (Array MVarId) := do
  let some (_, lhs) ← matchEqHEqLHS? (← mvarId.getType) | throwError "Target not an equality"
  lhs.withApp fun f xs => do
  let .const matchDeclName _  := f | throwError "Not a const application"
  let some sparseCasesOnInfo ← getSparseCasesOnInfo matchDeclName | throwError "Not a sparse casesOn application"
  withTraceNode `Meta.Match.matchEqs (msg := (fun _ => return m!"splitSparseCasesOn")) do
  if xs.size < sparseCasesOnInfo.arity then
    throwError "Not enough arguments for sparse casesOn application"
  let majorIdx := sparseCasesOnInfo.majorPos
  let major := xs[majorIdx]!
  let some ctorInfo  ← isConstructorApp'? major
    | throwError "Major premise is not a constructor application:{indentExpr major}"
  if sparseCasesOnInfo.insterestingCtors.contains ctorInfo.name then
    let mvarId' ← mvarId.modifyTargetEqLHS fun lhs =>
      unfoldDefinition lhs
    return #[mvarId']
  else
    let sparseCasesOnEqName ← getSparseCasesOnEq matchDeclName
    let eqProof := mkConst sparseCasesOnEqName lhs.getAppFn.constLevels!
    let eqProof := mkAppN eqProof lhs.getAppArgs[:sparseCasesOnInfo.arity]
    let eqProof := mkApp eqProof (← mkHasNotBitProof (mkRawNatLit ctorInfo.cidx) (←  sparseCasesOnInfo.insterestingCtors.mapM (fun n => return (← getConstInfoCtor n).cidx)))
    let mvarId' ← rewriteGoalUsingEq mvarId eqProof
    return #[mvarId']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb18a5c625e4fbad81c7672779590660331e94d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
