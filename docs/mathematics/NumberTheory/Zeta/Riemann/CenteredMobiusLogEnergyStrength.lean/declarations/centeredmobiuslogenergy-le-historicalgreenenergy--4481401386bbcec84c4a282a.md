# centeredMobiusLogEnergy_le_historicalGreenEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:633e0816-c208-6162-a6b2-b63684e5de4a",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogEnergy_le_historicalGreenEnergy",
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
  "slug": "centeredmobiuslogenergy-le-historicalgreenenergy--4481401386bbcec84c4a282a",
  "source": {
    "blob": "66cf533b7c7ef6104f2accf3856fa9f99e896b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4481401386bbcec84c4a282ab403744428c4f80a57c668fa8779ab07208419db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:633e0816-c208-6162-a6b2-b63684e5de4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogEnergy_le_historicalGreenEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    centeredMobiusLogFourierEnergy X ≤
      2 * greenEnergy X + 2 * greenFullResidualEnergyBound X := by
  have hGsum :
      Summable (fun k : ℤ =>
        if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) := by
    have hmem := thinHistoricalGreenResidual_memLp X
    have hs := thinHistoricalGreenFourier_parseval_hasSum X hmem
    have hcoeff := fun k =>
      thinGreenArithmeticFourierCoordinate_eq_historicalCoeff
        (by omega : 1 ≤ X) k
    have hsThin :
        HasSum
          (fun k : ℤ =>
            if k = 0 then 0
            else ‖thinGreenArithmeticFourierCoordinate X k‖^2)
          (greenEnergy X) := by
      apply hs.congr_fun
      intro k
      by_cases hk : k = 0
      · subst k
        simp [thinHistoricalGreenFourierCoeff_zero (by omega : 1 ≤ X)]
      · simp only [hk, ↓reduceIte]
        rw [hcoeff k]
    exact hsThin.summable
  have htransfer := centeredEnergy_le_of_thinGreen_summable hX hGsum
  rw [thinGreenEnergy_eq_historicalGreenEnergy hX] at htransfer
  exact htransfer.2

/-- Conversely, centered Möbius-log energy controls the historical Green
energy, provided its series is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cf533b7c7ef6104f2accf3856fa9f99e896b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
