# centeredEnergy_le_of_thinGreen_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69e8fd14-0acc-fa9e-ae77-32066c81afe0",
  "kind": "theorem",
  "lexical_name": "centeredEnergy_le_of_thinGreen_summable",
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
  "slug": "centeredenergy-le-of-thingreen-summable--5e3520a58960d4c2e9143b5d",
  "source": {
    "blob": "8e4eb9647e863a8da9a8bdf68eb51a14741993a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3520a58960d4c2e9143b5d5cf608ff985d685fc0051e7e362b282e4990509d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69e8fd14-0acc-fa9e-ae77-32066c81afe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredEnergy_le_of_thinGreen_summable
    {X : ℕ} (hX : 2 ≤ X)
    (hG : Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2)) :
    Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) ∧
    centeredMobiusLogFourierEnergy X ≤
      2 * thinGreenEnergy X +
      2 * greenFullResidualEnergyBound X := by
  have hR := summable_sq_norm_greenCenteringResidual hX
  have hdom : ∀ k : ℤ,
      (if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) ≤
      2 * (if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
      2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) := by
    intro k
    by_cases hk : k = 0
    · simp [hk]
    · simp only [hk, ↓reduceIte]
      exact sq_norm_centered_le_thinGreen_plus_residual (by omega) k
  have hsum :=
    (hG.mul_left 2).add (hR.mul_left 2)
  have hM := Summable.of_nonneg_of_le
    (fun k => by split_ifs <;> positivity) hdom hsum
  refine ⟨hM, ?_⟩
  unfold centeredMobiusLogFourierEnergy thinGreenEnergy
  calc
    _ ≤ ∑' k : ℤ,
        (2 * (if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
         2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2)) :=
      hM.tsum_le_tsum hdom hsum
    _ = 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
        2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖greenCenteringResidual X k‖^2) := by
      rw [tsum_add (hG.mul_left 2) (hR.mul_left 2),
        tsum_mul_left, tsum_mul_left]
    _ ≤ 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
        2 * greenFullResidualEnergyBound X := by
      gcongr
      exact tsum_sq_norm_greenCenteringResidual_le hX

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e4eb9647e863a8da9a8bdf68eb51a14741993a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
