# Presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72cbd1cb579f24ba520a21c3b519c2dbc84e0dbe0d9cccb4a48562f1181e86c0",
  "kind": "structure",
  "lexical_name": "Presentation",
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
  "slug": "presentation--c0b5161d36f47335dd7c7bf3",
  "source": {
    "blob": "8096cff6930681abd44d7eae9988c192e02b59ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A74a74ea4a5746961/Variant59b4a6d2cf3446d476653fca0e1d6348e4eaac3167a5ccf0375aecf535f2a472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0b5161d36f47335dd7c7bf38303b4515abde53516a6f924619ee823c50dced0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A74a74ea4a5746961/Variant59b4a6d2cf3446d476653fca0e1d6348e4eaac3167a5ccf0375aecf535f2a472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72cbd1cb579f24ba520a21c3b519c2dbc84e0dbe0d9cccb4a48562f1181e86c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Presentation (Vertex : Type u) where
  carrier : ElementRef
  shape : SimplicialShape Vertex
  presentationDigest : Digest

end Mathematics.Fabric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A74a74ea4a5746961/Variant59b4a6d2cf3446d476653fca0e1d6348e4eaac3167a5ccf0375aecf535f2a472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A74a74ea4a5746961/Variant59b4a6d2cf3446d476653fca0e1d6348e4eaac3167a5ccf0375aecf535f2a472.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8096cff6930681abd44d7eae9988c192e02b59ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
