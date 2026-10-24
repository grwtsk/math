# primeTheta_add_rankOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b108cce-e14f-127e-65e6-a98a0a39a120",
  "kind": "theorem",
  "lexical_name": "primeTheta_add_rankOne_abs_le",
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
  "slug": "primetheta-add-rankone-abs-le--a1a5895b0c4529ebe5e4a45e",
  "source": {
    "blob": "a24fc962a59a465c0ca6de0147b826241b5cb321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 431,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant8bed3e7f73dac0cc97df8b1795bb396cd54971a3eb728e517fc2f3e4d48060d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a5895b0c4529ebe5e4a45ef154f3c4b7ccd1c70cd19406d168d87776c50a31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant8bed3e7f73dac0cc97df8b1795bb396cd54971a3eb728e517fc2f3e4d48060d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b108cce-e14f-127e-65e6-a98a0a39a120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeTheta_add_rankOne_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q)| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have he : correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) =
      (correlationPrimeTheta A q -
        (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))) +
      ((∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t)) +
        sourceRankOneCoefficient A / (2 * q)) := by ring
  rw [he]
  calc
    _ ≤ |correlationPrimeTheta A q -
        (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| +
        |(∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t)) +
          sourceRankOneCoefficient A / (2 * q)| := abs_add_le _ _
    _ ≤ 2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q +
        (24 * Real.sqrt (65 / 3) / A) / Real.sqrt q := by
      apply add_le_add (primeTheta_sub_integral_abs_le A q hA hq)
      rw [primeSample_integral_eq_primitive A q hA hq]
      exact primePrimitiveSample_add_rankOne_abs_le A q hA (by linarith)
    _ = _ := by ring

/-- Unconditional homogeneity-defect bound for the actual real source remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant8bed3e7f73dac0cc97df8b1795bb396cd54971a3eb728e517fc2f3e4d48060d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant8bed3e7f73dac0cc97df8b1795bb396cd54971a3eb728e517fc2f3e4d48060d2.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24fc962a59a465c0ca6de0147b826241b5cb321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
