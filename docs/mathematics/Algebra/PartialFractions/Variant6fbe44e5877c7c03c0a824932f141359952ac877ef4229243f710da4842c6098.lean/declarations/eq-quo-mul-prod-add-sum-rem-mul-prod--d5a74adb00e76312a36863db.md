# eq_quo_mul_prod_add_sum_rem_mul_prod

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
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fa23fb5-285f-1f96-2df6-e2e1d2a6ef43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93fbe252-b057-00ab-909f-4ef07dbb4a4c",
  "kind": "theorem",
  "lexical_name": "eq_quo_mul_prod_add_sum_rem_mul_prod",
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
  "slug": "eq-quo-mul-prod-add-sum-rem-mul-prod--d5a74adb00e76312a36863db",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 152,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5a74adb00e76312a36863dbb6e7e4671f19febc38d9ca058cdf1fa08f1fd65c",
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

Occurrence: `result:93fbe252-b057-00ab-909f-4ef07dbb4a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_quo_mul_prod_add_sum_rem_mul_prod [Nontrivial R] {ι : Type*} [DecidableEq ι]
    {s : Finset ι} (f : R[X]) {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j)) :
    ∃ (q : R[X]) (r : ι → R[X]),
      (∀ i ∈ s, (r i).degree < (g i).degree) ∧
      f = q * (∏ i ∈ s, g i) + ∑ i ∈ s, r i * ∏ k ∈ s.erase i, g k := by
  induction s using Finset.cons_induction with
  | empty => simp
  | cons i s hi ih =>
    rw [Finset.forall_mem_cons] at hg
    rw [Finset.coe_cons, Set.pairwise_insert] at hgg
    obtain ⟨q, r, -, hf⟩ := ih hg.2 hgg.1
    have hjs {j : ι} (hj : j ∈ s) : i ≠ j := fun hij => hi (hij ▸ hj)
    have hc (j : ι) : ∃ a b, j ∈ s → a * g i + b * g j = 1 :=
      if h : j ∈ s ∧ i ≠ j then
        (hgg.2 j h.1 h.2).1.elim fun a h => h.elim fun b h => ⟨a, b, fun _ => h⟩
      else
        ⟨0, 0, fun hj => (h ⟨hj, hjs hj⟩).elim⟩
    choose a b hab using hc
    refine ⟨(q + ∑ j ∈ s, r j * b j %ₘ g i) /ₘ g i + ∑ j ∈ s, (r j * b j /ₘ g i + r j * a j /ₘ g j),
      Function.update (fun j => r j * a j %ₘ g j) i ((q + ∑ j ∈ s, r j * b j %ₘ g i) %ₘ g i),
      ?_, hf.trans ?_⟩
    · rw [Finset.forall_mem_cons, Function.update_self]
      refine ⟨degree_modByMonic_lt _ hg.1, fun j hj => ?_⟩
      rw [Function.update_of_ne (hjs hj).symm]
      exact degree_modByMonic_lt _ (hg.2 j hj)
    · rw [Finset.prod_cons, Finset.sum_cons, Function.update_self, Finset.erase_cons, add_mul,
        add_add_add_comm, ← mul_assoc, ← add_mul, add_comm (_ * g i), ← mul_comm (g i),
        modByMonic_add_div, add_mul, add_assoc, add_right_inj, Finset.sum_mul,
        Finset.sum_mul, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun j hj => ?_
      rw [Function.update_of_ne (hjs hj).symm, Finset.erase_cons_of_ne _ (hjs hj),
        Finset.prod_cons, ← Finset.mul_prod_erase s g hj]
      simp_rw [← mul_assoc, ← add_mul]
      refine congrArg (· * _) ?_
      rw [add_mul, add_mul, ← add_assoc, ← add_assoc, ← add_mul, ← mul_comm (g i),
        modByMonic_add_div, add_assoc, mul_right_comm (_ /ₘ g j),
        ← add_mul, add_comm (_ * g j) (_ %ₘ g j), mul_comm (_ /ₘ g j),
        modByMonic_add_div, mul_assoc, mul_assoc, ← mul_add,
        add_comm, hab j hj, mul_one]

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`.
Then `f` can be written in the form `(∏ i ∈ s, g i) * (q + ∑ i ∈ s, r i / g i)`
in at most one way, where `degree (r i) < degree (g i)` and the denominator cancels formally.
See `eq_quo_mul_prod_add_sum_rem_mul_prod` for the existence of such a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
