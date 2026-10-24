# ContMDiff.inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:979b6871-41d5-e707-daf9-e60f9a724957",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be2b1284-fc0b-9d09-a1cd-0c6222c34412",
  "kind": "lemma",
  "lexical_name": "ContMDiff.inl",
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
  "slug": "contmdiff-inl--b6facc0a189cb713dacb2a9f",
  "source": {
    "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 402,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6facc0a189cb713dacb2a9f29fa1d50bd9be6db4a9bd17011eba7b36076dc3a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be2b1284-fc0b-9d09-a1cd-0c6222c34412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.inl : ContMDiff I I n (@Sum.inl M M') := by
  intro x
  rw [contMDiffAt_iff]
  refine ⟨continuous_inl.continuousAt, ?_⟩
  -- In extended charts, .inl equals the identity (on the chart sources).
  apply contDiffWithinAt_id.congr_of_eventuallyEq; swap
  · simp [ChartedSpace.sum_chartAt_inl]
    congr
    apply Sum.inl_injective.extend_apply (chartAt _ x)
  set C := chartAt H x with hC
  have : I.symm ⁻¹' C.target ∩ range I ∈ 𝓝[range I] (extChartAt I x) x := by
    rw [← I.image_eq (chartAt H x).target]
    exact (chartAt H x).extend_image_target_mem_nhds (mem_chart_source _ x)
  filter_upwards [this] with y hy
  simp [extChartAt, sum_chartAt_inl, ← hC, Sum.inl_injective.extend_apply C, C.right_inv hy.1,
    I.right_inv hy.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed0ed2f2a61121aba5eef7f8b5cd7d025026416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
