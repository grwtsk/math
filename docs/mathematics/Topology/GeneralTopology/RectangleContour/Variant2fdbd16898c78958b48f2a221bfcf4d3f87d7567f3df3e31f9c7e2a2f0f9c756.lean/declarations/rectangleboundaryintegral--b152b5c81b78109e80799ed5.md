# rectangleBoundaryIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca8f4cb7cb1768fde5f6bf4adde3b564cdaaf5976de7c1c62f5cc9b3985e094a",
  "kind": "def",
  "lexical_name": "rectangleBoundaryIntegral",
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
  "slug": "rectangleboundaryintegral--b152b5c81b78109e80799ed5",
  "source": {
    "blob": "fda4c6a2556d5fca237f3d151e62f20b984209b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b152b5c81b78109e80799ed5339bc507f56d031f689bc39e8a4450bf66995f6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca8f4cb7cb1768fde5f6bf4adde3b564cdaaf5976de7c1c62f5cc9b3985e094a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rectangleBoundaryIntegral
    (f : ℂ → ℂ) (z w : ℂ) : ℂ :=
  rectangleHorizontalIntegral f z w z.im -
      rectangleHorizontalIntegral f z w w.im +
    rectangleVerticalIntegral f z w w.re -
      rectangleVerticalIntegral f z w z.re

/-- Cauchy--Goursat on a closed rectangle, exposed in the stable Surface edge
API. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda4c6a2556d5fca237f3d151e62f20b984209b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
