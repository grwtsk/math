# quo_add_sum_rem_mul_pow_inverse_unique

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
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4034674b-dc7b-2e4b-2da0-8bd8e6a3eacb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5395295-0a4a-4cfd-8808-99deb31d8f41",
  "kind": "theorem",
  "lexical_name": "quo_add_sum_rem_mul_pow_inverse_unique",
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
  "slug": "quo-add-sum-rem-mul-pow-inverse-unique--acdbff15fb9a9323984dbbc2",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 378,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acdbff15fb9a9323984dbbc22c960701fc6ae8cf9e24bbf6cc1ee97b5a05014f",
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

Occurrence: `result:f5395295-0a4a-4cfd-8808-99deb31d8f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_add_sum_rem_mul_pow_inverse_unique [FaithfulSMul R[X] K] {ι : Type*}
    {s : Finset ι} {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j))
    {n : ι → ℕ} {gi : ι → K} (hgi : ∀ i ∈ s, gi i * algebraMap R[X] K (g i) = 1)
    {q₁ q₂ : R[X]} {r₁ r₂ : (i : ι) → Fin (n i) → R[X]}
    (hr₁ : ∀ i ∈ s, ∀ j, (r₁ i j).degree < (g i).degree)
    (hr₂ : ∀ i ∈ s, ∀ j, (r₂ i j).degree < (g i).degree)
    (hf : algebraMap R[X] K q₁ + ∑ i ∈ s, ∑ j, algebraMap R[X] K (r₁ i j) * gi i ^ (j.1 + 1) =
      algebraMap R[X] K q₂ + ∑ i ∈ s, ∑ j, algebraMap R[X] K (r₂ i j) * gi i ^ (j.1 + 1)) :
    q₁ = q₂ ∧ ∀ i ∈ s, r₁ i = r₂ i := by
  classical
  suffices hff : ∀ {q : R[X]} {r : (i : ι) → Fin (n i) → R[X]},
      (algebraMap R[X] K q + ∑ i ∈ s, ∑ j,
        algebraMap R[X] K (r i j) * gi i ^ (j.1 + 1)) * ∏ i ∈ s, algebraMap R[X] K (g i) ^ n i =
      algebraMap R[X] K (q * ∏ i ∈ s, g i ^ n i + ∑ i ∈ s,
        ∑ j : Fin (n i), r i j.rev * g i ^ j.1 * ∏ k ∈ s.erase i, g k ^ n k) by
    apply_fun (· * ∏ i ∈ s, algebraMap R[X] K (g i) ^ n i) at hf
    rw [hff, hff, (FaithfulSMul.algebraMap_injective R[X] K).eq_iff] at hf
    obtain ⟨hq, hr⟩ := quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique hg hgg
      (fun i hi j => hr₁ i hi j.rev) (fun i hi j => hr₂ i hi j.rev) hf
    exact ⟨hq, fun i hi => funext fun j => j.rev_rev ▸ congrFun (hr i hi) j.rev⟩
  intro q r
  simp_rw [add_mul, Finset.sum_mul, map_add, map_sum, map_mul, map_prod, map_pow]
  refine congrArg (_ + ·) (Finset.sum_congr rfl fun i hi => ?_)
  refine (Equiv.sum_comp Fin.revPerm _).symm.trans (Fintype.sum_congr _ _ fun j => ?_)
  rw [Fin.revPerm_apply, ← Finset.mul_prod_erase s _ hi, ← mul_assoc,
    mul_assoc (algebraMap R[X] K (r i j.rev))]
  refine congrArg (algebraMap R[X] K (r i j.rev) * · * _) ?_
  rw [← mul_one (gi i ^ (j.rev.1 + 1)), ← @one_pow K _ j, ← hgi i hi,
    mul_pow, ← mul_assoc, ← pow_add, Fin.val_rev, Nat.add_right_comm, Nat.add_assoc,
    Nat.sub_add_cancel (by lia), mul_right_comm, ← mul_pow, hgi i hi, one_pow, one_mul]

end Div

section Field

variable (K : Type*) [Field K] [Algebra R[X] K] [FaithfulSMul R[X] K]

section NDenominators

open algebraMap

/-- Let `R` be an integral domain and `f : R[X]`. Let `s` be a finite index set.
Then a fraction of the form `f / ∏ i ∈ s, g i` evaluated in a field `K` containing `R[X]`
can be rewritten as `q + ∑ i ∈ s, r i / g i`, where
`degree (r i) < degree (g i)`, provided that the `g i` are monic and pairwise coprime.
See `quo_add_sum_rem_div_unique` for the uniqueness of this representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
