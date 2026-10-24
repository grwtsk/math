# IsChain.exists_maxChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac38d602-479a-7128-1a6f-481a8514b3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a639ec-81fc-1880-a1ec-9c0136c40e04",
  "kind": "theorem",
  "lexical_name": "IsChain.exists_maxChain",
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
  "slug": "ischain-exists-maxchain--b7aeea11358dbb47d46a3180",
  "source": {
    "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7aeea11358dbb47d46a3180ebe42a34cbc19f8ec80d8ab2102e78e5126e576f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a639ec-81fc-1880-a1ec-9c0136c40e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsChain.exists_maxChain (hc : IsChain r c) : ∃ M, @IsMaxChain _ r M ∧ c ⊆ M := by
  -- Porting note: the first three lines replace the following two lines in mathlib3.
  -- The mathlib3 `obtain` supports holes for proof obligations, this is not yet implemented in 4.
  -- obtain ⟨M, ⟨_, hM₀⟩, hM₁, hM₂⟩ :=
  --   zorn_subset_nonempty { s | c ⊆ s ∧ IsChain r s } _ c ⟨Subset.rfl, hc⟩
  have H := zorn_subset_nonempty { s | c ⊆ s ∧ IsChain r s } ?_ c ⟨Subset.rfl, hc⟩
  · obtain ⟨M, ⟨_, hM₀⟩, hM₁, hM₂⟩ := H
    exact ⟨M, ⟨hM₀, fun d hd hMd => (hM₂ _ ⟨hM₁.trans hMd, hd⟩ hMd).symm⟩, hM₁⟩
  rintro cs hcs₀ hcs₁ ⟨s, hs⟩
  refine'
    ⟨⋃₀cs, ⟨fun _ ha => Set.mem_sUnion_of_mem ((hcs₀ hs).left ha) hs, _⟩, fun _ =>
      Set.subset_sUnion_of_mem⟩
  rintro y ⟨sy, hsy, hysy⟩ z ⟨sz, hsz, hzsz⟩ hyz
  obtain rfl | hsseq := eq_or_ne sy sz
  · exact (hcs₀ hsy).right hysy hzsz hyz
  cases' hcs₁ hsy hsz hsseq with h h
  · exact (hcs₀ hsz).right (h hysy) hzsz hyz
  · exact (hcs₀ hsy).right hysy (h hzsz) hyz
#align is_chain.exists_max_chain IsChain.exists_maxChain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
