# primitive_correlations_weighted_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60ea5fba-e0a0-1c21-f772-a3db6eaad34b",
  "kind": "theorem",
  "lexical_name": "primitive_correlations_weighted_integrable",
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
  "slug": "primitive-correlations-weighted-integrable--79940f2bf6070bca350ae330",
  "source": {
    "blob": "dd81dbc6b0962a3f7c523f07d57f4a38b144547d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant166e9c3e1b74801c925b1745c7389f6ddaeb6dff985e000372047dba4b6cadb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79940f2bf6070bca350ae3302b4a685c10202ed6db1462d4560891086f20aadd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant166e9c3e1b74801c925b1745c7389f6ddaeb6dff985e000372047dba4b6cadb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ea5fba-e0a0-1c21-f772-a3db6eaad34b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_correlations_weighted_integrable {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationZero A s) ∧
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationOne A s) ∧
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationTwo A s) := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hc1 : ContDiff ℝ 1 (deriv (normalizedPrimitiveBump A)) := hc.deriv'
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  refine ⟨?_, ?_, ?_⟩
  · simpa only [correlation, primitiveCorrelationZero] using
      weighted_correlation_integrable (normalizedPrimitiveBump A) σ
        (weighted_compact_integrable hc.continuous hs σ)
        (weighted_compact_integrable hc.continuous hs (-σ))
  · simpa only [correlation, primitiveCorrelationOne] using
      weighted_correlation_integrable (deriv (normalizedPrimitiveBump A)) σ
        (weighted_compact_integrable hc1.continuous hs.deriv σ)
        (weighted_compact_integrable hc1.continuous hs.deriv (-σ))
  · simpa only [correlation, primitiveCorrelationTwo] using
      weighted_correlation_integrable (deriv (deriv (normalizedPrimitiveBump A))) σ
        (weighted_compact_integrable hc1.continuous_deriv_one hs.deriv.deriv σ)
        (weighted_compact_integrable hc1.continuous_deriv_one hs.deriv.deriv (-σ))

/-- Reflection gives opposite derivative-transform signs, hence the first square has a minus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant166e9c3e1b74801c925b1745c7389f6ddaeb6dff985e000372047dba4b6cadb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant166e9c3e1b74801c925b1745c7389f6ddaeb6dff985e000372047dba4b6cadb6.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd81dbc6b0962a3f7c523f07d57f4a38b144547d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
