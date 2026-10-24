# isCompact_symm_image_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:772e2afd-c604-396b-810a-9e659727632e",
  "kind": "theorem",
  "lexical_name": "isCompact_symm_image_closedBall",
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
  "slug": "iscompact-symm-image-closedball--1dc726908e9bfe41ea4cb02e",
  "source": {
    "blob": "bd0b41c6fb435d8a47431b66915b362933ad48d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 197,
    "path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dc726908e9bfe41ea4cb02eee64f5f54c242a7a982988ccd2fa1602c2abc0f5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:772e2afd-c604-396b-810a-9e659727632e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_symm_image_closedBall :
    IsCompact ((extChartAt I c).symm '' (closedBall (extChartAt I c c) f.rOut ∩ range I)) :=
  ((isCompact_closedBall _ _).inter_right I.isClosed_range).image_of_continuousOn <|
    (continuousOn_extChartAt_symm _).mono f.closedBall_subset

end FiniteDimensional

/-- Given a smooth bump function `f : SmoothBumpFunction I c`, the closed ball of radius `f.R` is
known to include the support of `f`. These closed balls (in the model normed space `E`) intersected
with `Set.range I` form a basis of `𝓝[range I] (extChartAt I c c)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd0b41c6fb435d8a47431b66915b362933ad48d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
