# poleFree_verticalShift_eq_horizontalDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d17334a0-187b-2b9e-fd1a-3773f8842d16",
  "kind": "theorem",
  "lexical_name": "poleFree_verticalShift_eq_horizontalDifference",
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
  "slug": "polefree-verticalshift-eq-horizontaldifference--7b7e3e7ec1ed21c410605df5",
  "source": {
    "blob": "78d1aed479a28b8b71a45d3149deceff5d89eba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b7e3e7ec1ed21c410605df551e1469fff6520eb5be84db985b4bfbc59b70393",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17334a0-187b-2b9e-fd1a-3773f8842d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleFree_verticalShift_eq_horizontalDifference
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleVerticalIntegral f z w w.re -
        rectangleVerticalIntegral f z w z.re =
      rectangleHorizontalIntegral f z w w.im -
        rectangleHorizontalIntegral f z w z.im :=
  rectangleVerticalShift_eq_horizontalDifference f z w hf

/-- Stable adapter for compact finiteness of the rectangle divisor. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78d1aed479a28b8b71a45d3149deceff5d89eba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
