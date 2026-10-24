# weighted_energy_primitive_tendsto_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4de8adaa-8367-717b-0989-7db243742ef6",
  "kind": "theorem",
  "lexical_name": "weighted_energy_primitive_tendsto_of_bound",
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
  "slug": "weighted-energy-primitive-tendsto-of-bound--8cb688a9e6783ed9bc37c2de",
  "source": {
    "blob": "8d3afc1e5e733abfba81c9b96afbaad5d860e83b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cb688a9e6783ed9bc37c2deae295588f8a30b16be1f8cd05e5a21a20d0c5e18",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de8adaa-8367-717b-0989-7db243742ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_energy_primitive_tendsto_of_bound {C q σ : ℝ} (hq : 0 ≤ q)
    (bound : ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q) (hσ : 0 < σ) :
    Tendsto (weightedEnergyPrimitive σ) atTop
      (𝓝 (σ * ∫ t : ℝ in Ioi 0, dampedEnergy σ t)) := by
  have primitive := intervalIntegral_tendsto_integral_Ioi 0
    (damped_energy_integrable_of_bound hq bound hσ) tendsto_id
  change Tendsto
    (fun T : ℝ ↦ dampedEnergy σ T + σ * ∫ t : ℝ in (0 : ℝ)..T, dampedEnergy σ t)
    atTop (𝓝 (σ * ∫ t : ℝ in Ioi 0, dampedEnergy σ t))
  simpa only [zero_add, id_eq] using
    (damped_energy_tendsto_zero_of_bound bound hσ).add (primitive.const_mul σ)

/-- Actual exponential-weighted squared pickup is integrable from cumulative energy alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3afc1e5e733abfba81c9b96afbaad5d860e83b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
