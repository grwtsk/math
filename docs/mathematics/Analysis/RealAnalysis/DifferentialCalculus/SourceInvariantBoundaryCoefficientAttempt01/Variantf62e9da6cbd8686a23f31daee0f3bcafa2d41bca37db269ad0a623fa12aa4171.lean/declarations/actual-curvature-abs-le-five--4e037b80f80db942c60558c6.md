# actual_curvature_abs_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b058d046-f927-4de2-2b69-939ce9470e53",
  "kind": "theorem",
  "lexical_name": "actual_curvature_abs_le_five",
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
  "slug": "actual-curvature-abs-le-five--4e037b80f80db942c60558c6",
  "source": {
    "blob": "1ca03033a87aa9722ef8a1c3c769a391395f9059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt01/Variantf62e9da6cbd8686a23f31daee0f3bcafa2d41bca37db269ad0a623fa12aa4171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e037b80f80db942c60558c69562f71b0b09670b70fe0178e0ed5845a4525be9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt01/Variantf62e9da6cbd8686a23f31daee0f3bcafa2d41bca37db269ad0a623fa12aa4171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b058d046-f927-4de2-2b69-939ce9470e53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_curvature_abs_le_five (A t : ℝ) (hA : 91 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 5 / A ^ 2 := by
  have h := actual_correlation_second_deriv_abs_le_tail (by norm_num : (1 : ℝ) ≤ 91) hA t
  exact h.trans (div_le_div_of_nonneg_right tailEnergyCoefficient_ninety_one_lt_five.le
    (sq_nonneg A))

/-- A centered first derivative retains the exact curvature scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt01/Variantf62e9da6cbd8686a23f31daee0f3bcafa2d41bca37db269ad0a623fa12aa4171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt01/Variantf62e9da6cbd8686a23f31daee0f3bcafa2d41bca37db269ad0a623fa12aa4171.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca03033a87aa9722ef8a1c3c769a391395f9059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
