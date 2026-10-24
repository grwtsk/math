# subset_countable_closure_of_almost_dense_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 782,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e12c5f38-7751-7026-13b2-da63cadd5cd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d661482-4c15-c3c9-1715-949841ed9b2d",
  "kind": "theorem",
  "lexical_name": "subset_countable_closure_of_almost_dense_set",
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
  "slug": "subset-countable-closure-of-almost-dense-set--9e62adcc342e27cc706a4318",
  "source": {
    "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 782,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e62adcc342e27cc706a43184691ab5c9445b26e494c5920b239b8de732d4f45",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d661482-4c15-c3c9-1715-949841ed9b2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_countable_closure_of_almost_dense_set (s : Set α)
    (hs : ∀ ε > 0, ∃ t : Set α, t.Countable ∧ s ⊆ ⋃ x ∈ t, closedBall x ε) :
    ∃ t, t ⊆ s ∧ t.Countable ∧ s ⊆ closure t := by
  rcases s.eq_empty_or_nonempty with (rfl | ⟨x₀, hx₀⟩)
  · exact ⟨∅, empty_subset _, countable_empty, empty_subset _⟩
  choose! T hTc hsT using fun n : ℕ => hs n⁻¹ (by simp)
  have : ∀ r x, ∃ y ∈ s, closedBall x r ∩ s ⊆ closedBall y (r * 2) := fun r x => by
    rcases (closedBall x r ∩ s).eq_empty_or_nonempty with (he | ⟨y, hxy, hys⟩)
    · refine' ⟨x₀, hx₀, _⟩
      rw [he]
      exact empty_subset _
    · refine' ⟨y, hys, fun z hz => _⟩
      calc
        edist z y ≤ edist z x + edist y x := edist_triangle_right _ _ _
        _ ≤ r + r := (add_le_add hz.1 hxy)
        _ = r * 2 := (mul_two r).symm
  choose f hfs hf using this
  refine'
    ⟨⋃ n : ℕ, f n⁻¹ '' T n, iUnion_subset fun n => image_subset_iff.2 fun z _ => hfs _ _,
      countable_iUnion fun n => (hTc n).image _, _⟩
  refine' fun x hx => mem_closure_iff.2 fun ε ε0 => _
  rcases ENNReal.exists_inv_nat_lt (ENNReal.half_pos ε0.lt.ne').ne' with ⟨n, hn⟩
  rcases mem_iUnion₂.1 (hsT n hx) with ⟨y, hyn, hyx⟩
  refine' ⟨f n⁻¹ y, mem_iUnion.2 ⟨n, mem_image_of_mem _ hyn⟩, _⟩
  calc
    edist x (f n⁻¹ y) ≤ (n : ℝ≥0∞)⁻¹ * 2 := hf _ _ ⟨hyx, hx⟩
    _ < ε := ENNReal.mul_lt_of_lt_div hn
#align emetric.subset_countable_closure_of_almost_dense_set EMetric.subset_countable_closure_of_almost_dense_set

open TopologicalSpace in
/-- If a set `s` is separable, then the corresponding subtype is separable in a (pseudo extended)
metric space.  This is not obvious, as the countable set whose closure covers `s` does not need in
general to be contained in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
