# helly_theorem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d524ec0082946efc805e7f60082d26201a17a034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d86466aa-f690-31c0-b4c8-f5dc7357e7b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b67c34d3-793c-ac48-1889-a81ef062d27d",
  "kind": "theorem",
  "lexical_name": "helly_theorem'",
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
  "slug": "helly-theorem--3a870251e091ff3adaec109a",
  "source": {
    "blob": "d524ec0082946efc805e7f60082d26201a17a034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a870251e091ff3adaec109a06253c1db5c029c62f234f4aa0c34d6208e14d6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67c34d3-793c-ac48-1889-a81ef062d27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helly_theorem' {F : ι → Set E} {s : Finset ι}
    (h_convex : ∀ i ∈ s, Convex 𝕜 (F i))
    (h_inter : ∀ I ⊆ s, #I ≤ finrank 𝕜 E + 1 → (⋂ i ∈ I, F i).Nonempty) :
    (⋂ i ∈ s, F i).Nonempty := by
  classical
  obtain h_card | h_card := lt_or_le #s (finrank 𝕜 E + 1)
  · exact helly_theorem_corner (le_of_lt h_card) h_inter
  generalize hn : #s = n
  rw [hn] at h_card
  induction' n, h_card using Nat.le_induction with k h_card hk generalizing ι
  · exact helly_theorem_corner (le_of_eq hn) h_inter
  /- Construct a family of vectors indexed by `ι` such that the vector corresponding to `i : ι`
  is an arbitrary element of the intersection of all `F j` except `F i`. -/
  let a (i : s) : E := Set.Nonempty.some (s := ⋂ j ∈ s.erase i, F j) <| by
    apply hk (s := s.erase i)
    · exact fun i hi ↦ h_convex i (mem_of_mem_erase hi)
    · intro J hJ_ss hJ_card
      exact h_inter J (subset_trans hJ_ss (erase_subset i.val s)) hJ_card
    · simp only [coe_mem, card_erase_of_mem]; omega
  /- This family of vectors is not affine independent because the number of them exceeds the
  dimension of the space. -/
  have h_ind : ¬AffineIndependent 𝕜 a := by
    rw [← finrank_vectorSpan_le_iff_not_affineIndependent 𝕜 a (n := (k - 1))]
    · exact (Submodule.finrank_le (vectorSpan 𝕜 (range a))).trans (Nat.le_pred_of_lt h_card)
    · simp only [card_coe]; omega
  /- Use `radon_partition` to conclude there is a subset `I` of `s` and a point `p : E` which
  lies in the convex hull of either `a '' I` or `a '' Iᶜ`. We claim that `p ∈ ⋂ i ∈ s, F i`. -/
  obtain ⟨I, p, hp_I, hp_Ic⟩ := radon_partition h_ind
  use p
  apply mem_biInter
  intro i hi
  let i : s := ⟨i, hi⟩
  /- It suffices to show that for any subcollection `J` of `s` containing `i`, the convex
  hull of `a '' (s \ J)` is contained in `F i`. -/
  suffices ∀ J : Set s, (i ∈ J) → (convexHull 𝕜) (a '' Jᶜ) ⊆ F i by
    by_cases h : i ∈ I
    · exact this I h hp_Ic
    · apply this Iᶜ h; rwa [compl_compl]
  /- Given any subcollection `J` of `ι` containing `i`, because `F i` is convex, we need only
  show that `a j ∈ F i` for each `j ∈ s \ J`. -/
  intro J hi
  rw [convexHull_subset_iff (h_convex i.1 i.2)]
  rintro v ⟨j, hj, hj_v⟩
  rw [← hj_v]
  /- Since `j ∈ Jᶜ` and `i ∈ J`, we conclude that `i ≠ j`, and hence by the definition of `a`:
  `a j ∈ ⋂ F '' (Set.univ \ {j}) ⊆ F i`. -/
  apply mem_of_subset_of_mem (s₁ := ⋂ k ∈ (s.erase j), F k)
  · apply biInter_subset_of_mem
    simp only [erase_val]
    suffices h : i.val ∈ s.erase j by assumption
    simp only [mem_erase]
    constructor
    · exact fun h' ↦ hj ((show i = j from SetCoe.ext h') ▸ hi)
    · assumption
  · apply Nonempty.some_mem

/-- **Helly's theorem** for finite families of convex sets in its classical form.

If `F` is a family of `n` convex sets in a vector space of finite dimension `d`, with `n ≥ d + 1`,
and any `d + 1` sets of `F` intersect nontrivially, then all sets of `F` intersect nontrivially. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d524ec0082946efc805e7f60082d26201a17a034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
