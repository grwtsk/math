# sum_sq_div_moebius_eq_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfc3274f-9f97-1b97-50b3-8972f85a0b7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9831639-fc30-6174-dad1-e6716897c488",
  "kind": "lemma",
  "lexical_name": "sum_sq_div_moebius_eq_squarefree",
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
  "slug": "sum-sq-div-moebius-eq-squarefree--c9871c234068e91d89ddb05b",
  "source": {
    "blob": "3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 132,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9871c234068e91d89ddb05bd571066e2f4f8a54ea8159a883be64b52e6d6212",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9831639-fc30-6174-dad1-e6716897c488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sq_div_moebius_eq_squarefree (n : ℕ) (hn : n > 0) :
    sum_sq_div_moebius n = if Squarefree n then 1 else 0 := by
  induction n using Nat.strongRecOn with | _ n ih =>
  by_cases h_prime_pow : ∃ p k, p.Prime ∧ n = p ^ k;
  · obtain ⟨p, k, hp, rfl⟩ := h_prime_pow;
    rw [sum_sq_div_moebius_prime_pow]
    · rcases k with (_ | _ | k) <;> simp_all only [zero_add, pow_one, gt_iff_lt,
        Nat.one_lt_ofNat, ↓reduceIte, left_eq_ite_iff, one_ne_zero, imp_false, Decidable.not_not]
      · simp_all
      · exact hp.squarefree
      · rw [if_neg (by grind), if_neg (by rw [Nat.squarefree_pow_iff] <;> aesop)]
    · assumption
  · obtain ⟨m, n', hm, hn', h_coprime⟩ : ∃ m n' : ℕ, 1 < m ∧ 1 < n' ∧ m.Coprime n' ∧ n = m * n' := by
      obtain ⟨p, hp⟩ : ∃ p, p.Prime ∧ p ∣ n :=
        Nat.exists_prime_and_dvd fun rfl ↦ h_prime_pow ⟨2, 0, Nat.prime_two, rfl⟩
      obtain ⟨k, m, hm⟩ : ∃ k m, n = p ^ k * m ∧ ¬p ∣ m :=
        ⟨Nat.factorization n p, n / p ^ Nat.factorization n p, by
          rw [Nat.mul_div_cancel' (Nat.ordProj_dvd n p)], Nat.not_dvd_ordCompl hp.1 hn.ne'⟩
      simp only [gt_iff_lt, exists_and_left, not_exists, not_and] at *
      exact ⟨p ^ k, one_lt_pow₀ hp.1.one_lt (by specialize h_prime_pow p hp.1 k; aesop), m,
        Nat.one_lt_iff_ne_zero_and_ne_one.mpr ⟨by grind, by specialize h_prime_pow p hp.1 k; grind⟩,
          Nat.Coprime.pow_left _ (hp.1.coprime_iff_not_dvd.mpr hm.2), hm.1⟩
    have h_mul : sum_sq_div_moebius n = sum_sq_div_moebius m * sum_sq_div_moebius n' :=
      h_coprime.2.symm ▸ sum_sq_div_moebius_is_multiplicative_explicit.2 _ _ h_coprime.1
    simp_all [Nat.squarefree_mul_iff]
    aesop

@[blueprint
  "mobius-lemma-1-sub"
  (title := "Mobius Lemma 1, initial step")
  (statement := /--
    For any $x>0$, $$Q(x) = \sum_{k\leq x} M\left(\sqrt{\frac{x}{k}}\right)$$.
  -/)
  (proof := /--
    We compute
    $$Q(x) = \sum_{n\leq x} \sum_{d: d^2|n} \mu(d) = \sum_{k, d: k d^2\leq x} \mu(d)$$
    giving the claim.
  -/)
  (latexEnv := "sublemma")
  (discussion := 526)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
