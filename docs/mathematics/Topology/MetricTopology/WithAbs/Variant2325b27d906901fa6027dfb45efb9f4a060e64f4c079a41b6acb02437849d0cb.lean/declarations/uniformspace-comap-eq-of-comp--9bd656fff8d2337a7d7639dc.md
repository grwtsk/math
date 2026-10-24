# uniformSpace_comap_eq_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba9c389b273cccf54490f0258342edb9d322049b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e00f5ee-4895-1fa8-07d5-5acc3a592df7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28681a42-0fa8-7c50-74c1-a50d33ff72e2",
  "kind": "theorem",
  "lexical_name": "uniformSpace_comap_eq_of_comp",
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
  "slug": "uniformspace-comap-eq-of-comp--9bd656fff8d2337a7d7639dc",
  "source": {
    "blob": "ba9c389b273cccf54490f0258342edb9d322049b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bd656fff8d2337a7d7639dc4b15de9aee1d2c55be104e7311046ab54986aa4b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28681a42-0fa8-7c50-74c1-a50d33ff72e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformSpace_comap_eq_of_comp (h : ∀ x, ‖f x‖ = v x) :
    UniformSpace.comap f inferInstance = (normedField v).toUniformSpace := by
  simp only [← pseudoMetricSpace_induced_of_comp h, PseudoMetricSpace.toUniformSpace]

/-- If the absolute value `v` factors through an embedding `f` into a normed field, then
`f` is uniform inducing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9c389b273cccf54490f0258342edb9d322049b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
