# evenBasis_consecutive_det_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7c2dde5-735d-b315-eaf4-4e26eb3138ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e84a9221-a2bf-2904-8e31-b982286e24b5",
  "kind": "theorem",
  "lexical_name": "evenBasis_consecutive_det_nonnegative",
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
  "slug": "evenbasis-consecutive-det-nonnegative--84b4356e75efab67420cebe2",
  "source": {
    "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b4356e75efab67420cebe2dd3222d13783c9a0844fbc4541a3b3962971a7fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84a9221-a2bf-2904-8e31-b982286e24b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenBasis_consecutive_det_nonnegative {k : ℕ} (nodes : Fin k → ℝ)
    (hmono : Monotone nodes) (hnodes : ∀ i, 0 ≤ nodes i) :
    0 ≤ Matrix.det (fun i j : Fin k => evenBasis j.val (nodes i)) := by
  rw [evenBasis_consecutive_det]
  apply mul_nonneg
  · exact Finset.prod_nonneg (fun j _ => inv_nonneg.mpr (by positivity))
  · apply Finset.prod_nonneg
    intro i _
    apply Finset.prod_nonneg
    intro j hj
    apply sub_nonneg.mpr
    exact pow_le_pow_left₀ (mul_nonneg (by norm_num) (hnodes i)) (by
      have hij := hmono (Finset.mem_Ioi.mp hj).le
      linarith) 2

/-- Two ordered nonnegative nodes give the expected monomial cross-product sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b830fdf8100844ce0081a040d3bbb0b54826c0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
