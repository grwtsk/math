# centeredPickup_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:816de291-9d76-ddf4-60be-7312c8798197",
  "kind": "theorem",
  "lexical_name": "centeredPickup_exact",
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
  "slug": "centeredpickup-exact--f826a773149dd90d1ecac831",
  "source": {
    "blob": "30a8f805449456b94a8c67527c804d27727d29ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f826a773149dd90d1ecac831fa58b99bce3a91fb87b962df9ca96639a75f19dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:816de291-9d76-ddf4-60be-7312c8798197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredPickup_exact {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) : centeredPickup A t = weightedRecording A t := by
  have hreset : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have hresetA : 2 * Real.log A ≤ 2 * A := by
    have hlog := Real.log_le_sub_one_of_pos (by linarith : 0 < A)
    linarith
  rw [centeredPickup, pickup_finite_inventory (hreset.trans ht.1) ht.2,
    pickup_finite_inventory hreset hresetA, ← Finset.sum_sub_distrib]
  unfold weightedRecording pickupWeight
  apply Finset.sum_congr rfl
  intro n _
  simp only [atomPickup, exp_reset (by linarith : 0 < A),
    exp_negative_reset (by linarith : 0 < A)]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a8f805449456b94a8c67527c804d27727d29ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
