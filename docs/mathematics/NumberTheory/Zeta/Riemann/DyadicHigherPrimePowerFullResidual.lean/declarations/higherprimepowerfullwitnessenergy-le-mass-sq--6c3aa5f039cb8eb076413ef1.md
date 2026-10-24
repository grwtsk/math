# higherPrimePowerFullWitnessEnergy_le_mass_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e64874ee-c55f-3456-40be-98371336ba44",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerFullWitnessEnergy_le_mass_sq",
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
  "slug": "higherprimepowerfullwitnessenergy-le-mass-sq--6c3aa5f039cb8eb076413ef1",
  "source": {
    "blob": "66734eefb2de5f9b09ef807c1ad06194d6bd7b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3aa5f039cb8eb076413ef1843fd7de07b5869cc2d5c56de3bd2a5059eedeb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64874ee-c55f-3456-40be-98371336ba44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerFullWitnessEnergy_le_mass_sq
    {X : ℕ} (hX : 0 < X) :
    higherPrimePowerFullWitnessEnergy X ≤
      (2 + higherPrimePowerFrequencyConstant) *
        (higherPrimePowerWindowMass X)^2 := by
  have hM0 :
      (higherPrimePowerMass0Contribution X)^2 =
        (higherPrimePowerWindowMass X)^2 := rfl
  have hM1 := higherPrimePowerMass1Contribution_le_mass hX
  have hM10 := higherPrimePowerMass1Contribution_nonnegative hX
  have hM0nonneg := higherPrimePowerWindowMass_nonnegative X
  have hM1sq :
      (higherPrimePowerMass1Contribution X)^2 ≤
        (higherPrimePowerWindowMass X)^2 := by
    exact (sq_le_sq₀ hM10 hM0nonneg).2 hM1
  have hFourier := higherPrimePowerFourierEnergy_le_mass_sq X
  unfold higherPrimePowerFullWitnessEnergy
  rw [hM0]
  nlinarith [higherPrimePowerFrequencyConstant_nonnegative]

/-- Algebraic square-root ratio identity used to convert the Chebyshev mass
bound into a 1/X energy bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66734eefb2de5f9b09ef807c1ad06194d6bd7b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
