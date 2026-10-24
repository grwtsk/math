# upperSmallSum_square_mul_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1c4f3b6-6d2e-96ec-50f0-0b42f516f8ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0887410-6231-a3ee-23f4-24703178abd3",
  "kind": "theorem",
  "lexical_name": "upperSmallSum_square_mul_integrableOn",
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
  "slug": "uppersmallsum-square-mul-integrableon--bbdc50a5a2e73013ef842b03",
  "source": {
    "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbdc50a5a2e73013ef842b034304418a5f1dd981cee9aed858f147541a2136b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0887410-6231-a3ee-23f4-24703178abd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSmallSum_square_mul_integrableOn (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) := by
  let W : ℝ := ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)|
  apply hg.bdd_mul ((upperSmallSum_measurable N).pow_const 2).aestronglyMeasurable
    (c := W ^ 2)
  filter_upwards [] with x
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  have hs : |upperSmallSum N x| ≤ W := upperSmallSum_abs_le N x
  have hW : 0 ≤ W := sum_nonneg (fun _ _ ↦ abs_nonneg _)
  have hp := mul_nonneg (sub_nonneg.mpr hs)
    (add_nonneg hW (abs_nonneg (upperSmallSum N x)))
  nlinarith [sq_abs (upperSmallSum N x)]

/-- The complete signed triangular contribution is integrable before its integral is split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9828b34de7f2f3b8c0121a9a50a1c208474ff83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
