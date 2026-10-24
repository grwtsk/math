# fixed_prime_sum_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28d4ff65-116e-e1c5-5342-7018c99ec0d6",
  "kind": "theorem",
  "lexical_name": "fixed_prime_sum_gt",
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
  "slug": "fixed-prime-sum-gt--3d64cf284b73d4da192531f8",
  "source": {
    "blob": "1199650af3cd29e38df5ba528874378b975f1cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d64cf284b73d4da192531f8ce63cde15866a31fd5fc32e96461150bde81b28f",
  "verification": {
    "reference": "docs/verification/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28d4ff65-116e-e1c5-5342-7018c99ec0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_prime_sum_gt : (11/10:ℝ) < primeConstant 2 + primeConstant 3 := by
  unfold primeConstant
  norm_num only [Nat.cast_ofNat]
  have h2 : (69/100:ℝ) ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (109/100:ℝ) ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
  have hs2 : 0 < Real.sqrt 2 := by positivity
  have hs3 : 0 < Real.sqrt 3 := by positivity
  have hd2 : (69/143:ℝ) ≤ Real.log 2 / Real.sqrt 2 := by
    apply (le_div_iff₀ hs2).mpr
    nlinarith only [sqrt_two_bounds.2, h2]
  have hd3 : (109/174:ℝ) ≤ Real.log 3 / Real.sqrt 3 := by
    apply (le_div_iff₀ hs3).mpr
    nlinarith only [sqrt_three_bounds.2, h3]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1199650af3cd29e38df5ba528874378b975f1cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
