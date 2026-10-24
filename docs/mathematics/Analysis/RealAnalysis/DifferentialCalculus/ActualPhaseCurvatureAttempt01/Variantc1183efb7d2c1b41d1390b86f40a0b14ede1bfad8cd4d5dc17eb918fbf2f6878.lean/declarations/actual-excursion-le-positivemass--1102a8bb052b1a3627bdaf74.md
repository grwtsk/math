# actual_excursion_le_positiveMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30dbaae9-4c23-62d5-943d-1663fefa7827",
  "kind": "theorem",
  "lexical_name": "actual_excursion_le_positiveMass",
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
  "slug": "actual-excursion-le-positivemass--1102a8bb052b1a3627bdaf74",
  "source": {
    "blob": "025d49188981db7cceb3e1be1d8638f7ed17c308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1102a8bb052b1a3627bdaf74e0d5482f65f019be894a8cc608c739002ffe0a7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30dbaae9-4c23-62d5-943d-1663fefa7827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_excursion_le_positiveMass {A u : ℝ} (hA : 1≤A)
    (hu : u∈Icc (0:ℝ) (2*A)) :
    criticalPrimeTest A u-1≤positiveMass A := by
  have hp : 0<A := by linarith
  have hd := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hFTC := intervalIntegral.integral_deriv_eq_sub
    (fun x _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) x))
    (hd.intervalIntegrable (μ:=volume) 0 u)
  rw [criticalPrimeTest_at_zero A hA] at hFTC
  have hm := intervalIntegral.integral_mono_on hu.1
    (hd.intervalIntegrable (μ:=volume) 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) 0 u)
    (fun x _ => le_max_left (deriv (criticalPrimeTest A) x) 0)
  have ha := intervalIntegral.integral_add_adjacent_intervals
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) u (2*A))
  have hn := intervalIntegral.integral_nonneg_of_forall (μ:=volume) hu.2
    (positiveSlope_nonneg A)
  change _≤∫ x in 0..2*A,positiveSlope A x
  linarith

/-- On an open strict negative-slope phase, the complete paired derivative is exactly
minus the actual mass ratio times g''. No seam derivative is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025d49188981db7cceb3e1be1d8638f7ed17c308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
