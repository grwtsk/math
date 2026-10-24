# completeBipartiteGraph_isContained_bipartiteDoubleCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dda38b198bc697f73e787ef8e6a1d50c17f015a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e708a57-2836-a518-d7f4-032ab25fff1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a18b914d-6ded-2c7a-9ea4-fb02a7a9936f",
  "kind": "theorem",
  "lexical_name": "completeBipartiteGraph_isContained_bipartiteDoubleCover",
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
  "slug": "completebipartitegraph-iscontained-bipartitedoublecover--5a80205973947d3db8705a1d",
  "source": {
    "blob": "8dda38b198bc697f73e787ef8e6a1d50c17f015a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 573,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a80205973947d3db8705a1d35141733d4e0e1cd0f0ffaee98ebb85afff940fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a18b914d-6ded-2c7a-9ea4-fb02a7a9936f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeBipartiteGraph_isContained_bipartiteDoubleCover
    {α β : Type*} [Finite α] [Finite β] [Nonempty α] [Nonempty β] :
    completeBipartiteGraph α β ⊑ G.bipartiteDoubleCover ↔ completeBipartiteGraph α β ⊑ G := by
  have : Fintype α := .ofFinite α
  have : Fintype β := .ofFinite β
  simp_rw [completeBipartiteGraph_isContained_iff]
  refine ⟨fun ⟨left, right, card_left, card_right, h⟩ ↦ ?_,
    fun ⟨left, right, card_left, card_right, h⟩ ↦ ?_⟩
  · simp_rw [← card_left, ← card_right]
    obtain ⟨l, hl⟩ : left.Nonempty := card_pos.mp <| card_pos.trans_le card_left.ge
    obtain ⟨r, hr⟩ : right.Nonempty := card_pos.mp <| card_pos.trans_le card_right.ge
    have hmem_left {l'} (hl' : l' ∈ left) :
        (l.isLeft → l'.isLeft) ∧ (l.isRight → l'.isRight) := by
      rcases l with l | l <;> rcases r with r | r <;> rcases l' with l' | l'
      all_goals solve | simp | simpa using h hl hr | simpa using h hl' hr
    have hmem_right {r'} (hr' : r' ∈ right) :
        (r.isLeft → r'.isLeft) ∧ (r.isRight → r'.isRight) := by
      rcases l with l | l <;> rcases r with r | r <;> rcases r' with r' | r'
      all_goals solve | simp | simpa using h hl hr | simpa using h hl hr'
    rcases l with l | l <;> rcases r with r | r
    · simpa using h hl hr
    · refine ⟨left.toLeft, right.toRight, ?_, ?_, fun i hi j hj ↦ ?_⟩
      · exact card_bij (fun i _ ↦ .inl i) (fun i hi ↦ by simpa using hi) (fun i hi j hj ↦ by simp)
          (fun i hi ↦ ⟨i.getLeft <| (hmem_left hi).left Sum.isLeft_inl, by simp [hi]⟩)
      · exact card_bij (fun j hj ↦ .inr j) (fun j hj ↦ by simpa using hj) (fun i hi j hj ↦ by simp)
          (fun j hj ↦ ⟨j.getRight <| (hmem_right hj).right Sum.isRight_inr, by simp [hj]⟩)
      · rw [mem_coe, mem_toLeft] at hi
        rw [mem_coe, mem_toRight] at hj
        simpa using h hi hj
    · refine ⟨left.toRight, right.toLeft, ?_, ?_, fun i hi j hj ↦ ?_⟩
      · exact card_bij (fun i _ ↦ .inr i) (fun i hi ↦ by simpa using hi) (fun i hi j hj ↦ by simp)
          (fun i hi ↦ ⟨i.getRight <| (hmem_left hi).right Sum.isRight_inr, by simp [hi]⟩)
      · exact card_bij (fun j hj ↦ .inl j) (fun j hj ↦ by simpa using hj) (fun i hi j hj ↦ by simp)
          (fun j hj ↦ ⟨j.getLeft <| (hmem_right hj).left Sum.isLeft_inl, by simp [hj]⟩)
      · rw [mem_coe, mem_toRight] at hi
        rw [mem_coe, mem_toLeft] at hj
        simpa using h hi hj
    · simpa using h hl hr
  · simp_rw [← card_left, ← card_right]
    refine ⟨left.map .inl, right.map .inr, card_map _, card_map _, fun i hi j hj ↦ ?_⟩
    simp_rw [mem_coe, mem_map, Function.Embedding.inl_apply,
      Function.Embedding.inr_apply] at hi hj
    obtain ⟨i', hi', hi⟩ := hi
    obtain ⟨j', hj', hj⟩ := hj
    simpa [← hi, ← hj] using h hi' hj'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dda38b198bc697f73e787ef8e6a1d50c17f015a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
