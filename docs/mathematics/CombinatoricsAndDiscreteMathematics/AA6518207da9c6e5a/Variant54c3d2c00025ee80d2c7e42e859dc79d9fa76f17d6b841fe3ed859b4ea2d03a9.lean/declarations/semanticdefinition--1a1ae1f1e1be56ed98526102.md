# SemanticDefinition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cde7c032cef0a083057344181e7d3819ca90afe7fd6df1b43fdc80bb507c8222",
  "kind": "structure",
  "lexical_name": "SemanticDefinition",
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
  "slug": "semanticdefinition--1a1ae1f1e1be56ed98526102",
  "source": {
    "blob": "045e54046a16f1a78c07baf578b9f65aa29685fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AA6518207da9c6e5a/Variant54c3d2c00025ee80d2c7e42e859dc79d9fa76f17d6b841fe3ed859b4ea2d03a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a1ae1f1e1be56ed98526102a467ddd5c094ba0d2d2e8dacc18085925570df21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AA6518207da9c6e5a/Variant54c3d2c00025ee80d2c7e42e859dc79d9fa76f17d6b841fe3ed859b4ea2d03a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cde7c032cef0a083057344181e7d3819ca90afe7fd6df1b43fdc80bb507c8222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticDefinition where
  summary : String
  parameters : Finset SemanticClause
  ambient : Finset SemanticClause
  hypotheses : Finset SemanticClause
  laws : Finset SemanticClause
  permittedInstances : Finset SemanticClause
  nonclaims : Finset SemanticClause
  normalizedDigest : Digest
  deriving DecidableEq

namespace Boundary

end Boundary

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AA6518207da9c6e5a/Variant54c3d2c00025ee80d2c7e42e859dc79d9fa76f17d6b841fe3ed859b4ea2d03a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AA6518207da9c6e5a/Variant54c3d2c00025ee80d2c7e42e859dc79d9fa76f17d6b841fe3ed859b4ea2d03a9.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `045e54046a16f1a78c07baf578b9f65aa29685fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
