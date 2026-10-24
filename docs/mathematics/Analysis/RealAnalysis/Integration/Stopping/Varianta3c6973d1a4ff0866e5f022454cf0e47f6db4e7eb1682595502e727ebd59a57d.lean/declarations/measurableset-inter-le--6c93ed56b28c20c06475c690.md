# measurableSet_inter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56da9890-64c7-13e2-9183-be83d745c196",
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
  "slug": "measurableset-inter-le--6c93ed56b28c20c06475c690",
  "source": {
    "blob": "9c891612ada35af032e0a56a86b684e7c548ecf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 631,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c93ed56b28c20c06475c6901bd66922dd9efd81e2638057ca2e7302c1199706",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56da9890-64c7-13e2-9183-be83d745c196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–662.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c891612ada35af032e0a56a86b684e7c548ecf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
