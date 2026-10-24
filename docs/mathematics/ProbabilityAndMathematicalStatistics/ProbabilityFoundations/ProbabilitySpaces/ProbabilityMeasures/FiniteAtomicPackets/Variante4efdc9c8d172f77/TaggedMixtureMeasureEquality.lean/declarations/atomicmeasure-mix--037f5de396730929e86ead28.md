# atomicMeasure_mix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d106f74-9c0f-a2ba-6a41-0c13220fcb73",
  "kind": "theorem",
  "lexical_name": "atomicMeasure_mix",
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
  "slug": "atomicmeasure-mix--037f5de396730929e86ead28",
  "source": {
    "blob": "597d2ba287ee2b608df2ebcf5355a8b70a6f4b73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/TaggedMixtureMeasureEquality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:037f5de396730929e86ead28a094ae497936415037c91e55c50e86c18d2cc6cc",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/TaggedMixtureMeasureEquality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d106f74-9c0f-a2ba-6a41-0c13220fcb73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomicMeasure_mix
    (outer : BitMatrix.Probability.SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    (mix outer packets).atomicMeasure = mixedAtomicMeasure outer packets := by
  ext event measurable
  rw [atomicMeasure_event, spectralEventProbability_mix]
  unfold mixedAtomicMeasure
  rw [Measure.finsetSum_apply]
  rw [ENNReal.ofReal_sum_of_nonneg]
  · apply Finset.sum_congr rfl
    intro i _
    rw [Measure.smul_apply, atomicMeasure_event]
    change ENNReal.ofReal
        (outer i * (packets i).spectralEventProbability event) =
      ENNReal.ofReal (outer i) *
        ENNReal.ofReal ((packets i).spectralEventProbability event)
    exact ENNReal.ofReal_mul (outer.nonnegative i)
  · intro i _
    exact mul_nonneg (outer.nonnegative i)
      ((packets i).spectralEventProbability_nonnegative event)

end

end BitMatrix.Spectral.FinitePacket
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/TaggedMixtureMeasureEquality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/TaggedMixtureMeasureEquality.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `597d2ba287ee2b608df2ebcf5355a8b70a6f4b73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
