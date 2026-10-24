# mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75be6eed-8e0f-12b4-ab5a-72a9e8d4aefa",
  "kind": "theorem",
  "lexical_name": "mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse",
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
  "slug": "mul-prod-pow-inverse-eq-quo-add-sum-rem-mul-pow-inverse--c6d6800709869404eb23e939",
  "source": {
    "blob": "a7d428a0106e2389422edfbed7ffe3a903f744e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 349,
    "path": "GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6d6800709869404eb23e9394e4306c0c6b1fa08d5a68d9d6453644e7a0fe7b2",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75be6eed-8e0f-12b4-ab5a-72a9e8d4aefa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse [Nontrivial R] {ι : Type*}
    {s : Finset ι} (f : R[X]) {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j))
    (n : ι → ℕ) {gi : ι → K} (hgi : ∀ i ∈ s, gi i * algebraMap R[X] K (g i) = 1) :
    ∃ (q : R[X]) (r : (i : ι) → Fin (n i) → R[X]),
      (∀ i ∈ s, ∀ j, (r i j).degree < (g i).degree) ∧
      algebraMap R[X] K f * ∏ i ∈ s, gi i ^ n i =
        algebraMap R[X] K q + ∑ i ∈ s, ∑ j,
          algebraMap R[X] K (r i j) * gi i ^ (j.1 + 1) := by
  classical
  obtain ⟨q, r, hr, hf⟩ := eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow f hg hgg n
  refine ⟨q, fun i j => r i j.rev, fun i hi j => hr i hi j.rev, ?_⟩
  rw [hf, map_add, map_mul, map_prod, add_mul, mul_assoc, ← Finset.prod_mul_distrib]
  have hc (x : ι) (hx : x ∈ s) : (algebraMap R[X] K) (g x ^ n x) * gi x ^ n x = 1 := by
    rw [map_pow, ← mul_pow, mul_comm, hgi x hx, one_pow]
  rw [Finset.prod_congr rfl hc, Finset.prod_const_one,
    mul_one, add_right_inj, map_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [map_sum, Finset.sum_mul, ← Equiv.sum_comp Fin.revPerm]
  refine Fintype.sum_congr _ _ fun j => ?_
  rw [Fin.revPerm_apply, map_mul, map_prod, ← Finset.prod_erase_mul s _ hi,
    ← mul_rotate', mul_assoc, ← Finset.prod_mul_distrib,
    Finset.prod_congr rfl fun x hx => hc x (Finset.mem_of_mem_erase hx),
    Finset.prod_const_one, mul_one, map_mul, map_pow, mul_left_comm]
  refine congrArg (_ * ·) ?_
  rw [← mul_one (gi i ^ (j.1 + 1)), ← @one_pow K _ j.rev, ← hgi i hi,
    mul_pow, ← mul_assoc, ← pow_add, Fin.val_rev, Nat.add_sub_cancel' (by lia)]

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`,
and for each `g i` let `n i` be a natural number.
Let `K` be an algebra over `R[X]` containing inverses `gi i` for each `g i`.
Then a fraction of the form `f * ∏ i ∈ s, gi i ^ n i` can be rewritten as
`q + ∑ i ∈ s, ∑ j : Fin (n i), r i j * gi i ^ (j + 1)`
in at most one way, where `degree (r i j) < degree (g i)`.
See `mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse` for the
existence of such a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d428a0106e2389422edfbed7ffe3a903f744e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
