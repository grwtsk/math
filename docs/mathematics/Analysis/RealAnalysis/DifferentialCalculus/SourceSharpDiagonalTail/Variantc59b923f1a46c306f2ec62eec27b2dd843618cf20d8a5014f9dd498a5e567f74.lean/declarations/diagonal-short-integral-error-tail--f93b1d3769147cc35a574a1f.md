# diagonal_short_integral_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12e98ffe-dbeb-88e4-15cd-517b58087dca",
  "kind": "theorem",
  "lexical_name": "diagonal_short_integral_error_tail",
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
  "slug": "diagonal-short-integral-error-tail--f93b1d3769147cc35a574a1f",
  "source": {
    "blob": "ad70fca06768266d3e17312d181230123910dc41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f93b1d3769147cc35a574a1f2ab45b1d7be9d3bb1a85c1723e913f2798341c93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12e98ffe-dbeb-88e4-15cd-517b58087dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_short_integral_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (L : ℝ) (hL : 0 ≤ L) :
    |(∫ t in 0..L, diagonalCorrelation A t) - L| ≤
      2 * tailEnergyCoefficient Q * L ^ 3 / (3 * A ^ 2) := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous
  have he : (∫ t in 0..L, diagonalCorrelation A t) - L =
      ∫ t in 0..L, diagonalCorrelation A t - 1 := by
    rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _), intervalIntegral.integral_const]
    simp
  have ht (t : ℝ) : |diagonalCorrelation A t - 1| ≤
      (2 * tailEnergyCoefficient Q / A ^ 2) * t ^ 2 := by
    have h := actual_zero_taylor_tail hQ hQA (2*t)
    change |diagonalCorrelation A t - 1| ≤ _ at h
    convert h using 1
    ring
  rw [he]
  calc
    _ ≤ ∫ t in 0..L, |diagonalCorrelation A t - 1| :=
      intervalIntegral.abs_integral_le_integral_abs hL
    _ ≤ ∫ t in 0..L, (2 * tailEnergyCoefficient Q / A ^ 2) * t ^ 2 :=
      intervalIntegral.integral_mono_on hL
        ((hc.sub continuous_const).abs.intervalIntegrable _ _)
        ((continuous_const.mul (continuous_id.pow 2)).intervalIntegrable _ _)
        (fun t _ => ht t)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_pow]
      norm_num
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad70fca06768266d3e17312d181230123910dc41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
