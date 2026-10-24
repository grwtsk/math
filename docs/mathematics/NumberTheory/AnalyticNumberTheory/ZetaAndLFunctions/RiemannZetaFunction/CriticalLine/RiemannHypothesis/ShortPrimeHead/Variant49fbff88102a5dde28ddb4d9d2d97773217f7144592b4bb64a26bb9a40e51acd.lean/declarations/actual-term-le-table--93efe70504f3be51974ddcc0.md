# actual_term_le_table

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3404dead-d8ad-4172-350b-28ba9528d40e",
  "kind": "theorem",
  "lexical_name": "actual_term_le_table",
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
  "slug": "actual-term-le-table--93efe70504f3be51974ddcc0",
  "source": {
    "blob": "62b11b13c1cbfcf0c532a586509d0f4002cd7900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93efe70504f3be51974ddcc000d21e5e24711337c31a4de99534aed7b670b5a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3404dead-d8ad-4172-350b-28ba9528d40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_term_le_table {n : ℕ} (hn : n ∈ Finset.Icc 2 54) :
    ordinaryPrimeCoefficient n * (1 / Real.sqrt n - 1 / Real.sqrt 54) ≤ termUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  have hlo := table_inv_lower hn
  have hhi := table_inv_upper hn
  have hlo54 := table_inv_lower (n := 54) (by norm_num)
  have hhi54 := table_inv_upper (n := 54) (by norm_num)
  have hk : 0 ≤ 1 / Real.sqrt n - 1 / Real.sqrt 54 := by
    have hns : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast (by omega : 0 < n))
    have hle : Real.sqrt (n : ℝ) ≤ Real.sqrt 54 := Real.sqrt_le_sqrt (by exact_mod_cast hn54)
    have h := one_div_le_one_div_of_le hns hle
    linarith
  have hkup : 1 / Real.sqrt n - 1 / Real.sqrt 54 ≤ invUpper n - invLower 54 := by linarith
  have hklow : invLower n - invUpper 54 ≤ 1 / Real.sqrt n - 1 / Real.sqrt 54 := by linarith
  rw [ordinaryPrimeCoefficient_at_source_index hn2]
  unfold termUpper
  by_cases hp : n.Prime
  · rw [if_pos hp]
    have hlog := table_prime_log_upper hn hp
    have hprod := mul_le_mul_of_nonneg_right hlog hk
    have hproduct := mul_le_mul_of_nonneg_left hkup (table_log_upper_nonneg hn)
    nlinarith
  · rw [if_neg hp, table_log_upper_zero hn hp, zero_mul]
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b11b13c1cbfcf0c532a586509d0f4002cd7900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
