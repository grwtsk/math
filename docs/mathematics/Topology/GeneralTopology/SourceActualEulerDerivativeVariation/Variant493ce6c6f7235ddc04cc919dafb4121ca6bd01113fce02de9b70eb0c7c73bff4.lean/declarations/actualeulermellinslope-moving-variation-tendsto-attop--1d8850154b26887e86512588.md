# actualEulerMellinSlope_moving_variation_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56acbed4-46cd-290d-8340-fd2c6d0bdb41",
  "kind": "theorem",
  "lexical_name": "actualEulerMellinSlope_moving_variation_tendsto_atTop",
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
  "slug": "actualeulermellinslope-moving-variation-tendsto-attop--1d8850154b26887e86512588",
  "source": {
    "blob": "fdc6d062cde1c661dd1981fa7d0107d82dd77e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8850154b26887e86512588657bb8cd575f5b96584ff86abf942a0d484ebaa8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56acbed4-46cd-290d-8340-fd2c6d0bdb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellinSlope_moving_variation_tendsto_atTop :
    Tendsto (fun A : ℝ => ∫ t in 0..actualBumpMovingHeight A (3 / 2),
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 9) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 9)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hh : Tendsto (fun A : ℝ => 20736 * Real.exp (2 * A) / A ^ 9)
      atTop atTop := by
    convert ht.const_mul_atTop (by norm_num : (0 : ℝ) < 20736) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualEulerMellinSlope_moving_variation_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualEulerDerivativeVariation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc6d062cde1c661dd1981fa7d0107d82dd77e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
