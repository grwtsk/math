# threshold_sq_mul_measure_superlevel_le_squareEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a3fe816600203380448f61f152eb18abff552de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c8e9ae0-d490-da3f-68a0-f05be99c86f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ad5950c-eb09-4869-1636-7a4633907b50",
  "kind": "theorem",
  "lexical_name": "threshold_sq_mul_measure_superlevel_le_squareEnergy",
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
  "slug": "threshold-sq-mul-measure-superlevel-le-squareenergy--2ee621b9f8672b5356d78ba9",
  "source": {
    "blob": "8a3fe816600203380448f61f152eb18abff552de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 43,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee621b9f8672b5356d78ba965f75b588f17d1eb0c9f52dd3a27065e516df4c4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad5950c-eb09-4869-1636-7a4633907b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem threshold_sq_mul_measure_superlevel_le_squareEnergy
    (G : α → ℝ) (hG : AEMeasurable G μ) (threshold : ℝ) :
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        μ {x | threshold < G x} ≤
      squareEnergy G μ := by
  let energyDensity : α → ℝ≥0∞ :=
    fun x => (ENNReal.ofReal (G x)) ^ (2 : ℕ)
  have hDensity : AEMeasurable energyDensity μ :=
    hG.ennreal_ofReal.pow_const 2
  have hSubset :
      {x | threshold < G x} ⊆
        {x | (ENNReal.ofReal threshold) ^ (2 : ℕ) ≤ energyDensity x} := by
    intro x hx
    dsimp [energyDensity]
    exact ENNReal.pow_le_pow_left (ENNReal.ofReal_le_ofReal hx.le)
  calc
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | threshold < G x} ≤
        (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | (ENNReal.ofReal threshold) ^ (2 : ℕ) ≤
            energyDensity x} :=
      by
        gcongr
    _ ≤ ∫⁻ x, energyDensity x ∂μ :=
      mul_meas_ge_le_lintegral₀ hDensity _
    _ = squareEnergy G μ := rfl

/-- A positive threshold and finite square energy force the superlevel set to
have finite measure.  This is the missing side condition needed before any
`ENNReal.toReal` conversion. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a3fe816600203380448f61f152eb18abff552de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
