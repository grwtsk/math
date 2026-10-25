# reorderLastArguments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b42f91a5f465ecbbcbb6f8f02f1eb0f55458c0f5ceb092753c928ddd1511e74",
  "kind": "def",
  "lexical_name": "reorderLastArguments",
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
  "slug": "reorderlastarguments--fa20546b852aaf7e5b754788",
  "source": {
    "blob": "0c2daeceb9e2cbaf74d6721a0a9e97a71fc2d4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantf4b5a3f417b18b6f78a7ac3d780e6f121abce7a0cbbde2c72cdc52fc18d93a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa20546b852aaf7e5b754788b4cda9c847473a2b1f2531da6562669525d0d7af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantf4b5a3f417b18b6f78a7ac3d780e6f121abce7a0cbbde2c72cdc52fc18d93a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b42f91a5f465ecbbcbb6f8f02f1eb0f55458c0f5ceb092753c928ddd1511e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reorderLastArguments : Expr → Expr :=
  Expr.replaceRec λ r e =>
    let n := e.getAppNumArgs
    if n ≥ 2 then
      mkAppN e.getAppFn <| e.getAppArgs.map r |>.swap! (n - 1) (n - 2)
    else
      none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantf4b5a3f417b18b6f78a7ac3d780e6f121abce7a0cbbde2c72cdc52fc18d93a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantf4b5a3f417b18b6f78a7ac3d780e6f121abce7a0cbbde2c72cdc52fc18d93a59.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2daeceb9e2cbaf74d6721a0a9e97a71fc2d4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
