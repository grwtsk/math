# interactionShiftMass_le_scaled_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ee297d-0ec7-d0cd-b800-db55d4131d26",
  "kind": "theorem",
  "lexical_name": "interactionShiftMass_le_scaled_mass",
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
  "slug": "interactionshiftmass-le-scaled-mass--706d8d1b1112809db5ede99d",
  "source": {
    "blob": "9d58848e723bc15a46cca7704082ffa342a4fe70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706d8d1b1112809db5ede99d352a497c6aae042f03297a5d87b446b1f58ff72c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ee297d-0ec7-d0cd-b800-db55d4131d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interactionShiftMass_le_scaled_mass (A : ℝ) :
    interactionShiftMass A ≤ 2 * A * mangoldtBaseline A := by
  unfold interactionShiftMass mangoldtBaseline
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hb := mangoldtInventory_log_bounds (2 * A) n hn
  rw [abs_of_nonneg hb.1]
  have h := mul_le_mul_of_nonneg_left hb.2 (mangoldtCoefficient_nonneg n)
  nlinarith

/-- The original exponential weight dominates the elementary weighted-Mangoldt weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d58848e723bc15a46cca7704082ffa342a4fe70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
