# pickup_weighted_energy_integrable_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:381a4242-b779-2808-85f7-1fb9dec23da3",
  "kind": "theorem",
  "lexical_name": "pickup_weighted_energy_integrable_initial",
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
  "slug": "pickup-weighted-energy-integrable-initial--c0626e42f91141a26fa9df31",
  "source": {
    "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0626e42f91141a26fa9df3167faf13b92a6dc45411f5f4f1dbd1541905cb1bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EnergyAbscissa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:381a4242-b779-2808-85f7-1fb9dec23da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_weighted_energy_integrable_initial {σ : ℝ} (hσ : 1 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) := by
  let ε : ℝ := (σ - 1) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  let C : ℝ := 2 * (((2 : ℕ).factorial : ℝ) / ε ^ 2)
  have hb (T : ℝ) (hT : 0 ≤ T) : pickupEnergy T ≤ C * Real.exp ((1 + ε) * T) := by
    calc
      _ ≤ 2 * Real.exp T * T ^ 2 := pickupEnergy_exponential_allowance hT
      _ ≤ 2 * Real.exp T * ((((2 : ℕ).factorial : ℝ) / ε ^ 2) * Real.exp (ε * T)) :=
        mul_le_mul_of_nonneg_left (pow_le_factorial_mul_exp hε hT 2) (by positivity)
      _ = _ := by
        dsimp [C]
        rw [add_mul, one_mul, Real.exp_add]
        ring
  exact integrableOn_sq_tilt_of_energy_exponential wholePickup_continuous
    (by linarith) (by dsimp [ε]; linarith) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyAbscissa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a107f60cf1a498be022f6547623f15b01e840c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
