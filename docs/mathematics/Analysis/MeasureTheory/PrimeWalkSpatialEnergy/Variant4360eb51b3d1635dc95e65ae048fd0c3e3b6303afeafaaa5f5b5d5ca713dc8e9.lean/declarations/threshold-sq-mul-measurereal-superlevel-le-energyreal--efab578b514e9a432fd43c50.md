# threshold_sq_mul_measureReal_superlevel_le_energyReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:269eadf2-1252-f63b-8869-477c3b6b7a1c",
  "kind": "theorem",
  "lexical_name": "threshold_sq_mul_measureReal_superlevel_le_energyReal",
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
  "slug": "threshold-sq-mul-measurereal-superlevel-le-energyreal--efab578b514e9a432fd43c50",
  "source": {
    "blob": "40618f481850f6d3cfc59b8c194fa4d487812df2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 105,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efab578b514e9a432fd43c5049362ec4887e0c0f6a5c685d602defc11f9d1fe1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:269eadf2-1252-f63b-8869-477c3b6b7a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem threshold_sq_mul_measureReal_superlevel_le_energyReal
    (G : α → ℝ) (hG : AEMeasurable G μ) {threshold : ℝ}
    (hThreshold : 0 < threshold)
    (hEnergyFinite : squareEnergy G μ ≠ ∞) :
    threshold ^ 2 * (μ {x | threshold < G x}).toReal ≤
      (squareEnergy G μ).toReal := by
  have hMeasureFinite : μ {x | threshold < G x} ≠ ∞ :=
    measure_superlevel_ne_top_of_squareEnergy_ne_top
      G hG hThreshold hEnergyFinite
  have hENNReal :=
    threshold_sq_mul_measure_superlevel_le_squareEnergy
      G hG threshold
  have hLeftFinite :
      (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | threshold < G x} ≠ ∞ :=
    ENNReal.mul_ne_top
      (ENNReal.pow_ne_top ENNReal.ofReal_ne_top)
      hMeasureFinite
  have hReal :=
    (ENNReal.toReal_le_toReal hLeftFinite hEnergyFinite).2 hENNReal
  simpa [ENNReal.toReal_mul, ENNReal.toReal_pow,
    ENNReal.toReal_ofReal hThreshold.le] using hReal

/-! ## Exact finite packet energy -/

variable
    {Packet : Type*} [DecidableEq Packet]
    (packets : Finset Packet)
    (wavePacket : Packet → SpatialSignal)

/-- Sum of the individual `L²` packet energies, represented as lintegrals of
the squared pointwise norm. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40618f481850f6d3cfc59b8c194fa4d487812df2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
