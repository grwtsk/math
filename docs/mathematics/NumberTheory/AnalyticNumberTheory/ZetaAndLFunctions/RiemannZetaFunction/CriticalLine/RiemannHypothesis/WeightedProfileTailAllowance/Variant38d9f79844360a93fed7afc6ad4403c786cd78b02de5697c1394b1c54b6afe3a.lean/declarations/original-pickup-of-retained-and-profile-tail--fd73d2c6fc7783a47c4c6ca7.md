# original_pickup_of_retained_and_profile_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea89007d-69fe-59e5-65d6-9e75150771b9",
  "kind": "theorem",
  "lexical_name": "original_pickup_of_retained_and_profile_tail",
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
  "slug": "original-pickup-of-retained-and-profile-tail--fd73d2c6fc7783a47c4c6ca7",
  "source": {
    "blob": "e5ca5b37f1b24fd8cb0fe18b658eec355a0dbd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant38d9f79844360a93fed7afc6ad4403c786cd78b02de5697c1394b1c54b6afe3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd73d2c6fc7783a47c4c6ca733295563884ba1287472ab31b0281d5b1e99e8a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant38d9f79844360a93fed7afc6ad4403c786cd78b02de5697c1394b1c54b6afe3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea89007d-69fe-59e5-65d6-9e75150771b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_pickup_of_retained_and_profile_tail {A t B : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (H : ℝ)
    (hret : |retainedCutoffReading A t H hA| ≤ B) :
    |centeredPickup A t| ≤ B + massDecoder *
      (4 * Real.sqrt (integerCutoff A) * Real.sqrt (profileTailEnergy A H)) := by
  have hp := original_pickup_cutoff_payment hA ht H
  have htbound := actual_weighted_profile_tail_allowance hA ht.1 H
  have hsignal := abs_add_le (centeredPickup A t - retainedCutoffReading A t H hA)
    (retainedCutoffReading A t H hA)
  rw [sub_add_cancel] at hsignal
  have hm := mul_le_mul_of_nonneg_left htbound decoder_nonneg
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedProfileTailAllowance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant38d9f79844360a93fed7afc6ad4403c786cd78b02de5697c1394b1c54b6afe3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant38d9f79844360a93fed7afc6ad4403c786cd78b02de5697c1394b1c54b6afe3a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ca5b37f1b24fd8cb0fe18b658eec355a0dbd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
