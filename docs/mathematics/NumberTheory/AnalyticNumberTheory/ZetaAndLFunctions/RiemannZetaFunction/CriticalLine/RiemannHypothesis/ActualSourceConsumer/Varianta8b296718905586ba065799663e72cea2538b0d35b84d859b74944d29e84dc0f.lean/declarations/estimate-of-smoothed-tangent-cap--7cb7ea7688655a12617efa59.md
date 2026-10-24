# estimate_of_smoothed_tangent_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59c917b5-3081-78b1-4f63-52c655ea60b6",
  "kind": "theorem",
  "lexical_name": "estimate_of_smoothed_tangent_cap",
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
  "slug": "estimate-of-smoothed-tangent-cap--7cb7ea7688655a12617efa59",
  "source": {
    "blob": "d6b810388ea643d2b948abfbe9f05da63b7fdde4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Varianta8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cb7ea7688655a12617efa59e3bfeccca8ff00a61e8e49c5db21d311bfee128a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Varianta8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c917b5-3081-78b1-4f63-52c655ea60b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_smoothed_tangent_cap
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ)
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊ +
        smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensated_tail
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B, ?_⟩
  intro A hRA
  have he := (abs_le.mp
    (compensatedSourceSum_smoothed_tangent_error μ (hR.trans hRA) hy hmean hy2)).2
  linarith [hB A hRA]


end FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Varianta8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Varianta8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b810388ea643d2b948abfbe9f05da63b7fdde4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
