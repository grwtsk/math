# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb0a5f5b66c8b670130c42afdf388eda13e2dfeee4ea02ff5ae5c06125aa4bdb",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cdc9448eb0241c3c39f8a98b",
  "source": {
    "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 339,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdc9448eb0241c3c39f8a98b01834c2d4625c7b76a560d28181cc4f63f534429",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb0a5f5b66c8b670130c42afdf388eda13e2dfeee4ea02ff5ae5c06125aa4bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AffineSpace (ι → k) (ι → k) := Pi.instAddTorsor

variable (k)

/-- A weighted sum of the results of subtracting a default base point
from the given points, added to that base point, as an affine map on
the weights.  This is intended to be used when the sum of the weights
is 1, in which case it is an affine combination (barycenter) of the
points with the given weights; that condition is specified as a
hypothesis on those lemmas that require it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09b52d58651d9ae49fbb7b4571b28f367a6007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
