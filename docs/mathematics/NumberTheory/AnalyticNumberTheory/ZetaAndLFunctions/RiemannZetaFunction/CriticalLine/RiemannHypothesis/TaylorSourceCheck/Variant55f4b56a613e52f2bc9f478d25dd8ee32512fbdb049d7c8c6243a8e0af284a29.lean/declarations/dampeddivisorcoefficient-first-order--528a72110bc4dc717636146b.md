# dampedDivisorCoefficient_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b89b835-2bde-d9fe-a01a-8065bf5507f7",
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
  "slug": "dampeddivisorcoefficient-first-order--528a72110bc4dc717636146b",
  "source": {
    "blob": "ab578cd649fbfcc2da04432f2af89df915bcf94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant55f4b56a613e52f2bc9f478d25dd8ee32512fbdb049d7c8c6243a8e0af284a29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528a72110bc4dc717636146b5239f38709231277dffd4cd0f49bf548eac571ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant55f4b56a613e52f2bc9f478d25dd8ee32512fbdb049d7c8c6243a8e0af284a29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b89b835-2bde-d9fe-a01a-8065bf5507f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–67.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant55f4b56a613e52f2bc9f478d25dd8ee32512fbdb049d7c8c6243a8e0af284a29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorSourceCheck/Variant55f4b56a613e52f2bc9f478d25dd8ee32512fbdb049d7c8c6243a8e0af284a29.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab578cd649fbfcc2da04432f2af89df915bcf94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
