# closedCenteredHalfInventory_sub_zetaMain_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8967b51d-94e0-2139-0b66-cd9c61c5fb7f",
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
  "slug": "closedcenteredhalfinventory-sub-zetamain-abs-le--a3570fde05cbaeee385920bc",
  "source": {
    "blob": "ca06da31ba9da09e2244501643f8cb1e9a3869f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3570fde05cbaeee385920bc42b7cf1c294b9d27433cf25c4d5718c8916f4b3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8967b51d-94e0-2139-0b66-cd9c61c5fb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–168.

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
          exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
        calc
          _ ≤ 1 * (2 / Real.sqrt (L : ℝ)) :=
            mul_le_mul hm (halfHarmonicQuotientDefect_abs_le L d hd1 hdL)
              (abs_nonneg _) (by norm_num)
          _ = _ := by ring
      _ = _ := by simp [Finset.sum_const, nsmul_eq_mul]; ring
  rw [closedCenteredHalfInventory_sub_zetaMain_eq U L hU hUL]
  apply (abs_sub _ _).trans
  calc
    _ ≤ 1 / Real.sqrt (L : ℝ) + 2 * (U : ℝ) / Real.sqrt (L : ℝ) := add_le_add ha hs
    _ = _ := by ring

/-- Every real A at least one keeps the original quotient L=K-1 and the signed zeta sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca06da31ba9da09e2244501643f8cb1e9a3869f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
