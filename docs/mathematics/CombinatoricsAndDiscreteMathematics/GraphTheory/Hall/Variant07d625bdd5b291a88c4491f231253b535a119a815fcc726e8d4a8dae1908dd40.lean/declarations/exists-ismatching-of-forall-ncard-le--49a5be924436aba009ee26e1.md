# exists_isMatching_of_forall_ncard_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ff3c4e4-3add-af78-ec65-9f168b62228b",
  "kind": "theorem",
  "lexical_name": "exists_isMatching_of_forall_ncard_le",
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
  "slug": "exists-ismatching-of-forall-ncard-le--49a5be924436aba009ee26e1",
  "source": {
    "blob": "ac7c615a93639fcce0f6f4037e75a124784dfe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a5be924436aba009ee26e114fa5fce824f98dc49ae356c234cd97b44c93b88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff3c4e4-3add-af78-ec65-9f168b62228b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isMatching_of_forall_ncard_le (h₁ : G.IsBipartiteWith p₁ p₂)
    (h₂ : ∀ s ⊆ p₁, s.ncard ≤ (⋃ x ∈ s, G.neighborSet x).ncard) :
    ∃ M : Subgraph G, p₁ ⊆ M.verts ∧ M.IsMatching := by
  classical
  obtain ⟨f, hf₁, hf₂⟩ := Finset.all_card_le_biUnion_card_iff_exists_injective
      (fun (x : p₁) ↦ G.neighborFinset x) |>.mp fun s ↦ by
    have := h₂ (s.image Subtype.val) (by simp)
    rw [Set.ncard_coe_finset, Finset.card_image_of_injective _ Subtype.val_injective] at this
    simpa [← Set.ncard_coe_finset, neighborFinset_def]
  have (x : p₁) : f x ∉ p₁ := h₁.disjoint |>.notMem_of_mem_right <|
    isBipartiteWith_neighborSet_subset h₁ x.2 <| Set.mem_toFinset.mp <| hf₂ x
  use hall_subgraph f this (fun v ↦ G.mem_neighborFinset _ _ |>.mp <| hf₂ v)
  refine ⟨by simp, fun v hv ↦ ?_⟩
  simp only [Set.mem_union, Set.mem_range, Subtype.exists] at hv ⊢
  rcases hv with h' | ⟨x, hx₁, hx₂⟩
  · exact ⟨f ⟨v, h'⟩, by simp_all⟩
  · use x
    have := hx₂ ▸ this ⟨x, hx₁⟩
    simp only [this, ↓reduceDIte, hx₁, hx₂, dite_false_right, forall_exists_index, true_and]
    exact fun _ _ k ↦ Subtype.ext_iff.mp <| hf₁ (hx₂ ▸ k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac7c615a93639fcce0f6f4037e75a124784dfe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
