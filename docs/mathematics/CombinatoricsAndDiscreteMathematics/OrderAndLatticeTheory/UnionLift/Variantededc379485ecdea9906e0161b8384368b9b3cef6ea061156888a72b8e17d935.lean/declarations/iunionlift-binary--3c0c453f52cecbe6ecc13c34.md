# iUnionLift_binary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7db0431687fcacd957e88c1f1bf50f798d63a5a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c3aa351-e264-4e55-5669-d2ee3890b6b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eedb2827-0644-89d0-1ac2-a913aa2de250",
  "kind": "theorem",
  "lexical_name": "iUnionLift_binary",
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
  "slug": "iunionlift-binary--3c0c453f52cecbe6ecc13c34",
  "source": {
    "blob": "7db0431687fcacd957e88c1f1bf50f798d63a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c0c453f52cecbe6ecc13c347117b474915d5b3b5f975edbdba6daa820352263",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eedb2827-0644-89d0-1ac2-a913aa2de250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnionLift_binary (dir : Directed (· ≤ ·) S) (op : T → T → T) (opi : ∀ i, S i → S i → S i)
    (hopi :
      ∀ i x y,
        Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) (opi i x y) =
          op (Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) x)
            (Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) y))
    (opβ : β → β → β) (h : ∀ (i) (x y : S i), f i (opi i x y) = opβ (f i x) (f i y)) (x y : T) :
    iUnionLift S f hf T (le_of_eq hT') (op x y) =
      opβ (iUnionLift S f hf T (le_of_eq hT') x) (iUnionLift S f hf T (le_of_eq hT') y) := by
  subst hT'
  obtain ⟨i, hi⟩ := Set.mem_iUnion.1 x.prop
  obtain ⟨j, hj⟩ := Set.mem_iUnion.1 y.prop
  rcases dir i j with ⟨k, hik, hjk⟩
  rw [iUnionLift_of_mem x (hik hi), iUnionLift_of_mem y (hjk hj), ← h k]
  have hx : x = Set.inclusion (Set.subset_iUnion S k) ⟨x, hik hi⟩ := by
    cases x
    rfl
  have hy : y = Set.inclusion (Set.subset_iUnion S k) ⟨y, hjk hj⟩ := by
    cases y
    rfl
  have hxy : (Set.inclusion (Set.subset_iUnion S k) (opi k ⟨x, hik hi⟩ ⟨y, hjk hj⟩) : α) ∈ S k :=
    (opi k ⟨x, hik hi⟩ ⟨y, hjk hj⟩).prop
  conv_lhs => rw [hx, hy, ← hopi, iUnionLift_of_mem _ hxy]

end UnionLift

variable {S : ι → Set α} {f : ∀ i, S i → β}
  {hf : ∀ (i j) (x : α) (hxi : x ∈ S i) (hxj : x ∈ S j), f i ⟨x, hxi⟩ = f j ⟨x, hxj⟩}
  {hS : iUnion S = univ}

/-- Glue together functions defined on each of a collection `S` of sets that cover a type. See
also `Set.iUnionLift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db0431687fcacd957e88c1f1bf50f798d63a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
