# closedCenteredHalfInventory_sub_zetaMain_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5bfce6a-1412-93cf-5c2c-3002c6df5222",
  "kind": "theorem",
  "lexical_name": "closedCenteredHalfInventory_sub_zetaMain_abs_le",
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
  "slug": "closedcenteredhalfinventory-sub-zetamain-abs-le--8fcd57bf94ef7643953999d9",
  "source": {
    "blob": "346dd4667ca102db0e97f551ac007d919898c4db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fcd57bf94ef7643953999d9591bc17b4cad99899d42c2bfc66aa753b1ec6185",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5bfce6a-1412-93cf-5c2c-3002c6df5222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedCenteredHalfInventory_sub_zetaMain_abs_le
    (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    |closedCenteredHalfInventory U L - actualCenteredHalfZetaMain U| ≤
      (2 * (U : ℝ) + 1) / Real.sqrt (L : ℝ) := by
  have hL := hU.trans hUL
  have ht := halfHarmonicFractionalTail_bounds L hL
  have ha : |alpha U * halfHarmonicFractionalTail L| ≤ 1 / Real.sqrt (L : ℝ) := by
    rw [abs_mul, abs_of_nonneg ht.1]
    calc
      _ ≤ 1 * halfHarmonicFractionalTail L :=
        mul_le_mul_of_nonneg_right (actual_alpha_abs_le_one U) ht.1
      _ ≤ _ := by simpa using ht.2
  have hs : |∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * halfHarmonicQuotientDefect L d| ≤
        2 * (U : ℝ) / Real.sqrt (L : ℝ) := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, 2 / Real.sqrt (L : ℝ) := by
        apply Finset.sum_le_sum
        intro d hd
        have hd1 := (Finset.mem_Icc.mp hd).1
        have hdL := (Finset.mem_Icc.mp hd).2.trans hUL
        rw [abs_mul]
        have hm : |(moebius d : ℝ)| ≤ 1 := by
          exact realMoebius_abs_le_one d
        calc
          _ ≤ 1 * (2 / Real.sqrt (L : ℝ)) :=
            mul_le_mul hm (halfHarmonicQuotientDefect_abs_le L d hd1 hdL)
              (abs_nonneg _) (by norm_num)
          _ = _ := by ring
      _ = _ := by simp [Finset.sum_const, nsmul_eq_mul]; ring
  rw [closedCenteredHalfInventory_sub_zetaMain_eq U L hU hUL]
  exact (abs_sub _ _).trans (by linarith)

/-- Every real A at least one keeps the original quotient L=K-1 and the signed zeta sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346dd4667ca102db0e97f551ac007d919898c4db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
