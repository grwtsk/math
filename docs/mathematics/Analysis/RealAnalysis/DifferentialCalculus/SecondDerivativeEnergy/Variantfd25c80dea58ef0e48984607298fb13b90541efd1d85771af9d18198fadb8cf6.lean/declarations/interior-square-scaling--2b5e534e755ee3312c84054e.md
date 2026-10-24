# interior_square_scaling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d90ac3a-e582-d7e9-6894-7498abfcc5d6",
  "kind": "theorem",
  "lexical_name": "interior_square_scaling",
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
  "slug": "interior-square-scaling--2b5e534e755ee3312c84054e",
  "source": {
    "blob": "5bf2fbde2adca038dd50292cf84b0dee6744292f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b5e534e755ee3312c84054e1bc325a860c01acb489d6acef9dca8463975690c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d90ac3a-e582-d7e9-6894-7498abfcc5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem interior_square_scaling (A x : ℝ) (hA : 1 ≤ A) :
    normalizedSecondInterior A x ^ 2 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) ^ 2 /
        (A * sourceNormalization A) := by
  have factor : normalizedSecondInterior A x =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) /
        (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
    dsimp [normalizedSecondInterior, fourthInterior, secondInterior, unitSecond, unitFourth]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [factor, div_pow, mul_pow, Real.sq_sqrt (by linarith : 0 ≤ A),
    Real.sq_sqrt (source_normalization_pos A hA).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf2fbde2adca038dd50292cf84b0dee6744292f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
