# smallest_onBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ff59342ec5383a568d0f98668d727728e63faee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1447040c-6f7a-6fe0-2e74-e9ab7891bd24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75e99c97-02bb-077a-ebd9-a5976c0088d3",
  "kind": "theorem",
  "lexical_name": "smallest_onBoundary",
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
  "slug": "smallest-onboundary--cf38e7a8bbe064823f6883fc",
  "source": {
    "blob": "4ff59342ec5383a568d0f98668d727728e63faee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 345,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf38e7a8bbe064823f6883fcd8c32184b29e4e8858e888eb6b29062b54747b67",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e99c97-02bb-077a-ebd9-a5976c0088d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallest_onBoundary {j} (bi : OnBoundary (mi_mem_bcubes : mi h v ∈ _) j) :
    ∃ x : ℝ, x ∈ c.side j.succ \ (cs <| mi h v).side j.succ ∧
      ∀ ⦃i'⦄ (_ : i' ∈ bcubes cs c),
        i' ≠ mi h v → (cs <| mi h v).b j.succ ∈ (cs i').side j.succ → x ∈ (cs i').side j.succ := by
  let i := mi h v; have hi : i ∈ bcubes cs c := mi_mem_bcubes
  obtain bi | bi := bi
  · refine ⟨(cs i).b j.succ + (cs i).w, ⟨?_, ?_⟩, ?_⟩
    · simp [i, side, bi, hw', w_lt_w h v hi]
    · intro h'; simpa [i, lt_irrefl] using h'.2
    intro i' hi' i'_i h2i'; constructor
    · apply le_trans h2i'.1
      simp [i, hw']
    apply lt_of_lt_of_le (add_lt_add_right (mi_strict_minimal i'_i.symm hi') _)
    simp [i, bi.symm, b_le_b hi']
  let s := bcubes cs c \ {i}
  have hs : s.Nonempty := by
    rcases (nontrivial_bcubes h v).exists_ne i with ⟨i', hi', h2i'⟩
    exact ⟨i', hi', h2i'⟩
  rcases Set.exists_min_image s (w <| cs ·) (Set.toFinite _) hs with ⟨i', ⟨hi', h2i'⟩, h3i'⟩
  rw [mem_singleton_iff] at h2i'
  let x := c.b j.succ + c.w - (cs i').w
  have hx : x < (cs i).b j.succ := by
    dsimp only [x]; rw [← bi, add_sub_assoc, add_lt_iff_neg_left, sub_lt_zero]
    apply mi_strict_minimal (Ne.symm h2i') hi'
  refine ⟨x, ⟨?_, ?_⟩, ?_⟩
  · simp only [side, neg_lt_zero, hw, add_lt_iff_neg_left, and_true, mem_Ico, sub_eq_add_neg, x]
    rw [add_assoc, le_add_iff_nonneg_right, ← sub_eq_add_neg, sub_nonneg]
    apply le_of_lt (w_lt_w h v hi')
  · simp only [side, not_and_or, not_lt, not_le, mem_Ico]; left; exact hx
  intro i'' hi'' h2i'' h3i''; constructor; swap; · apply lt_trans hx h3i''.2
  rw [le_sub_iff_add_le]
  grw [← t_le_t hi'', h3i' i'' ⟨hi'', h2i''⟩]

variable (h v)

/-- `mi` cannot lie on the boundary of the valley. Otherwise, the cube adjacent to it in the `j`-th
  direction will intersect one of the neighbouring cubes on the same boundary as `mi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff59342ec5383a568d0f98668d727728e63faee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
