# all_real_lower_of_exact_head_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66cc246f-1ea6-e920-987b-9a7e4f2a468a",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_exact_head_mean",
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
  "slug": "all-real-lower-of-exact-head-mean--379c518679082bde6733644c",
  "source": {
    "blob": "f8584b9e27f558ab72f639d7001c16a3924c9b21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant3f64442de9ea91b059b23fffb729987259c97acf6a1954105d9b5abd812f278c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:379c518679082bde6733644ce70fc86eb13b4264d7dc37dff09c9a8020123b91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant3f64442de9ea91b059b23fffb729987259c97acf6a1954105d9b5abd812f278c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66cc246f-1ea6-e920-987b-9a7e4f2a468a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_exact_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 -
          2 * exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R)) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ _ (le_max_left _ _)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant3f64442de9ea91b059b23fffb729987259c97acf6a1954105d9b5abd812f278c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant3f64442de9ea91b059b23fffb729987259c97acf6a1954105d9b5abd812f278c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8584b9e27f558ab72f639d7001c16a3924c9b21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
