# estimate_of_tangent_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8153fb7-adc3-54a5-8cd7-8bd1335562e0",
  "kind": "theorem",
  "lexical_name": "estimate_of_tangent_cap",
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
  "slug": "estimate-of-tangent-cap--9693ea17b96544e915a78855",
  "source": {
    "blob": "35a30b2af2568cf1d164f3f85d58ed9407bf3be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantc3ca87da89e4c4dce822e61370a6996bc487249b37940add43a16441e82b0034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9693ea17b96544e915a788556bc5ccc56660f128c66ac6593bf96a458b06c6a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantc3ca87da89e4c4dce822e61370a6996bc487249b37940add43a16441e82b0034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8153fb7-adc3-54a5-8cd7-8bd1335562e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_tangent_cap (R B : ℝ) (hR : 200 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → SourceKapitzaSquareShell.tangentReadout A
      ⌊Real.exp (2 * A)⌋₊ ≤ B) : CorrelationAssembly.EstimateObligation := by
  apply SourceHybridQuadrature.estimate_of_compensated_cap R
    (B + SourceKapitzaSquareShell.tangentErrorConstant / R ^ 2) hR
  intro A hRA
  have hA := hR.trans hRA
  have he := (abs_le.mp (compensatedSourceSum_sub_tangent_abs_le A hA)).2
  have hR0 : 0 < R := by linarith
  have herror := div_le_div_of_nonneg_left tangentErrorConstant_nonneg
    (sq_pos_of_pos hR0) (show R ^ 2 ≤ A ^ 2 by nlinarith)
  linarith [hcap A hRA]

/-- Curvature five is used in native C_A coordinates, without an A^9 rescaling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantc3ca87da89e4c4dce822e61370a6996bc487249b37940add43a16441e82b0034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantc3ca87da89e4c4dce822e61370a6996bc487249b37940add43a16441e82b0034.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a30b2af2568cf1d164f3f85d58ed9407bf3be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
