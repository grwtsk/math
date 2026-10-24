# t1Space_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09c6cb93-b4c1-6a2f-cce7-7c1bd225b163",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7218b823-9fe4-4883-8fcb-52350cbec624",
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
  "slug": "t1space-tfae--f723d1a157bba0ee26c34296",
  "source": {
    "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 401,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f723d1a157bba0ee26c3429602307ebba7d5b45a33b791de88cc13456b13f26d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7218b823-9fe4-4883-8fcb-52350cbec624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t1Space_TFAE (X : Type u) [TopologicalSpace X] :
    List.TFAE [T1Space X,
      ∀ x, IsClosed ({ x } : Set X),
      ∀ x, IsOpen ({ x }ᶜ : Set X),
      Continuous (@CofiniteTopology.of X),
      ∀ ⦃x y : X⦄, x ≠ y → {y}ᶜ ∈ 𝓝 x,
      ∀ ⦃x y : X⦄, x ≠ y → ∃ s ∈ 𝓝 x, y ∉ s,
      ∀ ⦃x y : X⦄, x ≠ y → ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ y ∉ U,
      ∀ ⦃x y : X⦄, x ≠ y → Disjoint (𝓝 x) (pure y),
      ∀ ⦃x y : X⦄, x ≠ y → Disjoint (pure x) (𝓝 y),
      ∀ ⦃x y : X⦄, x ⤳ y → x = y] := by
  tfae_have 1 ↔ 2 := ⟨fun h => h.1, fun h => ⟨h⟩⟩
  tfae_have 2 ↔ 3 := by
    simp only [isOpen_compl_iff]
  tfae_have 5 ↔ 3 := by
    refine forall_swap.trans ?_
    simp only [isOpen_iff_mem_nhds, mem_compl_iff, mem_singleton_iff]
  tfae_have 5 ↔ 6 := by
    simp only [← subset_compl_singleton_iff, exists_mem_subset_iff]
  tfae_have 5 ↔ 7 := by
    simp only [(nhds_basis_opens _).mem_iff, subset_compl_singleton_iff, exists_prop, and_assoc,
      and_left_comm]
  tfae_have 5 ↔ 8 := by
    simp only [← principal_singleton, disjoint_principal_right]
  tfae_have 8 ↔ 9 := forall_swap.trans (by simp only [disjoint_comm, ne_comm])
  tfae_have 1 → 4 := by
    simp only [continuous_def, CofiniteTopology.isOpen_iff']
    rintro H s (rfl | hs)
    exacts [isOpen_empty, compl_compl s ▸ (@Set.Finite.isClosed _ _ H _ hs).isOpen_compl]
  tfae_have 4 → 2 :=
    fun h x => (CofiniteTopology.isClosed_iff.2 <| Or.inr (finite_singleton _)).preimage h
  tfae_have 2 ↔ 10 := by
    simp only [← closure_subset_iff_isClosed, specializes_iff_mem_closure, subset_def,
      mem_singleton_iff, eq_comm]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7869c22b117f30312b28f43d05e17de874c5006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
