# rectangleBoundaryIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf1a41f91d53fe4a989865f080630f5ff4f584dfbf08c0f52007a42cce88db71",
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
  "slug": "rectangleboundaryintegral--f2d7620a16faa0e193e0b819",
  "source": {
    "blob": "6b3243cd547eb2f1ae83a33f297d53e778f28df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2d7620a16faa0e193e0b819319debfdab706e40edef307f0ab564e5972c7e63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf1a41f91d53fe4a989865f080630f5ff4f584dfbf08c0f52007a42cce88db71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

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
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3243cd547eb2f1ae83a33f297d53e778f28df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
