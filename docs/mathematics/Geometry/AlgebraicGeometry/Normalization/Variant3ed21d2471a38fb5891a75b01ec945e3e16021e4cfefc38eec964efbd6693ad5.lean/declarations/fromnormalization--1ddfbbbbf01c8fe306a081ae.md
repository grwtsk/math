# fromNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d42800c24d7addae609c3a9ba2a277bfa4ae5039e59d025bebebde423a4ce3b",
  "kind": "def",
  "lexical_name": "fromNormalization",
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
  "slug": "fromnormalization--1ddfbbbbf01c8fe306a081ae",
  "source": {
    "blob": "94f400bbdee7c7f9ab0e514f588e78c5fb994b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 170,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ddfbbbbf01c8fe306a081ae05065fc32274c62ef0f1f5bf4549958292251d8f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d42800c24d7addae609c3a9ba2a277bfa4ae5039e59d025bebebde423a4ce3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromNormalization : f.normalization ⟶ Y :=
  f.normalizationGlueData.toBase

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f400bbdee7c7f9ab0e514f588e78c5fb994b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
