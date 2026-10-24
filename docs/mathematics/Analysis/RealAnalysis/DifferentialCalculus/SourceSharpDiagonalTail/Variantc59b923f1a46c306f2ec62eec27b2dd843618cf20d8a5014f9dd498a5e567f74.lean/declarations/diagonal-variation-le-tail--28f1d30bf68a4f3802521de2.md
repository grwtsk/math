# diagonal_variation_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4a2c644-d4ed-08ca-6cfa-8aa94119b252",
  "kind": "theorem",
  "lexical_name": "diagonal_variation_le_tail",
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
  "slug": "diagonal-variation-le-tail--28f1d30bf68a4f3802521de2",
  "source": {
    "blob": "ad70fca06768266d3e17312d181230123910dc41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f1d30bf68a4f3802521de218f66080bae38a11ac4f390b8ccaac76fbd1873d",
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

Occurrence: `result:c4a2c644-d4ed-08ca-6cfa-8aa94119b252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_variation_le_tail {Q A a b : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ A) :
    (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤
      2 * Real.sqrt (tailEnergyCoefficient Q) := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous_deriv_one.abs
  have hi : (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤
      ∫ t in a..b, (2 * Real.sqrt (tailEnergyCoefficient Q) / A : ℝ) :=
    intervalIntegral.integral_mono_on hab (hc.intervalIntegrable a b)
      (continuous_const.intervalIntegrable a b) (fun t _ => diagonal_deriv_abs_le_tail hQ hQA t)
  rw [intervalIntegral.integral_const] at hi
  simp only [smul_eq_mul] at hi
  have hp : 0 < A := by linarith
  apply hi.trans
  rw [← mul_div_assoc]
  apply (div_le_iff₀ hp).mpr
  nlinarith [Real.sqrt_nonneg (tailEnergyCoefficient Q)]

/-- The actual lower correction is cubic in its unaltered physical logarithmic endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad70fca06768266d3e17312d181230123910dc41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
