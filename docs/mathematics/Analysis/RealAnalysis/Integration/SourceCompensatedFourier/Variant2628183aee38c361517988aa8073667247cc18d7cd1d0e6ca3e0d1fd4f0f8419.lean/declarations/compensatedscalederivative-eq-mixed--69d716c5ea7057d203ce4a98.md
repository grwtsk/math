# compensatedScaleDerivative_eq_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d248dc-afd7-8c51-4889-449ae7c52206",
  "kind": "theorem",
  "lexical_name": "compensatedScaleDerivative_eq_mixed",
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
  "slug": "compensatedscalederivative-eq-mixed--69d716c5ea7057d203ce4a98",
  "source": {
    "blob": "0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 510,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d716c5ea7057d203ce4a98af31ecdd6fee9d84d14cadb0c58fbdfd0f0819c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d248dc-afd7-8c51-4889-449ae7c52206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedScaleDerivative_eq_mixed (A : ℝ) :
    compensatedScaleDerivative A =
      2 * (⟪scaleDerivativeState A,
        compensatedInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [compensatedInteraction_mixed_real, Finset.mul_sum]
  unfold compensatedScaleDerivative closedPrimeWeightScaleDerivative compensatedCoefficient
  apply Finset.sum_congr rfl
  intro n _
  rw [correlationScaleDerivative_eq_mixed]
  ring

/-- The signed shape derivative remains continuous across all literal integer births. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
