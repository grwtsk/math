# infEdist_le_infEdist_thickening_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdd9fbbb-442d-8649-3d9e-983bb94f812e",
  "kind": "theorem",
  "lexical_name": "infEdist_le_infEdist_thickening_add",
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
  "slug": "infedist-le-infedist-thickening-add--d6059d7d3866493adc39ad36",
  "source": {
    "blob": "2c779b0c0c6bdf77953a358ae9966a8d305ad9b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 593,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant925c1743eed504a68350f4b3530eb623c9081b9d7925e65c5506a08b57981fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6059d7d3866493adc39ad365b07ae408dd5117f9e91e8784292b8fdf1ca6659",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant925c1743eed504a68350f4b3530eb623c9081b9d7925e65c5506a08b57981fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd9fbbb-442d-8649-3d9e-983bb94f812e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infEdist_le_infEdist_thickening_add :
    infEdist x s ≤ infEdist x (thickening δ s) + ENNReal.ofReal δ :=
  infEdist_le_infEdist_cthickening_add.trans <|
    add_le_add_right (infEdist_anti <| thickening_subset_cthickening _ _) _

/-- For the equality, see `thickening_thickening`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant925c1743eed504a68350f4b3530eb623c9081b9d7925e65c5506a08b57981fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant925c1743eed504a68350f4b3530eb623c9081b9d7925e65c5506a08b57981fac.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c779b0c0c6bdf77953a358ae9966a8d305ad9b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
