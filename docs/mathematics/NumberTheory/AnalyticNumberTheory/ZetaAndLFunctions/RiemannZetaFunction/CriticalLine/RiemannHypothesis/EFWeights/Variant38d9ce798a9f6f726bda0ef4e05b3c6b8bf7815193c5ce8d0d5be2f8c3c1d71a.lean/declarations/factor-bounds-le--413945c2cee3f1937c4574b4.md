# factor_bounds_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1782132d-e4aa-b8b1-09ee-7a3870f72a66",
  "kind": "lemma",
  "lexical_name": "factor_bounds_le",
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
  "slug": "factor-bounds-le--413945c2cee3f1937c4574b4",
  "source": {
    "blob": "989e3cba3f152f630a41de9f9ad775f9ec0a9611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413945c2cee3f1937c4574b463644b361af01732add4f3ea12bd7871f742036d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1782132d-e4aa-b8b1-09ee-7a3870f72a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factor_bounds_le (w : TestWeight.WindowAt P T C) (z : ℂ) (hz : |z.im| ≤ 3/4) (a : ℝ) :
    ‖P.phiHat T (z - a)‖
        ≤ (1 + C) * Real.exp (3/4 * (P.L T / 2)) * P.L T * (1 + (z.re - a) ^ 2)⁻¹ ∧
      |z.re - a| * ‖P.phiHat T (z - a)‖
        ≤ 2 * C * Real.exp (3/4 * (P.L T / 2)) * (1 + (z.re - a) ^ 2)⁻¹ := by
  have hL0 : 0 ≤ P.L T := le_trans zero_le_one w.one_le_L
  have hC0 : 0 ≤ C := w.C_nonneg
  have him : (z - a).im = z.im := by simp
  have hre : (z - a).re = z.re - a := by simp
  have hexp : Real.exp (|(z - a).im| * (P.L T / 2)) ≤ Real.exp (3/4 * (P.L T / 2)) := by
    rw [him]; exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hz (by linarith))
  have hK : 0 ≤ (1 + (z.re - a) ^ 2)⁻¹ := by positivity
  constructor
  · have h := w.norm_phiHat_le (z - a)
    rw [hre, div_eq_mul_inv] at h
    have h1 : 0 ≤ 1 + C := by linarith
    exact h.trans (mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hexp h1) hL0) hK)
  · have h := w.abs_re_mul_norm_phiHat_le (z - a)
    rw [hre, div_eq_mul_inv] at h
    have h4 : 0 ≤ 2 * C := by positivity
    exact h.trans (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hexp h4) hK)

/-- pair bounds at |Im z| ≤ 3/4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989e3cba3f152f630a41de9f9ad775f9ec0a9611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
