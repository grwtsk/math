# sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5629241e74412e7f343152304c81fbc5124e8821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a67ab97d-4b7b-7fda-002e-38f95c31a78e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4e33aa2-9218-ba99-df7f-4a1de4ace216",
  "kind": "theorem",
  "lexical_name": "sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum",
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
  "slug": "sum-filter-pairs-eq-sum-filter-antidiagonal-powersetlen-sum--c6325701df985257113210c4",
  "source": {
    "blob": "5629241e74412e7f343152304c81fbc5124e8821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6325701df985257113210c45b9a2ff2cc6754e6905f26230a608deb9c9e50aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4e33aa2-9218-ba99-df7f-4a1de4ace216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum (k : ℕ)
    (f : Finset σ × σ → MvPolynomial σ R) :
    (∑ t in filter (fun t ↦ card t.fst < k) (pairs σ k), f t) =
    ∑ a in (antidiagonal k).filter (fun a ↦ a.fst < k),
    ∑ A in powersetLen a.fst univ, (∑ j, f (A, j)) := by
  have equiv_i (a : ℕ × ℕ) (ha : a ∈ (antidiagonal k).filter (fun a ↦ a.fst < k)) :=
    sum_filter_pairs_eq_sum_powersetLen_mem_filter_antidiagonal_sum σ R k a ha f
  simp only [← sum_congr rfl equiv_i]
  have pdisj : Set.PairwiseDisjoint ((antidiagonal k).filter (fun a ↦ a.fst < k))
      (fun (a : ℕ × ℕ) ↦ (filter (fun t ↦ card t.fst = a.fst) (pairs σ k))) := by
    simp only [Set.PairwiseDisjoint, Disjoint, pairs, filter_filter, ne_eq, le_eq_subset,
      bot_eq_empty]
    intro x hx y hy xny s hs hs' a ha
    simp only [mem_univ, forall_true_left, Prod.forall] at hs hs'
    rw [ne_eq, antidiagonal_congr (mem_filter.mp hx).left (mem_filter.mp hy).left,
      ← (mem_filter.mp (hs ha)).right.right, ← (mem_filter.mp (hs' ha)).right.right] at xny
    exact (xny rfl).elim
  have hdisj := @sum_disjiUnion _ _ _ f _ ((antidiagonal k).filter (fun a ↦ a.fst < k))
    (fun (a : ℕ × ℕ) ↦ (filter (fun t ↦ card t.fst = a.fst) (pairs σ k))) pdisj
  have disj_equiv : disjiUnion ((antidiagonal k).filter (fun a ↦ a.fst < k))
      (fun a ↦ filter (fun t ↦ card t.fst = a.fst) (pairs σ k)) pdisj =
      filter (fun t ↦ card t.fst < k) (pairs σ k) := by
    ext a
    rw [mem_disjiUnion, mem_filter]
    refine' ⟨_, fun haf ↦ ⟨(card a.fst, k - card a.fst), _, _⟩⟩
    · rintro ⟨n, hnk, ha⟩
      have hnk' : n.fst ≤ k := by apply le_of_lt; aesop
      aesop
    · simp_all only [mem_antidiagonal, mem_filter, mem_pairs, disjiUnion_eq_biUnion,
        add_tsub_cancel_of_le]
    · simp_all only [mem_antidiagonal, mem_filter, mem_pairs, disjiUnion_eq_biUnion, implies_true]
  simp only [← hdisj, disj_equiv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629241e74412e7f343152304c81fbc5124e8821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
