# t1Space_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b68a6310-e033-8e96-cc96-f372f2ccaec1",
  "kind": "theorem",
  "lexical_name": "t1Space_TFAE",
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
  "slug": "t1space-tfae--d93fcff758da8e2913666c92",
  "source": {
    "blob": "48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93fcff758da8e2913666c92bcbd8c62fc9722429793d46360bd02db3b96b761",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b68a6310-e033-8e96-cc96-f372f2ccaec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t1Space_TFAE (α : Type u) [ TopologicalSpace α ] :
    List.TFAE [T1Space α,
      ∀ x, IsClosed ({ x } : Set α),
      ∀ x, IsOpen ({ x }ᶜ : Set α),
      Continuous (@CofiniteTopology.of α),
      ∀ ⦃x y : α⦄, x ≠ y → {y}ᶜ ∈ 𝓝 x,
      ∀ ⦃x y : α⦄, x ≠ y → ∃ s ∈ 𝓝 x, y ∉ s,
      ∀ ⦃x y : α⦄, x ≠ y → ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ y ∉ U,
      ∀ ⦃x y : α⦄, x ≠ y → Disjoint (𝓝 x) (pure y),
      ∀ ⦃x y : α⦄, x ≠ y → Disjoint (pure x) (𝓝 y),
      ∀ ⦃x y : α⦄, x ⤳ y → x = y] := by
  tfae_have 1 ↔ 2
  · exact ⟨fun h => h.1, fun h => ⟨h⟩⟩
  tfae_have 2 ↔ 3
  · simp only [isOpen_compl_iff]
  tfae_have 5 ↔ 3
  · refine' forall_swap.trans _
    simp only [isOpen_iff_mem_nhds, mem_compl_iff, mem_singleton_iff]
  tfae_have 5 ↔ 6
  · simp only [← subset_compl_singleton_iff, exists_mem_subset_iff]
  tfae_have 5 ↔ 7
  · simp only [(nhds_basis_opens _).mem_iff, subset_compl_singleton_iff, exists_prop, and_assoc,
      and_left_comm]
  tfae_have 5 ↔ 8
  · simp only [← principal_singleton, disjoint_principal_right]
  tfae_have 8 ↔ 9
  · exact forall_swap.trans (by simp only [disjoint_comm, ne_comm])
  tfae_have 1 → 4
  · simp only [continuous_def, CofiniteTopology.isOpen_iff']
    rintro H s (rfl | hs)
    exacts [isOpen_empty, compl_compl s ▸ (@Set.Finite.isClosed _ _ H _ hs).isOpen_compl]
  tfae_have 4 → 2
  · exact fun h x => (CofiniteTopology.isClosed_iff.2 <| Or.inr (finite_singleton _)).preimage h
  tfae_have 2 ↔ 10
  · simp only [← closure_subset_iff_isClosed, specializes_iff_mem_closure, subset_def,
      mem_singleton_iff, eq_comm]
  tfae_finish
#align t1_space_tfae t1Space_TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
