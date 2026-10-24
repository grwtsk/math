# etalePretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f69ce29cf6623b9fd13ace9a91a6c16426d8e0e29c3d87d7edc9292327c65af",
  "kind": "def",
  "lexical_name": "etalePretopology",
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
  "slug": "etalepretopology--7c1bcc9b026539b62b6fac19",
  "source": {
    "blob": "20113b23ee739db88e88fcdbff841fee67671a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 44,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c1bcc9b026539b62b6fac198be024f07acbdae56778a8675617dd27b231f165",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f69ce29cf6623b9fd13ace9a91a6c16426d8e0e29c3d87d7edc9292327c65af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etalePretopology : Pretopology Scheme.{u} :=
  pretopology @Etale

/-- Big étale site: the étale topology on the category of schemes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20113b23ee739db88e88fcdbff841fee67671a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
