# exists_isPerfectMatching_of_forall_ncard_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:016d8e29-5908-aa96-f036-1845e4f57ae1",
  "kind": "theorem",
  "lexical_name": "exists_isPerfectMatching_of_forall_ncard_le",
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
  "slug": "exists-isperfectmatching-of-forall-ncard-le--3b7ca1576289e100306dac27",
  "source": {
    "blob": "ac7c615a93639fcce0f6f4037e75a124784dfe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b7ca1576289e100306dac27250531cfa6dca96f5cb80c7f0d6ceefe36d2ae1b",
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

Occurrence: `result:016d8e29-5908-aa96-f036-1845e4f57ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isPerfectMatching_of_forall_ncard_le
    (h₁ : G.IsBipartiteWith p₁ p₂) (h₂ : ∀ s : Set V, s.ncard ≤ (⋃ x ∈ s, G.neighborSet x).ncard) :
    ∃ M : Subgraph G, M.IsPerfectMatching := by
  classical
  obtain ⟨b, hb₁, hb₂⟩ := exists_bijective_of_forall_ncard_le h₁ h₂
  use hall_subgraph (fun v ↦ b v) (fun v ↦ h₁.disjoint.notMem_of_mem_right (b v).property) hb₂
  have : p₁ ∪ Set.range (fun v ↦ (b v).1) = Set.univ := by
    rw [Set.range_comp', hb₁.surjective.range_eq, Subtype.coe_image_univ]
    exact union_eq_univ_of_forall_ncard_le h₁ h₂
  refine ⟨fun v _ ↦ ?_, Subgraph.isSpanning_iff.mpr this⟩
  simp only [dite_false_right]
  split
  · exact existsUnique_eq'
  · obtain ⟨x, _⟩ := hb₁.existsUnique ⟨v, by grind⟩
    exact ⟨x, by grind⟩

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variant07d625bdd5b291a88c4491f231253b535a119a815fcc726e8d4a8dae1908dd40.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac7c615a93639fcce0f6f4037e75a124784dfe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
