# fileStem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e0c53a2730b6d27f25e7dba90a8cb5ee2602b1b326cffb52ac5dd0713fcb82a",
  "kind": "def",
  "lexical_name": "fileStem",
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
  "slug": "filestem--87a9c36a98dd96da83dcd35e",
  "source": {
    "blob": "282ad242c2cb0a2f689adfc1475fb33c8ea46d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87a9c36a98dd96da83dcd35ee07db1b94a05a28e358884d19a097505a0e06aa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e0c53a2730b6d27f25e7dba90a8cb5ee2602b1b326cffb52ac5dd0713fcb82a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fileStem (p : FilePath) : Option String :=
  p.fileName.map fun fname =>
    match fname.revFind? '.' |>.map String.Pos.offset with
    | some ⟨0⟩ => fname
    | some pos => String.Pos.Raw.extract fname 0 pos
    | none     => fname

/--
Extracts the extension part of `p.fileName`.

If the filename contains multiple extensions, then only the last one is extracted. Returns `none` if
there is no file name at the end of the path.

Examples:
 * `("app.exe" : System.FilePath).extension = some "exe"`
 * `("file.tar.gz" : System.FilePath).extension = some "gz"`
 * `("files/" : System.FilePath).extension = none`
 * `("files/picture.jpg" : System.FilePath).extension = some "jpg"`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282ad242c2cb0a2f689adfc1475fb33c8ea46d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
