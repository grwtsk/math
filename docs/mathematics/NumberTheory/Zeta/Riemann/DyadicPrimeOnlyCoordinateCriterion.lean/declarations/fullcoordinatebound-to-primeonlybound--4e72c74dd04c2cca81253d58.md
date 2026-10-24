# fullCoordinateBound_to_primeOnlyBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccaf9b50-00e9-7af8-96c2-cf32641b0eca",
  "kind": "theorem",
  "lexical_name": "fullCoordinateBound_to_primeOnlyBound",
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
  "slug": "fullcoordinatebound-to-primeonlybound--4e72c74dd04c2cca81253d58",
  "source": {
    "blob": "5674832ef1b8d76fafa2a9d4795669c2e55457e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e72c74dd04c2cca81253d58d66d15eacf299cc5ce54ae4dabd47c75d5995095",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccaf9b50-00e9-7af8-96c2-cf32641b0eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullCoordinateBound_to_primeOnlyBound
    (hF : AllDyadicArithmeticFourierCoordinateBound) :
    AllDyadicPrimeOnlyFourierCoordinateBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hfull⟩ := hF η hη
  obtain ⟨K, hK, hres⟩ := higherPrimePowerResidual_le_targetScale
  let D : ℝ := 2 * C + 2 * K
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj N
  let X := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hFstage :
      fullGreenArithmeticCoordinateStage X N ≤
        C * Real.rpow (X : ℝ) (-1 + η) :=
    hfull j hj N
  have hRstage :
      higherPrimePowerFullWitnessEnergy X ≤
        K * Real.rpow (X : ℝ) (-1 + η) :=
    hres hX hη
  have hcompare :=
    primeOnlyStage_le_two_full_add_residual X N
  have hpow :
      0 ≤ Real.rpow (X : ℝ) (-1 + η) :=
    Real.rpow_nonneg (Nat.cast_nonneg X) _
  dsimp [D, X] at *
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5674832ef1b8d76fafa2a9d4795669c2e55457e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
