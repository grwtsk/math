# sum_reflectionCircumcenterWeightsWithCircumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8ee91a6-7ccc-7751-ca3c-8864664b14b4",
  "kind": "theorem",
  "lexical_name": "sum_reflectionCircumcenterWeightsWithCircumcenter",
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
  "slug": "sum-reflectioncircumcenterweightswithcircumcenter--01dce78ced3283037cdb3531",
  "source": {
    "blob": "fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 686,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01dce78ced3283037cdb3531f5eb54d01e3a8a6d0c65fe64a72c13e55537d028",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ee91a6-7ccc-7751-ca3c-8864664b14b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_reflectionCircumcenterWeightsWithCircumcenter {n : ℕ} {i₁ i₂ : Fin (n + 1)}
    (h : i₁ ≠ i₂) : ∑ i, reflectionCircumcenterWeightsWithCircumcenter i₁ i₂ i = 1 := by
  simp_rw [sum_pointsWithCircumcenter, reflectionCircumcenterWeightsWithCircumcenter, sum_ite,
    sum_const, filter_or, filter_eq']
  rw [card_union_eq]
  · simp
  · simpa only [if_true, mem_univ, disjoint_singleton] using h
#align affine.simplex.sum_reflection_circumcenter_weights_with_circumcenter Affine.Simplex.sum_reflectionCircumcenterWeightsWithCircumcenter

/-- The reflection of the circumcenter of a simplex in an edge, in
terms of `pointsWithCircumcenter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
