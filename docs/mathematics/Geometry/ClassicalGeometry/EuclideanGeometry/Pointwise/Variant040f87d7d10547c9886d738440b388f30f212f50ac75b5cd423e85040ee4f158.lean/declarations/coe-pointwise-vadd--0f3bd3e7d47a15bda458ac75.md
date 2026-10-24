# coe_pointwise_vadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6fb114d-046e-9ebb-3c39-69c422fda8e7",
  "kind": "lemma",
  "lexical_name": "coe_pointwise_vadd",
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
  "slug": "coe-pointwise-vadd--0f3bd3e7d47a15bda458ac75",
  "source": {
    "blob": "da3b429b1f5d6b76124b08e21e2ce2dc07afdf11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f3bd3e7d47a15bda458ac758b5374101f3bd5e4a679fd8912e0c8f9f755f273",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6fb114d-046e-9ebb-3c39-69c422fda8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma coe_pointwise_vadd (v : V) (s : AffineSubspace k P) :
    ((v +ᵥ s : AffineSubspace k P) : Set P) = v +ᵥ (s : Set P) := rfl

/-- The additive action on an affine subspace corresponding to applying the action to every element.

This is available as an instance in the `Pointwise` locale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3b429b1f5d6b76124b08e21e2ce2dc07afdf11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
