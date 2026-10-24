# Isometry.preimage_perpBisector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1776c161-c8bd-04c0-a70d-ef1ae8c4f8b7",
  "kind": "theorem",
  "lexical_name": "Isometry.preimage_perpBisector",
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
  "slug": "isometry-preimage-perpbisector--e1aeba7df60ffb12c38bed69",
  "source": {
    "blob": "fddeb8958b65578f4abf112a206f09df8038b690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 143,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1aeba7df60ffb12c38bed69bfd8e71ee7da14c70284553fc0cdecd4b11c2f4c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1776c161-c8bd-04c0-a70d-ef1ae8c4f8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Isometry.preimage_perpBisector {f : P → P'} (h : Isometry f) (p₁ p₂ : P) :
    f ⁻¹' (perpBisector (f p₁) (f p₂)) = perpBisector p₁ p₂ := by
  ext x; simp [mem_perpBisector_iff_dist_eq, h.dist_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddeb8958b65578f4abf112a206f09df8038b690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
