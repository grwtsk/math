# original_pickup_of_retained_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24f86f08-f21e-05f6-b1ab-08bebe2cbe87",
  "kind": "theorem",
  "lexical_name": "original_pickup_of_retained_and_tail",
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
  "slug": "original-pickup-of-retained-and-tail--f2460eceb51b0437250bf536",
  "source": {
    "blob": "83166aabaec3b5a8db79ce50489d19f6e931aff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2460eceb51b0437250bf536a0c4bbdaae433ee07594618b514aa13b6595387f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24f86f08-f21e-05f6-b1ab-08bebe2cbe87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_pickup_of_retained_and_tail {A t B T : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (h : ℝ → ℝ)
    (hi : IntervalIntegrable h volume (-A) (3 * A))
    (he : Integrable (fun x ↦ (sourceVector A t x - h x) ^ 2) volume)
    (hB : |retainedReading A h| ≤ B) (hT : discardedEnergy A t h ≤ T) :
    |centeredPickup A t| ≤ B + massDecoder * Real.sqrt T := by
  have herr := original_pickup_retained_error hA ht h hi he
  have htail := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hT) decoder_nonneg
  calc
    _ ≤ |centeredPickup A t - retainedReading A h| + |retainedReading A h| := by
      simpa only [sub_add_cancel] using abs_add_le
        (centeredPickup A t - retainedReading A h) (retainedReading A h)
    _ ≤ _ := by linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceRetainedReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83166aabaec3b5a8db79ce50489d19f6e931aff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
