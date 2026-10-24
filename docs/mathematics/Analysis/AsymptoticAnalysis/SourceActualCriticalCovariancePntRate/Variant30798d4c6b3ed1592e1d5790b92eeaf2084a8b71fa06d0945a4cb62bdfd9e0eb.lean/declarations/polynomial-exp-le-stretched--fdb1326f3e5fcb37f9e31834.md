# polynomial_exp_le_stretched

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a383b5e4-889b-2234-191e-645bb6035ba1",
  "kind": "theorem",
  "lexical_name": "polynomial_exp_le_stretched",
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
  "slug": "polynomial-exp-le-stretched--fdb1326f3e5fcb37f9e31834",
  "source": {
    "blob": "d4538c82f9efd3111ad419460bcab90df9a44a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 126,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant30798d4c6b3ed1592e1d5790b92eeaf2084a8b71fa06d0945a4cb62bdfd9e0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdb1326f3e5fcb37f9e318347bfb5a11be5b79a8704986e7ae2b5b8c1fc23a29",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant30798d4c6b3ed1592e1d5790b92eeaf2084a8b71fa06d0945a4cb62bdfd9e0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a383b5e4-889b-2234-191e-645bb6035ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_exp_le_stretched (c : ℝ) :
    ∀ᶠ A : ℝ in atTop, A ^ 4 * Real.exp (-A / 2) ≤
      Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hr : Tendsto (fun A : ℝ => c * A ^ (-(9 / 10 : ℝ))) atTop (𝓝 0) := by
    simpa only [mul_zero] using
      (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 9 / 10)).const_mul c
  have he : Tendsto (fun A : ℝ => A ^ 4 * Real.exp (-A / 4)) atTop (𝓝 0) := by
    convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (4 : ℝ) (1 / 4) (by norm_num)
      using 1
    funext A
    congr 2
    ring
  filter_upwards [hr.eventually_lt_const (by norm_num : (0 : ℝ) < 1 / 4),
    he.eventually_lt_const (by norm_num : (0 : ℝ) < 1),
    eventually_ge_atTop (1 : ℝ)] with A hratio hpoly hA
  have hpos : 0 < A := by linarith
  have hp : A ^ ((1 : ℝ) / 10) = A ^ (-(9 / 10 : ℝ)) * A := by
    calc
      _ = A ^ (-(9 / 10 : ℝ) + 1) := by congr 1; norm_num
      _ = _ := by rw [Real.rpow_add hpos, Real.rpow_one]
  have hlin : c * A ^ ((1 : ℝ) / 10) ≤ A / 4 := by
    rw [hp]
    have h := mul_le_mul_of_nonneg_right hratio.le hpos.le
    nlinarith
  have hex : Real.exp (-A / 4) ≤ Real.exp (-c * A ^ ((1 : ℝ) / 10)) :=
    Real.exp_le_exp.mpr (by linarith)
  calc
    _ = (A ^ 4 * Real.exp (-A / 4)) * Real.exp (-A / 4) := by
      rw [mul_assoc, ← Real.exp_add]
      congr 2
      ring
    _ ≤ Real.exp (-A / 4) := by nlinarith [Real.exp_pos (-A / 4)]
    _ ≤ _ := hex

/-- The actual fourth-power normalized covariance has a genuine stretched-exponential rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant30798d4c6b3ed1592e1d5790b92eeaf2084a8b71fa06d0945a4cb62bdfd9e0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant30798d4c6b3ed1592e1d5790b92eeaf2084a8b71fa06d0945a4cb62bdfd9e0eb.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4538c82f9efd3111ad419460bcab90df9a44a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
