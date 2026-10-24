# actualXiComplexLaplace_eventual_initial_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edad92a0-a746-05c7-16c8-3fc7b393fb8b",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_eventual_initial_norm_bound",
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
  "slug": "actualxicomplexlaplace-eventual-initial-norm-bound--1730abc8f294693d0679fb18",
  "source": {
    "blob": "4f567e49e3d18f9f1a7356fdfa4dde87c0546b4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 266,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1730abc8f294693d0679fb1837ba79b63df8c77dd24cce6adc012dff7c62f45f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edad92a0-a746-05c7-16c8-3fc7b393fb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_eventual_initial_norm_bound :
    ∀ᶠ z in 𝓝[{z : ℂ | 1 / 2 < z.re}] (1 / 2),
      ‖actualXiComplexLaplace z‖ ≤ ‖2 * actualXiSevenPoleValue‖ + 1 := by
  filter_upwards [(Metric.tendsto_nhds.mp actualXiComplexLaplace_tendsto_initial_boundary) 1
    (by norm_num)] with z hz
  exact norm_le_norm_add_const_of_dist_le hz.le

end
end FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f567e49e3d18f9f1a7356fdfa4dde87c0546b4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
