# FileRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bf24537c9099f3029fef3353c3e61073b0b4f46153f473faea335ebcac3412e",
  "kind": "structure",
  "lexical_name": "FileRight",
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
  "slug": "fileright--dc4de700ac81050ab7939034",
  "source": {
    "blob": "64faef771c3b33af437dde294e5472dced69f6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1643,
    "line": 1632,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant4612b91e65806364c814fc445b35598d8e26ee0f2a811ffde6c330d792dcddab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc4de700ac81050ab7939034c0aac6e7cc95e34ab1f436832111b47948a769ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant4612b91e65806364c814fc445b35598d8e26ee0f2a811ffde6c330d792dcddab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bf24537c9099f3029fef3353c3e61073b0b4f46153f473faea335ebcac3412e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1632–1643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FileRight where
  /-- The owner's permissions to access the file. -/
  user  : AccessRight := {}
  /-- The assigned group's permissions to access the file. -/
  group : AccessRight := {}
  /-- The permissions that all others have to access the file. -/
  other : AccessRight := {}

/--
Converts POSIX-style file permissions to their numeric representation, with three bits each for the
owner's permissions, the group's permissions, and others' permissions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant4612b91e65806364c814fc445b35598d8e26ee0f2a811ffde6c330d792dcddab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant4612b91e65806364c814fc445b35598d8e26ee0f2a811ffde6c330d792dcddab.lean#L1632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64faef771c3b33af437dde294e5472dced69f6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
