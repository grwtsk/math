# measurableSet_generateFrom_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73366e091247b018b2dc5546bb0bce5ce0686750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df211d8d-1462-0b5d-4d99-f4f03725fe05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e51af219-1e00-e65d-4c00-5790697eab32",
  "kind": "theorem",
  "lexical_name": "measurableSet_generateFrom_singleton_iff",
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
  "slug": "measurableset-generatefrom-singleton-iff--3964e85de0b4b7d06764eb2a",
  "source": {
    "blob": "73366e091247b018b2dc5546bb0bce5ce0686750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 45,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3964e85de0b4b7d06764eb2a1c62b25412590603b3ea0940ae2c6d2a8477215a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51af219-1e00-e65d-4c00-5790697eab32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_generateFrom_singleton_iff {s t : Set α} :
    MeasurableSet[MeasurableSpace.generateFrom {s}] t ↔ t = ∅ ∨ t = s ∨ t = sᶜ ∨ t = univ := by
  simp_rw [MeasurableSpace.generateFrom_singleton]
  unfold MeasurableSet MeasurableSpace.MeasurableSet' MeasurableSpace.comap
  simp_rw [MeasurableSpace.measurableSet_top, true_and]
  constructor
  · rintro ⟨x, rfl⟩
    by_cases hT : True ∈ x
    · by_cases hF : False ∈ x
      · refine Or.inr <| Or.inr <| Or.inr <| subset_antisymm (subset_univ _) ?_
        suffices x = univ by simp only [this, preimage_univ, subset_refl]
        refine subset_antisymm (subset_univ _) ?_
        rw [univ_eq_true_false]
        rintro - (rfl | rfl)
        · assumption
        · assumption
      · have hx : x = {True} := by
          ext p
          refine ⟨fun hp ↦ mem_singleton_iff.2 ?_, fun hp ↦ hp ▸ hT⟩
          by_contra hpneg
          rw [eq_iff_iff, iff_true, ← false_iff] at hpneg
          exact hF (by convert hp)
        simp [hx]
    · by_cases hF : False ∈ x
      · have hx : x = {False} := by
          ext p
          refine ⟨fun hp ↦ mem_singleton_iff.2 ?_, fun hp ↦ hp ▸ hF⟩
          by_contra hpneg
          simp only [eq_iff_iff, iff_false, not_not] at hpneg
          refine hT ?_
          convert hp
          simpa
        refine Or.inr <| Or.inr <| Or.inl <| ?_
        simp [hx, compl_def]
      · refine Or.inl <| subset_antisymm ?_ <| empty_subset _
        suffices x ⊆ ∅ by
          rw [subset_empty_iff] at this
          simp only [this, preimage_empty, subset_refl]
        intro p hp
        fin_cases p
        · contradiction
        · contradiction
  · rintro (rfl | rfl | rfl | rfl)
    on_goal 1 => use ∅
    on_goal 2 => use {True}
    on_goal 3 => use {False}
    on_goal 4 => use Set.univ
    all_goals
      simp [compl_def]

end MeasureTheory

namespace Filter

variable [MeasurableSpace α]

/-- A filter `f` is measurably generates if each `s ∈ f` includes a measurable `t ∈ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73366e091247b018b2dc5546bb0bce5ce0686750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
