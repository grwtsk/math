# primePrimitiveSample_add_rankOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37eb31cbc63dccff90bb330d65b9db98258c3d36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54539801-ae89-917f-300f-b639e0a56d46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4d47d14-9f79-7713-35fc-aa96dc358b4d",
  "kind": "theorem",
  "lexical_name": "primePrimitiveSample_add_rankOne_abs_le",
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
  "slug": "primeprimitivesample-add-rankone-abs-le--2e94a1b169e2eda1a17b2c77",
  "source": {
    "blob": "37eb31cbc63dccff90bb330d65b9db98258c3d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e94a1b169e2eda1a17b2c77726f28ead4e16352b5392260383bb2aa184188ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d47d14-9f79-7713-35fc-aa96dc358b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePrimitiveSample_add_rankOne_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |primePrimitiveSample A x + sourceRankOneCoefficient A / (2 * x)| ≤
      (24 * Real.sqrt (65 / 3) / A) / Real.sqrt x := by
  rw [primePrimitiveSample, strict_sample_eq_padded A x _ hx
    (fun t ht ↦ negativePrimePrimitive_zero_right A t hA ht)]
  have hm := negativePrimePrimitive_moments A hA
  have h := FirstMomentSampling.sampling_sum_sub_firstMoment_abs_le
    (negativePrimePrimitive A) x (2 * Real.sqrt (65 / 3) / A)
    (2 * Real.sqrt (65 / 3) / A) (-sourceRankOneCoefficient A / 2)
    (⌊Real.exp (2 * A) / x⌋₊ + 1) hx (by omega)
    (negativePrimePrimitive_contDiff A hA) (negativePrimePrimitive_compact A hA)
    (fun t ↦ negativePrimePrimitive_abs_le A t hA)
    (fun t ↦ negativePrimePrimitive_derivative_abs_le A t hA) hm.1 hm.2
    (sampling_padded_endpoint_zero A x _ hx
      (fun t ht ↦ negativePrimePrimitive_zero_right A t hA ht))
  convert h using 1 <;> congr 1 <;> ring

/-- D prime is exactly C double prime minus half C prime, without a C contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37eb31cbc63dccff90bb330d65b9db98258c3d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
