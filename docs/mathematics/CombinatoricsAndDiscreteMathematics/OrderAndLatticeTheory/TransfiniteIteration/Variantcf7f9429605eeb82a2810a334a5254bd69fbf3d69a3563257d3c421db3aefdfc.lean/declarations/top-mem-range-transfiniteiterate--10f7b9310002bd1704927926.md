# top_mem_range_transfiniteIterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57324d45ed4296dc121c08ca87c205fdb22cb9f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f145b8e2-7336-acff-4a79-2d6aedda8dcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:030aee80-4796-a702-3f0f-26b19ca1b283",
  "kind": "lemma",
  "lexical_name": "top_mem_range_transfiniteIterate",
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
  "slug": "top-mem-range-transfiniteiterate--10f7b9310002bd1704927926",
  "source": {
    "blob": "57324d45ed4296dc121c08ca87c205fdb22cb9f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10f7b9310002bd1704927926a004b7ac4a853773980397546a25cb1c045c57a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:030aee80-4796-a702-3f0f-26b19ca1b283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma top_mem_range_transfiniteIterate
    (hφ' : ∀ i ≠ (⊤ : I), i < φ i) (φtop : φ ⊤ = ⊤)
    (H : ¬ Function.Injective (fun (j : J) ↦ transfiniteIterate φ j i₀)) :
    ∃ (j : J), transfiniteIterate φ j i₀ = ⊤ := by
  have hφ (i : I) : i ≤ φ i := by
    by_cases hi : i = ⊤
    · subst hi
      rw [φtop]
    · exact (hφ' i hi).le
  obtain ⟨j₁, j₂, hj, eq⟩ : ∃ (j₁ j₂ : J) (hj : j₁ < j₂),
      transfiniteIterate φ j₁ i₀ = transfiniteIterate φ j₂ i₀ := by
    dsimp [Function.Injective] at H
    simp only [not_forall] at H
    obtain ⟨j₁, j₂, eq, hj⟩ := H
    by_cases hj' : j₁ < j₂
    · exact ⟨j₁, j₂, hj', eq⟩
    · simp only [not_lt] at hj'
      obtain hj' | rfl := hj'.lt_or_eq
      · exact ⟨j₂, j₁, hj', eq.symm⟩
      · simp at hj
  by_contra!
  suffices transfiniteIterate φ j₁ i₀ < transfiniteIterate φ j₂ i₀ by
    simp only [eq, lt_self_iff_false] at this
  have hj₁ : ¬ IsMax j₁ := by
    simp only [not_isMax_iff]
    exact ⟨_, hj⟩
  refine lt_of_lt_of_le (hφ' _ (this j₁)) ?_
  rw [← transfiniteIterate_succ φ i₀ j₁ hj₁]
  exact monotone_transfiniteIterate _ _ hφ (Order.succ_le_of_lt hj)

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57324d45ed4296dc121c08ca87c205fdb22cb9f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
