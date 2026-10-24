# eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18a2b700-96cd-2ff1-5a88-9b67b5fd1c02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6669fdef-f84f-f5b3-18d4-08073e79d776",
  "kind": "theorem",
  "lexical_name": "eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow",
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
  "slug": "eq-quo-mul-prod-pow-add-sum-rem-mul-prod-pow--d38514713a7290adeb82dca6",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 265,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38514713a7290adeb82dca67c36bb95de89885b6971b3615498c7857fcb216e",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6669fdef-f84f-f5b3-18d4-08073e79d776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow [Nontrivial R] {ι : Type*} [DecidableEq ι]
    {s : Finset ι} (f : R[X]) {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j)) (n : ι → ℕ) :
    ∃ (q : R[X]) (r : (i : ι) → Fin (n i) → R[X]),
      (∀ i ∈ s, ∀ j, (r i j).degree < (g i).degree) ∧
      f = q * (∏ i ∈ s, g i ^ n i) +
        ∑ i ∈ s, ∑ j, r i j * g i ^ j.1 * ∏ k ∈ s.erase i, g k ^ n k := by
  obtain ⟨q, r, -, hf⟩ := eq_quo_mul_prod_add_sum_rem_mul_prod f
    (fun i hi => (hg i hi).pow (n i))
    (hgg.mono' fun i j hij => hij.pow)
  have hc (i : ι) : ∃ (q' : R[X]) (r' : Fin (n i) → R[X]), i ∈ s →
      (∀ j, (r' j).degree < (g i).degree) ∧
      r i = q' * g i ^ (n i) + ∑ j, r' j * g i ^ j.1 :=
    if hi : i ∈ s then
      (eq_quo_mul_pow_add_sum_rem_mul_pow (r i) (hg i hi) (n i)).elim
        fun q' h => h.elim fun r' h => ⟨q', r', fun _ => h⟩
    else
      ⟨0, fun _ => 0, hi.elim⟩
  choose q' r' hr' hr using hc
  refine ⟨q + ∑ i ∈ s, q' i, r', hr', hf.trans ?_⟩
  rw [add_mul, add_assoc, add_right_inj, Finset.sum_mul, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [← Finset.mul_prod_erase s _ hi, hr i hi, add_mul, Finset.sum_mul, mul_assoc]

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`,
and for each `g i` let `n i` be a natural number. Then `f` can be written in the form
`(∏ i ∈ s, g i ^ n i) * (q + ∑ i ∈ s, ∑ j : Fin (n i), r i j / g i ^ (j + 1))`
in at most one way, where `degree (r i j) < degree (g i)` and the denominator cancels formally.
See `eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow` for the existence of such a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
