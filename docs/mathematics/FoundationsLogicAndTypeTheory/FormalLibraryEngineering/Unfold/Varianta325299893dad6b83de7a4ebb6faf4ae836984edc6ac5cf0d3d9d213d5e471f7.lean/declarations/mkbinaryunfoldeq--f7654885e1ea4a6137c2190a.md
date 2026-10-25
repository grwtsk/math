# mkBinaryUnfoldEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:256ae44f12ee6dc2efd0e15d6ba665e51a1f6d18fd7a76169948af08aabb8d68",
  "kind": "def",
  "lexical_name": "mkBinaryUnfoldEq",
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
  "slug": "mkbinaryunfoldeq--f7654885e1ea4a6137c2190a",
  "source": {
    "blob": "3d511d825a7fd35db4bf68ca217743cd8f70c11f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7654885e1ea4a6137c2190af8919b53f0fb86f884c9065f3b63e9e45eccc934",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:256ae44f12ee6dc2efd0e15d6ba665e51a1f6d18fd7a76169948af08aabb8d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBinaryUnfoldEq (preDef : PreDefinition) (unaryPreDefName : Name) : MetaM Unit := do
  let name := mkEqLikeNameFor (← getEnv) preDef.declName unfoldThmSuffix
  let unaryEqName:= mkEqLikeNameFor (← getEnv) unaryPreDefName unfoldThmSuffix
  prependError m!"Cannot derive {name} from {unaryEqName}" do
  withOptions (tactic.hygienic.set · false) do
    lambdaTelescope preDef.value fun xs body => do
      let us := preDef.levelParams.map mkLevelParam
      let lhs := mkAppN (Lean.mkConst preDef.declName us) xs
      let type ← mkEq lhs body
      let main ← mkFreshExprSyntheticOpaqueMVar type
      let mvarId := main.mvarId!
      let mvarId ← deltaLHS mvarId -- unfold the function
      let mvarIds ← mvarId.applyConst unaryEqName
      unless mvarIds.isEmpty do
        throwError "Failed to apply `{unaryEqName}` to `{mvarId}`"

      let value ← instantiateMVars main
      let type ← mkForallFVars xs type
      let type ← letToHave type
      let value ← mkLambdaFVars xs value
      addDecl <| Declaration.thmDecl {
        name, type, value
        levelParams := preDef.levelParams
      }
      inferDefEqAttr name
      trace[Elab.definition.wf] "mkBinaryUnfoldEq defined {.ofConstName name}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d511d825a7fd35db4bf68ca217743cd8f70c11f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
