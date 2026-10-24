# scaledFactorialMellin_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1147859-761f-8e3b-9b93-bdf3c09a50b3",
  "kind": "theorem",
  "lexical_name": "scaledFactorialMellin_integral",
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
  "slug": "scaledfactorialmellin-integral--2df6bf07c2d27dbda1195587",
  "source": {
    "blob": "9e4bf48b7619584d233240b490ec314109fb4bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df6bf07c2d27dbda1195587383db9a7afadeb28964282b283cf67a547399c4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1147859-761f-8e3b-9b93-bdf3c09a50b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledFactorialMellin_integral {d : ℝ} (hd : 0 < d) :
    (∫ x in Ioi (0 : ℝ), factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)) =
      2 * fullPositiveKappa 1 / Real.sqrt d := by
  rw [setIntegral_congr_fun measurableSet_Ioi
    (fun x hx => scaled_factorial_density hd hx), integral_const_mul,
    integral_comp_mul_right_Ioi factorialMellinWeight 0 (inv_pos.mpr hd)]
  simp only [zero_mul, inv_inv, smul_eq_mul]
  have hp : d ^ (-(3 : ℝ) / 2) * d = (Real.sqrt d)⁻¹ := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_neg hd.le]
    calc
      d ^ (-(3 : ℝ) / 2) * d = d ^ (-(3 : ℝ) / 2) * d ^ (1 : ℝ) := by
        rw [Real.rpow_one]
      _ = d ^ (-(3 : ℝ) / 2 + 1) := (Real.rpow_add hd _ _).symm
      _ = _ := by norm_num
  have hm : (∫ x in Ioi (0 : ℝ), factorialMellinWeight x) = 2 * fullPositiveKappa 1 := by
    linarith [fullPositiveKappa_one_eq_factorial_mellin]
  rw [← mul_assoc, hp, hm]
  ring

/-- The genuine finite factorial inventory has full positive-axis Mellin L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4bf48b7619584d233240b490ec314109fb4bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
