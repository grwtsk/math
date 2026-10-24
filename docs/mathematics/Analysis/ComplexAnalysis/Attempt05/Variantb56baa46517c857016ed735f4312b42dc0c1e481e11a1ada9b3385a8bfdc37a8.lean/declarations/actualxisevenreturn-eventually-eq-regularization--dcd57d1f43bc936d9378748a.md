# actualXiSevenReturn_eventually_eq_regularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc372d6-11a5-1120-b916-4c6b274edbdd",
  "kind": "theorem",
  "lexical_name": "actualXiSevenReturn_eventually_eq_regularization",
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
  "slug": "actualxisevenreturn-eventually-eq-regularization--dcd57d1f43bc936d9378748a",
  "source": {
    "blob": "4f567e49e3d18f9f1a7356fdfa4dde87c0546b4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 192,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcd57d1f43bc936d9378748af8509071f4694fc6410b88bf6190440eb88c6fc5",
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

Occurrence: `result:8cc372d6-11a5-1120-b916-4c6b274edbdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenReturn_eventually_eq_regularization :
    actualXiSevenReturn =ᶠ[𝓝[≠] 1] actualXiSevenReturnRegularization := by
  have hr := actualZetaPoleCleared_analyticAt_one.continuousAt.eventually_ne
    (by rw [actualZetaPoleCleared_at_one]; norm_num : actualZetaPoleCleared 1 ≠ 0)
  filter_upwards [hr.filter_mono nhdsWithin_le_nhds,
    eventually_ne_nhdsWithin (one_ne_zero : (1 : ℂ) ≠ 0), self_mem_nhdsWithin] with s hsr hs0 hs1
  have hs1' : s ≠ 1 := hs1
  have hsz : riemannZeta s ≠ 0 := by
    rw [actualZetaPoleCleared_eq hs0 hs1'] at hsr
    exact (mul_ne_zero_iff.mp hsr).2
  exact actualXiSevenReturn_eq_regularization hs0 hs1' hsz

/-- Both actual poles cancel in the complete return along the genuine punctured neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantb56baa46517c857016ed735f4312b42dc0c1e481e11a1ada9b3385a8bfdc37a8.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f567e49e3d18f9f1a7356fdfa4dde87c0546b4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
