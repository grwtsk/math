# FurtherDecoratedEquiv.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66ba1e1d0a5abf89e0b97c63c7b93fc103a1baae7a67ca77fb691f531a08d0f7",
  "kind": "def",
  "lexical_name": "FurtherDecoratedEquiv.symm",
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
  "slug": "furtherdecoratedequiv-symm--92c4a643c751224b4e941cad",
  "source": {
    "blob": "cb0a5d4b597a25b89b83821d5026f8e9c340fe8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1182,
    "line": 1177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant005632af17f4d702e8d0915af8ac6da436513e0adbf887b22c013c2d78ed2c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92c4a643c751224b4e941cad80f70b2c999f92248b95bffa17b51d4b6b1b3a4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant005632af17f4d702e8d0915af8ac6da436513e0adbf887b22c013c2d78ed2c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66ba1e1d0a5abf89e0b97c63c7b93fc103a1baae7a67ca77fb691f531a08d0f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FurtherDecoratedEquiv.symm {α β : Sort _} (e : FurtherDecoratedEquiv α β) :
    FurtherDecoratedEquiv β α :=
  { toDecoratedEquiv := e.toDecoratedEquiv.symm
    Q_toFun := e.Q_invFun
    Q_invFun := e.Q_toFun }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant005632af17f4d702e8d0915af8ac6da436513e0adbf887b22c013c2d78ed2c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant005632af17f4d702e8d0915af8ac6da436513e0adbf887b22c013c2d78ed2c53.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0a5d4b597a25b89b83821d5026f8e9c340fe8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
