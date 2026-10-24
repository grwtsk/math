# measurableSet_inter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa0b15b-e233-2484-24e2-a604b42c5f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87fa30eb-7f8b-726c-0aa6-a91a370a4169",
  "kind": "theorem",
  "lexical_name": "measurableSet_inter_le",
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
  "slug": "measurableset-inter-le--18ed106479a1f771f34109fb",
  "source": {
    "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 623,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ed106479a1f771f34109fbb055c1d2bef0397fdc96670af7f1b4fc47e82f06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87fa30eb-7f8b-726c-0aa6-a91a370a4169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_inter_le [TopologicalSpace ι] [SecondCountableTopology ι] [OrderTopology ι]
    [MeasurableSpace ι] [BorelSpace ι] (hτ : IsStoppingTime f τ) (hπ : IsStoppingTime f π)
    (s : Set Ω) (hs : MeasurableSet[hτ.measurableSpace] s) :
    MeasurableSet[(hτ.min hπ).measurableSpace] (s ∩ {ω | τ ω ≤ π ω}) := by
  simp_rw [IsStoppingTime.measurableSet] at hs ⊢
  intro i
  have : s ∩ {ω | τ ω ≤ π ω} ∩ {ω | min (τ ω) (π ω) ≤ i} =
      s ∩ {ω | τ ω ≤ i} ∩ {ω | min (τ ω) (π ω) ≤ i} ∩
        {ω | min (τ ω) i ≤ min (min (τ ω) (π ω)) i} := by
    ext1 ω
    simp only [min_le_iff, Set.mem_inter_iff, Set.mem_setOf_eq, le_min_iff, le_refl, true_and_iff,
      and_true_iff, true_or_iff, or_true_iff]
    by_cases hτi : τ ω ≤ i
    · simp only [hτi, true_or_iff, and_true_iff, and_congr_right_iff]
      intro
      constructor <;> intro h
      · exact Or.inl h
      · cases' h with h h
        · exact h
        · exact hτi.trans h
    simp only [hτi, false_or_iff, and_false_iff, false_and_iff, iff_false_iff, not_and, not_le,
      and_imp]
    refine' fun _ hτ_le_π => lt_of_lt_of_le _ hτ_le_π
    rw [← not_le]
    exact hτi
  rw [this]
  refine' ((hs i).inter ((hτ.min hπ) i)).inter _
  apply @measurableSet_le _ _ _ _ _ (Filtration.seq f i) _ _ _ _ _ ?_ ?_
  · exact (hτ.min_const i).measurable_of_le fun _ => min_le_right _ _
  · exact ((hτ.min hπ).min_const i).measurable_of_le fun _ => min_le_right _ _
#align measure_theory.is_stopping_time.measurable_set_inter_le MeasureTheory.IsStoppingTime.measurableSet_inter_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a5c033f38226401d2b83043ee33645bc887d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
