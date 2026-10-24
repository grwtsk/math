# right_mass_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:953bb44b-dcd1-5152-1532-a2d3ecd4d207",
  "kind": "theorem",
  "lexical_name": "right_mass_pos",
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
  "slug": "right-mass-pos--f17a920b1942391c214bbc7d",
  "source": {
    "blob": "904bdf25997d2bbe01927493788a14f85e05aa2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant584aa215c4af1613a77a09b646ab608de0882db7bee7f3b6f37b5e93cb8d2754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17a920b1942391c214bbc7dc1379f7f69d6819e25054a94148010777f5ead18",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant584aa215c4af1613a77a09b646ab608de0882db7bee7f3b6f37b5e93cb8d2754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:953bb44b-dcd1-5152-1532-a2d3ecd4d207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem right_mass_pos : 0 < actualRightLineMass (3 / 2) := by
  obtain ⟨A, hA, hh⟩ := (eventually_ge_atTop (1 : ℝ)).and
    actualTiltBandState_moving_energy_eventually_lower |>.exists
  have hp : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 := by
    exact div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _))
      (pow_pos (by linarith : 0 < A) _)
  have hm : 0 < actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := hp.trans_le hh
  exact pos_of_mul_pos_left hm (sq_nonneg _)

/-- The true moving-height band norm square has a fixed positive exponential lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant584aa215c4af1613a77a09b646ab608de0882db7bee7f3b6f37b5e93cb8d2754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant584aa215c4af1613a77a09b646ab608de0882db7bee7f3b6f37b5e93cb8d2754.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904bdf25997d2bbe01927493788a14f85e05aa2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
