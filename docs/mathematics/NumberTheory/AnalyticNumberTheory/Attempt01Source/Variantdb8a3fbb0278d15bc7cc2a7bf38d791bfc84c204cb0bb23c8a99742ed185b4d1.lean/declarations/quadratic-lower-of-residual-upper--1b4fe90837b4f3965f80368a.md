# quadratic_lower_of_residual_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46c0740-6e24-e42a-97dd-3b69672ddcf9",
  "kind": "theorem",
  "lexical_name": "quadratic_lower_of_residual_upper",
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
  "slug": "quadratic-lower-of-residual-upper--1b4fe90837b4f3965f80368a",
  "source": {
    "blob": "4fb8c49e46edb6e31c7a728ec9adeae1a302adc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b4fe90837b4f3965f80368a22bab3a0f29406b06ca9d0ba5cc68a7b78cb8ce5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46c0740-6e24-e42a-97dd-3b69672ddcf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_lower_of_residual_upper (B A : ℝ) (hA : 1 ≤ A)
    (hres : mertensResidual A ≤ B) :
    archimedeanMultiplier 0 - 2 * B ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hprime : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
    rw [primePowerContribution_eq_closedPrimeMoment A hA,
      mertensResidual_eq_closedPrimeMoment A hA]
  unfold sourceQuadraticValue
  rw [hprime]
  linarith

/-- The existing strict finite-prefix budget is used at the same calibrated real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb8c49e46edb6e31c7a728ec9adeae1a302adc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
