# subset_countable_closure_of_almost_dense_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e01ce12-368f-d7e1-3fb9-6375c3be697e",
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
  "slug": "subset-countable-closure-of-almost-dense-set--ad0bc6d32d9edc5bbddf1f9e",
  "source": {
    "blob": "63e5f43992a6b026d445ee1063bca5fa2e833776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 518,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0bc6d32d9edc5bbddf1f9e060a1c89cdc1c06cc893f02aa537f9a8ff6a798d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e01ce12-368f-d7e1-3fb9-6375c3be697e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–564.

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
    · refine ⟨x₀, hx₀, ?_⟩
      rw [he]
      exact empty_subset _
    · refine ⟨y, hys, fun z hz => ?_⟩
      calc
        edist z y ≤ edist z x + edist y x := edist_triangle_right _ _ _
        _ ≤ r + r := add_le_add hz.1 hxy
        _ = r * 2 := (mul_two r).symm
  choose f hfs hf using this
  refine
    ⟨⋃ n : ℕ, f n⁻¹ '' T n, iUnion_subset fun n => image_subset_iff.2 fun z _ => hfs _ _,
      countable_iUnion fun n => (hTc n).image _, ?_⟩
  refine fun x hx => mem_closure_iff.2 fun ε ε0 => ?_
  rcases ENNReal.exists_inv_nat_lt (ENNReal.half_pos ε0.lt.ne').ne' with ⟨n, hn⟩
  rcases mem_iUnion₂.1 (hsT n hx) with ⟨y, hyn, hyx⟩
  refine ⟨f n⁻¹ y, mem_iUnion.2 ⟨n, mem_image_of_mem _ hyn⟩, ?_⟩
  calc
    edist x (f n⁻¹ y) ≤ (n : ℝ≥0∞)⁻¹ * 2 := hf _ _ ⟨hyx, hx⟩
    _ < ε := ENNReal.mul_lt_of_lt_div hn

end Compact

end EMetric

/-- An extended metric space is a type endowed with a `ℝ≥0∞`-valued distance `edist` satisfying
`edist x y = 0 ↔ x = y`, commutativity `edist x y = edist y x`, and the triangle inequality
`edist x z ≤ edist x y + edist y z`.

See pseudo extended metric spaces (`PseudoEMetricSpace`) for the similar class with the
`edist x y = 0 ↔ x = y` assumption weakened to `edist x x = 0`.

Any extended metric space is a T1 topological space and a uniform space (see `TopologicalSpace`,
`T1Space`, `UniformSpace`), where the topology and uniformity come from the metric.

We make the uniformity/topology part of the data instead of deriving it from the metric.
This eg ensures that we do not get a diamond when doing
`[EMetricSpace α] [EMetricSpace β] : TopologicalSpace (α × β)`:
The product metric and product topology agree, but not definitionally so.
See Note [forgetful inheritance]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e5f43992a6b026d445ee1063bca5fa2e833776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
