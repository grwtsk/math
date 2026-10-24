# greenFullResidualEnergyBound_le_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:091c2b53-bd3e-2d46-8eeb-2fa2bd570239",
  "kind": "theorem",
  "lexical_name": "greenFullResidualEnergyBound_le_rpow",
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
  "slug": "greenfullresidualenergybound-le-rpow--a824a0406983e60134982839",
  "source": {
    "blob": "d3fc7e76f43d3d24617311dc123ef5d141fbb338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a824a0406983e60134982839c2e660756e74da515f24d722c74e5951007f2e7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:091c2b53-bd3e-2d46-8eeb-2fa2bd570239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenFullResidualEnergyBound_le_rpow
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ X : ℕ, 2 ≤ X →
        greenFullResidualEnergyBound X ≤
          C * Real.rpow (X : ℝ) (-1 + η) := by
  let C : ℝ :=
    (1 + 1 / Real.pi)^2 +
    ((15 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 +
      ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2) +
    ((243 / (16 * Real.pi^4)) *
        greenPSeriesC4 * greenPSeriesC4 +
      (15 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 +
      (9 / (4 * Real.pi^4)) * greenPSeriesC4)
  refine ⟨C, ?_, ?_⟩
  · dsimp [C]
    positivity [greenPSeriesC2_nonneg, greenPSeriesC4_nonneg]
  · intro X hX
    have hXr : (1 : ℝ) ≤ X := by exact_mod_cast (by omega : 1 ≤ X)
    have hpow1 : 1 / (X : ℝ) ≤ Real.rpow (X : ℝ) (-1 + η) := by
      rw [one_div, ← Real.rpow_neg_one]
      exact Real.rpow_le_rpow_of_exponent_le hXr (by linarith)
    have hpow2 : 1 / (X : ℝ)^2 ≤ Real.rpow (X : ℝ) (-1 + η) := by
      calc
        1 / (X : ℝ)^2 ≤ 1 / (X : ℝ) := by
          have hXp : 0 < (X : ℝ) := by positivity
          exact one_div_sq_le_one_div hXr
        _ ≤ _ := hpow1
    have hpow4 : 1 / (X : ℝ)^4 ≤ Real.rpow (X : ℝ) (-1 + η) := by
      calc
        1 / (X : ℝ)^4 ≤ 1 / (X : ℝ) := by
          have hXp : 0 < (X : ℝ) := by positivity
          have : (X : ℝ) ≤ X^4 := by nlinarith [sq_nonneg ((X : ℝ)^2 - 1)]
          exact one_div_le_one_div_of_le hXp this
        _ ≤ _ := hpow1
    unfold greenFullResidualEnergyBound
    dsimp [C]
    have hC2 := greenPSeriesC2_nonneg
    have hC4 := greenPSeriesC4_nonneg
    nlinarith

/-- Three genuine arithmetic suppliers suffice for the complete thin augmented
energy. The deterministic comparison residual is absorbed automatically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3fc7e76f43d3d24617311dc123ef5d141fbb338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
