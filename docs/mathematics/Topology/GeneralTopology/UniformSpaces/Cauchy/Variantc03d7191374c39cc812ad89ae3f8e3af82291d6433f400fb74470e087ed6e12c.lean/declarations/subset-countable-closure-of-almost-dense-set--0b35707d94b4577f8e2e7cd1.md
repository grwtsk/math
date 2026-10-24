# subset_countable_closure_of_almost_dense_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca6937c-d69f-b35f-0623-b9ac79d6f300",
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
  "slug": "subset-countable-closure-of-almost-dense-set--0b35707d94b4577f8e2e7cd1",
  "source": {
    "blob": "181876c1986baad484a4ba0ea2ca2018b7821b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 978,
    "line": 957,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b35707d94b4577f8e2e7cd14b866035855a1a55dcf1ee58fa945c4c65f5fcf6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca6937c-d69f-b35f-0623-b9ac79d6f300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 957–978.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_countable_closure_of_almost_dense_set (s : Set α)
    (hs : ∀ U ∈ 𝓤 α, ∃ t : Set α, t.Countable ∧ s ⊆ ⋃ x ∈ t, ball x U) :
    ∃ t, t ⊆ s ∧ t.Countable ∧ s ⊆ closure t := by
  obtain ⟨B, hB, _⟩ := has_seq_basis α
  replace hs (n : ℕ) := hs (B n) (hB.mem n)
  choose t tC ht using hs
  have := fun n => (tC n).to_subtype
  choose o hox hos using fun (n : ℕ) (x : t n) (hx : (ball x.1 (B n) ∩ s).Nonempty) => hx
  refine ⟨⋃ (n) (x), range (o n x), iUnion₂_subset fun _ _ => range_subset_iff.2 (hos _ _),
    countable_iUnion fun _ => countable_iUnion fun _ => countable_range _, fun x hx => ?_⟩
  rw [mem_closure_iff_ball]
  intro U hU
  obtain ⟨V, hV, hVU⟩ := comp_mem_uniformity_sets hU
  obtain ⟨n, hn⟩ := hB.mem_iff.1 hV
  specialize ht n hx
  rw [mem_iUnion₂] at ht
  obtain ⟨y, hy, hyx⟩ := ht
  refine ⟨o n ⟨y, hy⟩ ⟨x, hyx, hx⟩, ?_, ?_⟩
  · apply ball_mono ((SetRel.comp_subset_comp hn hn).trans hVU)
    exact mem_ball_comp (mem_ball_symmetry.2 hyx) (hox n ⟨y, hy⟩ ⟨x, hyx, hx⟩)
  · exact mem_iUnion₂_of_mem ⟨y, hy⟩ (mem_range_self ⟨x, hyx, hx⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean#L957).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181876c1986baad484a4ba0ea2ca2018b7821b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
