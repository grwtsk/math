# pow_apply_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b432b40601406036d22e5331727584d8c3c0dfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a015cc3-41ab-eb6b-f6ea-d923f94cc5cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b56329c4-2ac9-479b-3fac-c6596acc7f1e",
  "kind": "theorem",
  "lexical_name": "pow_apply_squarefree",
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
  "slug": "pow-apply-squarefree--a522c711c63a4af0ea173bb8",
  "source": {
    "blob": "1b432b40601406036d22e5331727584d8c3c0dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a522c711c63a4af0ea173bb83c295e59f8f9e384d4afcea97eacaabf075603cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b56329c4-2ac9-479b-3fac-c6596acc7f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_apply_squarefree {f : ArithmeticFunction ℝ} (hf : ∀ n, ¬IsPrimePow n → f n = 0) :
    ∀ (k : ℕ) {N : ℕ}, Squarefree N →
      (f ^ k) N = if ω N = k then (k.factorial : ℝ) * ∏ p ∈ N.primeFactors, f p else 0
  | 0, N, hN => by
      rw [pow_zero, ArithmeticFunction.one_apply]
      by_cases h1 : N = 1
      · subst h1; simp
      · have hω : ω N ≠ 0 := by
          rw [Ne, ArithmeticFunction.cardDistinctFactors_eq_zero]
          have := hN.ne_zero; omega
        rw [if_neg h1, if_neg hω]
  | k + 1, N, hN => by
      have hN0 : N ≠ 0 := hN.ne_zero
      rw [pow_succ, ArithmeticFunction.mul_apply,
        Nat.sum_divisorsAntidiagonal' (f := fun a b => (f ^ k) a * f b)]
      -- only prime divisors b contribute
      have hsub : N.primeFactors ⊆ N.divisors := fun p hp =>
        Nat.mem_divisors.mpr ⟨Nat.dvd_of_mem_primeFactors hp, hN0⟩
      have hext : ∑ b ∈ N.primeFactors, (f ^ k) (N / b) * f b
          = ∑ b ∈ N.divisors, (f ^ k) (N / b) * f b := by
        refine sum_subset hsub fun b hb hbp => ?_
        have hbd : b ∣ N := Nat.dvd_of_mem_divisors hb
        have hfb : f b = 0 := by
          refine hf b fun hpp => hbp ?_
          exact Nat.mem_primeFactors.mpr ⟨prime_of_isPrimePow_dvd_squarefree hN hbd hpp, hbd, hN0⟩
        rw [hfb, mul_zero]
      rw [← hext]
      -- evaluate each term by the induction hypothesis at N/p
      have hterm : ∀ p ∈ N.primeFactors, (f ^ k) (N / p) * f p =
          if ω N = k + 1 then (k.factorial : ℝ) * ∏ q ∈ N.primeFactors, f q else 0 := by
        intro p hp
        rw [pow_apply_squarefree hf k (squarefree_div_of_mem hN hp), primeFactors_div_of_mem hN hp]
        have hω := cardDistinctFactors_div_of_mem hN hp
        by_cases hk : ω N = k + 1
        · have : ω (N / p) = k := by omega
          rw [if_pos this, if_pos hk, mul_assoc, prod_erase_mul _ _ hp]
        · have : ω (N / p) ≠ k := by omega
          rw [if_neg this, if_neg hk, zero_mul]
      rw [sum_congr rfl hterm, sum_const, ← cardDistinctFactors_eq_card_primeFactors, nsmul_eq_mul]
      by_cases hk : ω N = k + 1
      · rw [if_pos hk, if_pos hk, hk, Nat.factorial_succ]; push_cast; ring
      · rw [if_neg hk, if_neg hk, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b432b40601406036d22e5331727584d8c3c0dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
