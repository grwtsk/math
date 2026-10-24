# dampedDivisorCoefficient_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2f9fd9e12d60f5472948e377c07acfba5bf0ade",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc1601278aac10eb7bdd6a3108a708f0abacfa38d0ca0732f1f66a9f9be6ee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e148f987-2261-ba5c-ad1d-a3ea65665962",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ff037be-c5de-0429-69b5-d3489dd98e4e",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_first_order",
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
  "slug": "dampeddivisorcoefficient-first-order--4b917fad032fc780c4dba433",
  "source": {
    "blob": "e2f9fd9e12d60f5472948e377c07acfba5bf0ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant9dc1601278aac10eb7bdd6a3108a708f0abacfa38d0ca0732f1f66a9f9be6ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b917fad032fc780c4dba43358fa4437f5264f405ffab14d26aae5a56485fe76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant9dc1601278aac10eb7bdd6a3108a708f0abacfa38d0ca0732f1f66a9f9be6ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff037be-c5de-0429-69b5-d3489dd98e4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 1 ≤ n) :
    |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
      ε * ArithmeticFunction.vonMangoldt n| ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  by_cases h1 : n = 1
  · simp [h1, dampedDivisorCoefficient]
  by_cases hp : IsPrimePow n
  · obtain ⟨p, k, hprime, hk, rfl⟩ := (isPrimePow_nat_iff n).mp hp
    rw [if_neg h1, dampedDivisorCoefficient_prime_pow ε p k hprime hk,
      ArithmeticFunction.vonMangoldt_apply_pow hk.ne',
      ArithmeticFunction.vonMangoldt_apply_prime hprime, sub_zero]
    have hl0 : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hprime.one_le)
    have hp_le : p ≤ p ^ k := Nat.le_self_pow hk.ne' p
    have hl : Real.log (p : ℝ) ≤ Real.log ((p ^ k : ℕ) : ℝ) :=
      Real.log_le_log (by exact_mod_cast hprime.pos) (by exact_mod_cast hp_le)
    calc
      _ = |Real.exp (-(ε * Real.log (p : ℝ))) - 1 + ε * Real.log (p : ℝ)| := by
        rw [show 1 - Real.exp (-ε * Real.log (p : ℝ)) - ε * Real.log (p : ℝ) =
          -(Real.exp (-(ε * Real.log (p : ℝ))) - 1 + ε * Real.log (p : ℝ)) by ring,
          abs_neg]
      _ ≤ (ε * Real.log (p : ℝ)) ^ 2 := exp_negative_remainder _ (mul_nonneg hε hl0)
      _ ≤ _ := by
        have hs : Real.log (p : ℝ) ^ 2 ≤ Real.log ((p ^ k : ℕ) : ℝ) ^ 2 := by nlinarith
        nlinarith [mul_le_mul_of_nonneg_left hs (sq_nonneg ε)]
  · rw [if_neg h1, (ArithmeticFunction.vonMangoldt_eq_zero_iff).mpr hp, mul_zero,
      sub_zero, sub_zero, abs_of_nonneg (dampedDivisorCoefficient_nonneg ε hε n hn)]
    exact dampedDivisorCoefficient_le_sq_of_not_prime_pow ε hε n (by omega) hp

/-- The complete finite divisor prefix has its actual prime-power first-order approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant9dc1601278aac10eb7bdd6a3108a708f0abacfa38d0ca0732f1f66a9f9be6ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant9dc1601278aac10eb7bdd6a3108a708f0abacfa38d0ca0732f1f66a9f9be6ee1.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2f9fd9e12d60f5472948e377c07acfba5bf0ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
