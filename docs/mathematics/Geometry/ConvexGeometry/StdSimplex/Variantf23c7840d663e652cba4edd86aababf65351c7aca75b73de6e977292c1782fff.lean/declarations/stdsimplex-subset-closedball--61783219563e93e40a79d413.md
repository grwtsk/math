# stdSimplex_subset_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db85eae-049c-348f-2413-77d3d2b6fe3e",
  "kind": "theorem",
  "lexical_name": "stdSimplex_subset_closedBall",
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
  "slug": "stdsimplex-subset-closedball--61783219563e93e40a79d413",
  "source": {
    "blob": "80a743ee6440d4b3e08ce22f3a84194fedda4cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 242,
    "path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61783219563e93e40a79d4139b44ea32a0f928e8da567d6c1144e565a105b6ac",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db85eae-049c-348f-2413-77d3d2b6fe3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdSimplex_subset_closedBall : stdSimplex ℝ ι ⊆ Metric.closedBall 0 1 := fun f hf ↦ by
  rw [Metric.mem_closedBall, dist_pi_le_iff zero_le_one]
  intro x
  rw [Pi.zero_apply, Real.dist_0_eq_abs, abs_of_nonneg <| hf.1 x]
  exact (mem_Icc_of_mem_stdSimplex hf x).2

variable (ι)

/-- `stdSimplex ℝ ι` is bounded. -/
@[deprecated StdSimplex.isBounded_range_toFun_comp_weights (since := "2026-08-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80a743ee6440d4b3e08ce22f3a84194fedda4cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
