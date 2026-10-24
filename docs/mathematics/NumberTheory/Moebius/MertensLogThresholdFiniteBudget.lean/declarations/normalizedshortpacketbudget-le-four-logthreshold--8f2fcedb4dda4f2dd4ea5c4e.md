# normalizedShortPacketBudget_le_four_logThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b06f2fbd-68be-fc6a-2f46-dcf4a994b86c",
  "kind": "theorem",
  "lexical_name": "normalizedShortPacketBudget_le_four_logThreshold",
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
  "slug": "normalizedshortpacketbudget-le-four-logthreshold--8f2fcedb4dda4f2dd4ea5c4e",
  "source": {
    "blob": "8dd49852446770e2731935079a54b83da61b1f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f2fcedb4dda4f2dd4ea5c4e067c0dfe0395eb561b4c5c2d31b57ac5cd573352",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b06f2fbd-68be-fc6a-2f46-dcf4a994b86c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedShortPacketBudget_le_four_logThreshold
    (j : ℕ) :
    normalizedShortPacketBudget j ≤
      4 * (logarithmicShiftThreshold j : ℝ) := by
  unfold normalizedShortPacketBudget normalizedShortDepthBudget
  simp_rw [mul_assoc]
  rw [← Finset.mul_sum, ← Finset.mul_sum, ← mul_assoc]
  calc
    2 * (logarithmicShiftThreshold j : ℝ) *
        (∑ t ∈ Finset.range (2 ^ (j + 1)),
          (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤
      2 * (logarithmicShiftThreshold j : ℝ) * 2 := by
        apply mul_le_mul_of_nonneg_left
        · exact logThresholdFiniteDepthSum_le_two j
        · positivity
    _ = 4 * (logarithmicShiftThreshold j : ℝ) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logThresholdFiniteDepthSum_le_two
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logThresholdFiniteDepthBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedShortPacketBudget_le_four_logThreshold
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd49852446770e2731935079a54b83da61b1f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
