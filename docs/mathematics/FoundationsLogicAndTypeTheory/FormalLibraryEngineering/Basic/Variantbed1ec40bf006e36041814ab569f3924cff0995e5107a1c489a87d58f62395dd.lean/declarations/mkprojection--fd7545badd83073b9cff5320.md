# mkProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f7836d3602b57e31fbf0883f01264f4971dc7029a4b90417d0f2ba019ab50b2",
  "kind": "def",
  "lexical_name": "mkProjection",
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
  "slug": "mkprojection--fd7545badd83073b9cff5320",
  "source": {
    "blob": "b0e266ab6c1e1c040862e1a4c24e45343785ee97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7545badd83073b9cff53202d391d08fd1893b0712cf8100758ec3e105c52b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f7836d3602b57e31fbf0883f01264f4971dc7029a4b90417d0f2ba019ab50b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkProjection (e : Expr) (fieldName : Name) : MetaM Expr := do
  let .const structName _ := (← whnf (← inferType e)).getAppFn |
    throwError "{e} doesn't have a structure as type"
  let some baseStruct := findField? (← getEnv) structName fieldName |
    throwError "No parent of {structName} has field {fieldName}"
  let mut e := e
  for projName in (getPathToBaseStructure? (← getEnv) baseStruct structName).get! do
    let type ← whnf (← inferType e)
    let .const _structName us := type.getAppFn | throwError "{e} doesn't have a structure as type"
    e := mkAppN (.const projName us) (type.getAppArgs.push e)
  mkDirectProjection e fieldName

/-- If `e` is a projection of the structure constructor, reduce the projection.
Otherwise returns `none`. If this function detects that expression is ill-typed, throws an error.
For example, given `Prod.fst (x, y)`, returns `some x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbed1ec40bf006e36041814ab569f3924cff0995e5107a1c489a87d58f62395dd.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e266ab6c1e1c040862e1a4c24e45343785ee97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
