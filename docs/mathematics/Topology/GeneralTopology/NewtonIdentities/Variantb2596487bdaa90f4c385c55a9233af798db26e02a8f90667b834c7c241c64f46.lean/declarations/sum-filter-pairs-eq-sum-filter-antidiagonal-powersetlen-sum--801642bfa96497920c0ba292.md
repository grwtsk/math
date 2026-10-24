# sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1951dccf-4044-54b1-69b0-318d71a41400",
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
  "slug": "sum-filter-pairs-eq-sum-filter-antidiagonal-powersetlen-sum--801642bfa96497920c0ba292",
  "source": {
    "blob": "773db926f49a78b4497fa25e32e884194465082d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:801642bfa96497920c0ba2927cb663f36131ee7262c5f43120bece7cdb54ddc9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1951dccf-4044-54b1-69b0-318d71a41400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–198.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773db926f49a78b4497fa25e32e884194465082d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
