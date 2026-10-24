# complex_weighted_actual_correlation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbdd2ca3-ff04-8ffc-9803-8db33aaa9583",
  "kind": "theorem",
  "lexical_name": "complex_weighted_actual_correlation_integrable",
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
  "slug": "complex-weighted-actual-correlation-integrable--552bbdae52f256485cc35d96",
  "source": {
    "blob": "a3980bfbddd947169b13e7ec987ec3316f1614cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552bbdae52f256485cc35d96d9dcf4bc6773949282f03a4d0770377759f99148",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbdd2ca3-ff04-8ffc-9803-8db33aaa9583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_actual_correlation_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) volume := by
  have hi := (complex_weighted_normalized_source_integrable hA z).integrable_convolution
    (ContinuousLinearMap.lsmul ℂ ℂ) (complex_reflected_source_integrable hA z)
  have he : (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      ((fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) ⋆[ContinuousLinearMap.lsmul ℂ ℂ]
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ))) := by
    funext t
    exact complex_weighted_actual_correlation_convolution A t z
  rw [he]
  exact hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant70c0731a78ec8a91b8482abe11443d617da83108a40aa91aa6cfa9ad85972b90.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3980bfbddd947169b13e7ec987ec3316f1614cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
