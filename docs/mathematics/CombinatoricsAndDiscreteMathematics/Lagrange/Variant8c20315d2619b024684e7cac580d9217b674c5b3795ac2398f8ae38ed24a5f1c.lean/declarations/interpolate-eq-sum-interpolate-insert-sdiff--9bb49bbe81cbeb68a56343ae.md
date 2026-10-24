# interpolate_eq_sum_interpolate_insert_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b871f66-f34c-37a0-9250-47062b1b4e4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3e0c8d6-3852-8765-c84a-265bfbba73bb",
  "kind": "theorem",
  "lexical_name": "interpolate_eq_sum_interpolate_insert_sdiff",
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
  "slug": "interpolate-eq-sum-interpolate-insert-sdiff--9bb49bbe81cbeb68a56343ae",
  "source": {
    "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 403,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb49bbe81cbeb68a56343ae2d1e6c6c9dfff6b06c3398fd37802c6c78afaeb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e0c8d6-3852-8765-c84a-265bfbba73bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interpolate_eq_sum_interpolate_insert_sdiff (hvt : Set.InjOn v t) (hs : s.Nonempty)
    (hst : s ⊆ t) :
    interpolate t v r = ∑ i ∈ s, interpolate (insert i (t \ s)) v r * Lagrange.basis s v i := by
  symm
  refine eq_interpolate_of_eval_eq _ hvt (lt_of_le_of_lt (degree_sum_le _ _) ?_) fun i hi => ?_
  · simp_rw [Nat.cast_withBot, Finset.sup_lt_iff (WithBot.bot_lt_coe #t), degree_mul]
    intro i hi
    have hs : 1 ≤ #s := Nonempty.card_pos ⟨_, hi⟩
    have hst' : #s ≤ #t := card_le_card hst
    have H : #t = 1 + (#t - #s) + (#s - 1) := by
      rw [add_assoc, tsub_add_tsub_cancel hst' hs, ← add_tsub_assoc_of_le (hs.trans hst'),
        Nat.succ_add_sub_one, zero_add]
    rw [degree_basis (Set.InjOn.mono hst hvt) hi, H, WithBot.coe_add, Nat.cast_withBot,
      WithBot.add_lt_add_iff_right (@WithBot.coe_ne_bot _ (#s - 1))]
    convert!
      degree_interpolate_lt _
        (hvt.mono (coe_subset.mpr (insert_subset_iff.mpr ⟨hst hi, sdiff_subset⟩)))
    rw [card_insert_of_notMem (notMem_sdiff_of_mem_right hi), card_sdiff_of_subset hst, add_comm]
  · simp_rw [eval_finsetSum, eval_mul]
    by_cases hi' : i ∈ s
    · rw [← add_sum_erase _ _ hi', eval_basis_self (hvt.mono hst) hi',
        eval_interpolate_at_node _
          (hvt.mono (coe_subset.mpr (insert_subset_iff.mpr ⟨hi, sdiff_subset⟩)))
          (mem_insert_self _ _),
        mul_one, add_eq_left]
      refine sum_eq_zero fun j hj => ?_
      rcases mem_erase.mp hj with ⟨hij, _⟩
      rw [eval_basis_of_ne hij hi', mul_zero]
    · have H : (∑ j ∈ s, eval (v i) (Lagrange.basis s v j)) = 1 := by
        rw [← eval_finsetSum, sum_basis (hvt.mono hst) hs, eval_one]
      rw [← mul_one (r i), ← H, mul_sum]
      refine sum_congr rfl fun j hj => ?_
      congr
      exact
        eval_interpolate_at_node _ (hvt.mono (insert_subset_iff.mpr ⟨hst hj, sdiff_subset⟩))
          (mem_insert.mpr (Or.inr (mem_sdiff.mpr ⟨hi, hi'⟩)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce7a74eea2aa244e90b856c63ff1976d2943728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
