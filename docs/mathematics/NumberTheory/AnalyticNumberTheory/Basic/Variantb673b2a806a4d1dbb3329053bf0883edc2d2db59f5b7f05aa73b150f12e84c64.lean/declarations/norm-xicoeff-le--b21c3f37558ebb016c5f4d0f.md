# norm_xiCoeff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f03056a-6502-982e-8707-5a15aa3157cc",
  "kind": "lemma",
  "lexical_name": "norm_xiCoeff_le",
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
  "slug": "norm-xicoeff-le--b21c3f37558ebb016c5f4d0f",
  "source": {
    "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 360,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21c3f37558ebb016c5f4d0fd01f94b67cbe4d0b81fadc06a766f6d7f60a9e4c",
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

Occurrence: `result:5f03056a-6502-982e-8707-5a15aa3157cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_xiCoeff_le (Λs : ℂ) (N : ℕ) :
    ‖xiCoeff Λs N‖ ≤ Λ N + Real.log N * Fmaj ‖Λs‖⁻¹ N := by
  unfold xiCoeff Fmaj
  refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
  · refine (norm_sum_le _ _).trans ?_
    rw [mul_sum]
    refine sum_le_sum fun j _ => ?_
    rw [norm_mul, norm_pow, norm_inv, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (lamLogConv_nonneg j N)]
    calc ‖Λs‖⁻¹ ^ (j + 1) * lamLogConv j N ≤ ‖Λs‖⁻¹ ^ (j + 1) * (Real.log N * (Λ ^ (j + 1)) N) :=
          mul_le_mul_of_nonneg_left (lamLogConv_le j N) (pow_nonneg (inv_nonneg.mpr (norm_nonneg _)) _)
      _ = Real.log N * (‖Λs‖⁻¹ ^ (j + 1) * (Λ ^ (j + 1)) N) := by ring

/-- squared form used by the diagonal sums: ‖C‖² ≤ 2Λ(N)² + 2 log²N · F_x(N)². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
