# lamLogPow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e979f24e-efc4-12d2-77b5-68638e3843b9",
  "kind": "lemma",
  "lexical_name": "lamLogPow_le",
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
  "slug": "lamlogpow-le--68336df327720caf5a1577be",
  "source": {
    "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 249,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68336df327720caf5a1577beef6c6656621a542f10cc1ca46e15232f57245171",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e979f24e-efc4-12d2-77b5-68638e3843b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lamLogPow_le : ∀ (k n : ℕ), (lamLog ^ k) n ≤ Real.log n ^ k * (Λ ^ k) n
  | 0, n => by simp
  | k + 1, n => by
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · simp
      rw [pow_succ lamLog k, pow_succ (Λ : ArithmeticFunction ℝ) k, pow_succ (Real.log (n:ℝ)) k,
        ArithmeticFunction.mul_apply, ArithmeticFunction.mul_apply, mul_sum]
      refine sum_le_sum fun x hx => ?_
      have hx1 : x.1 ∣ n := Nat.fst_mem_divisors_of_mem_antidiagonal hx |> Nat.dvd_of_mem_divisors
      have hx2 : x.2 ∣ n := Nat.snd_mem_divisors_of_mem_antidiagonal hx |> Nat.dvd_of_mem_divisors
      have hx1pos : 0 < x.1 := Nat.pos_of_dvd_of_pos hx1 hn
      have hx2pos : 0 < x.2 := Nat.pos_of_dvd_of_pos hx2 hn
      have hl1 : Real.log x.1 ≤ Real.log n :=
        Real.log_le_log (by exact_mod_cast hx1pos) (by exact_mod_cast Nat.le_of_dvd hn hx1)
      have hl2 : Real.log x.2 ≤ Real.log n :=
        Real.log_le_log (by exact_mod_cast hx2pos) (by exact_mod_cast Nat.le_of_dvd hn hx2)
      have h01 : 0 ≤ Real.log x.1 := Real.log_natCast_nonneg _
      have h02 : 0 ≤ Real.log x.2 := Real.log_natCast_nonneg _
      rw [lamLog_apply]
      calc (lamLog ^ k) x.1 * (Λ x.2 * Real.log x.2)
          ≤ (Real.log x.1 ^ k * (Λ ^ k) x.1) * (Λ x.2 * Real.log x.2) :=
            mul_le_mul_of_nonneg_right (lamLogPow_le k x.1)
              (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg h02)
        _ ≤ (Real.log n ^ k * (Λ ^ k) x.1) * (Λ x.2 * Real.log n) :=
            mul_le_mul (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ h01 hl1 k) (lamPow_nonneg _ _))
              (mul_le_mul_of_nonneg_left hl2 ArithmeticFunction.vonMangoldt_nonneg)
              (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg h02)
              (mul_nonneg (pow_nonneg (Real.log_natCast_nonneg n) k) (lamPow_nonneg _ _))
        _ = Real.log n ^ k * Real.log n * ((Λ ^ k) x.1 * Λ x.2) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
