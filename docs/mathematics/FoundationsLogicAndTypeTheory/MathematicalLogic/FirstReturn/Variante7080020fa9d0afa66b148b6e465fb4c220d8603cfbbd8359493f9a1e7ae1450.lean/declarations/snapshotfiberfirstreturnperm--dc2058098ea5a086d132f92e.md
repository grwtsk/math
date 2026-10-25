# snapshotFiberFirstReturnPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46f1e4c36e59b9f1ca89e9926744a839c3d834a328ac5eb2e1a0b30f91f50852",
  "kind": "def",
  "lexical_name": "snapshotFiberFirstReturnPerm",
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
  "slug": "snapshotfiberfirstreturnperm--dc2058098ea5a086d132f92e",
  "source": {
    "blob": "ad796ab44fb858297745f8deb934446039205cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc2058098ea5a086d132f92e7e8a0d48c4cc9b60ae4dcc1dd9851fa609dbeff1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46f1e4c36e59b9f1ca89e9926744a839c3d834a328ac5eb2e1a0b30f91f50852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def snapshotFiberFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    Equiv.Perm (SnapshotFiber C k) :=
  FinitePermutationDynamics.transport
    (snapshotFiberEquivValidPacketFiber C k).symm
    (validPacketFiberFirstReturnPerm C E rowPerm k)

/-- Fixed-point counts agree between valid packets and their ambient image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad796ab44fb858297745f8deb934446039205cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
