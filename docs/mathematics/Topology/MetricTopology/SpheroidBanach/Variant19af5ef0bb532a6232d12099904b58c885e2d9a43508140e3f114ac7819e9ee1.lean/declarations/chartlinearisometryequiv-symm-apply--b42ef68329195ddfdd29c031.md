# chartLinearIsometryEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bf96935-73e5-1bd3-a8ba-bf6c1474212f",
  "kind": "theorem",
  "lexical_name": "chartLinearIsometryEquiv_symm_apply",
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
  "slug": "chartlinearisometryequiv-symm-apply--b42ef68329195ddfdd29c031",
  "source": {
    "blob": "e4974d23a26c4924f77d0b2687862a631cf2e31b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b42ef68329195ddfdd29c031aeb94988a9b0eb1b9654b8d0a658d01779d5b512",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf96935-73e5-1bd3-a8ba-bf6c1474212f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chartLinearIsometryEquiv_symm_apply
    (u : EuclideanSpace ℝ ι) :
    (chartLinearIsometryEquiv (a := a) (c := c) (ha := ha) (hc := hc)).symm u =
      ofCoordinates (a := a) (c := c) (ha := ha) (hc := hc) u :=
  rfl

/-- Completeness is transported from finite-dimensional Euclidean space
through the chart isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4974d23a26c4924f77d0b2687862a631cf2e31b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
