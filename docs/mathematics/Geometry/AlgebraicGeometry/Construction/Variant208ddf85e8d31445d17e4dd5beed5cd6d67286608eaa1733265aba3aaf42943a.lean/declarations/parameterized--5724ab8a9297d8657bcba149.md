# Parameterized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:335b67d0c19d66f820f5fff009fdd7789c78f93e9d66fc309362394b21d08b8a",
  "kind": "structure",
  "lexical_name": "Parameterized",
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
  "slug": "parameterized--5724ab8a9297d8657bcba149",
  "source": {
    "blob": "2dcc7e43bbcc96c7b2c55f95af6c7f4a2297484f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Construction/Variant208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5724ab8a9297d8657bcba149ae6a0178f4d7e80fb02e9061a46a0e8ddbba14b8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Construction/Variant208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:335b67d0c19d66f820f5fff009fdd7789c78f93e9d66fc309362394b21d08b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Parameterized
    (Representation : Type u)
    (A : Sort v)
    (B : Sort w) where
  map : Representation → A → B

/-- Explicit identification of two representation parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Construction/Variant208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Construction/Variant208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dcc7e43bbcc96c7b2c55f95af6c7f4a2297484f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
