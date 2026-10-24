# Criterion.val_two_L'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f34a9214-96a1-ff1c-8801-82928c0896c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d831af7-449d-0202-d2e3-6d1456563bab",
  "kind": "lemma",
  "lexical_name": "Criterion.val_two_L'",
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
  "slug": "criterion-val-two-l--759bb9706c0354b33e6c9a71",
  "source": {
    "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759bb9706c0354b33e6c9a71e8ccb64f31768326120067887202c9ee18db975d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d831af7-449d-0202-d2e3-6d1456563bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Criterion.val_two_L' (c : Criterion) : (c.L').factorization 2 = Nat.log 2 c.n := by
  have h_lcm : ∀ n : ℕ, n ≥ 1 → Nat.factorization (L n) 2 = Nat.log 2 n := by
    have h_lcm_exp : ∀ n : ℕ, n ≥ 1 → (Nat.factorization (Finset.lcm (Finset.Icc 1 n)
        (fun x ↦ x)) 2) = Finset.sup (Finset.Icc 1 n) (fun x ↦ Nat.factorization x 2) := by
      intros n hn
      have h_lcm_exp : ∀ {S : Finset ℕ}, (∀ x ∈ S, x ≠ 0) → (Nat.factorization (Finset.lcm S
          (fun x ↦ x)) 2) = Finset.sup S (fun x ↦ Nat.factorization x 2) := by
        intro S hS
        induction S using Finset.induction with
        | empty => simp
        | insert x S hxS ih =>
            simp_all only [lcm_insert]
            erw [Nat.factorization_lcm] <;> simp_all
      exact h_lcm_exp fun x hx ↦ by linarith [Finset.mem_Icc.mp hx]
    have h_sup : ∀ n : ℕ, n ≥ 1 → Finset.sup (Finset.Icc 1 n) (fun x ↦ Nat.factorization x 2) =
       Nat.log 2 n := fun n hn ↦ by
      apply le_antisymm
      · exact Finset.sup_le fun x hx ↦ Nat.le_log_of_pow_le (by decide) <|
          Nat.le_trans (Nat.le_of_dvd (by linarith [Finset.mem_Icc.mp hx])
          <| Nat.ordProj_dvd _ _) <| by linarith [Finset.mem_Icc.mp hx]
      · refine le_trans ?_ (Finset.le_sup <| Finset.mem_Icc.mpr ⟨Nat.one_le_pow _ _ zero_lt_two,
          Nat.pow_log_le_self 2 <| by linarith⟩)
        norm_num [Nat.Prime.factorization_self (prime_two)]
    aesop
  rw [show c.L' = L c.n / (∏ i, c.q i) by rfl, Nat.factorization_div] <;> norm_num [h_lcm, c.hn]
  · rw [Nat.factorization_eq_zero_of_not_dvd] <;> norm_num [Fin.prod_univ_three]
    norm_num [Nat.mul_mod, Nat.mod_mod, Nat.odd_iff.mp (Nat.Prime.odd_of_ne_two (c.hq 0)
      (by linarith [c.p_gt_two 0, c.q_gt_two 0])), Nat.odd_iff.mp (Nat.Prime.odd_of_ne_two (c.hq 1)
      (by linarith [c.p_gt_two 1, c.q_gt_two 1])), Nat.odd_iff.mp (Nat.Prime.odd_of_ne_two (c.hq 2)
      (by linarith [c.p_gt_two 2, c.q_gt_two 2]))]
  · exact prod_q_dvd_L c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
