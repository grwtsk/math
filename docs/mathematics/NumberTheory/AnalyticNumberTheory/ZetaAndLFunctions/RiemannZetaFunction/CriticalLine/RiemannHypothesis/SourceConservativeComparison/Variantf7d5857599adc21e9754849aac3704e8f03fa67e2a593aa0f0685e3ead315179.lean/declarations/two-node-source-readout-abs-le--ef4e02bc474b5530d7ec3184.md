# two_node_source_readout_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8d8e795-96aa-9762-3eb2-bcf7cdd0c87e",
  "kind": "theorem",
  "lexical_name": "two_node_source_readout_abs_le",
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
  "slug": "two-node-source-readout-abs-le--ef4e02bc474b5530d7ec3184",
  "source": {
    "blob": "c424fded148cd540757faa8ed4ad0ae558d48584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 255,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef4e02bc474b5530d7ec31846f19d805208c52e7672c25566669cdca40e8a804",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8d8e795-96aa-9762-3eb2-bcf7cdd0c87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_node_source_readout_abs_le {A : ℝ} (hA : 200 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A 0 -
      sourceCorrelation explicitSecondDerivative A 2 +
        2 * deriv (sourceCorrelation explicitSecondDerivative A) 0| ≤ 10 / A ^ 2 := by
  have h := sourceCorrelation_linear_taylor_bound_five hA 0 2
  have he : sourceCorrelation explicitSecondDerivative A 0 -
      sourceCorrelation explicitSecondDerivative A 2 +
        2 * deriv (sourceCorrelation explicitSecondDerivative A) 0 =
      -(sourceCorrelation explicitSecondDerivative A (0 + 2) -
        sourceCorrelation explicitSecondDerivative A 0 -
          2 * deriv (sourceCorrelation explicitSecondDerivative A) 0) := by
    simp only [zero_add]
    ring
  rw [he, abs_neg]
  convert h using 1
  ring

/-- Existing exact physical cell transport is consumed at the literal real source cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c424fded148cd540757faa8ed4ad0ae558d48584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
