# actual_coarse_calibration_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c364b16e-7782-784a-169e-6a73231ef758",
  "kind": "theorem",
  "lexical_name": "actual_coarse_calibration_lt",
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
  "slug": "actual-coarse-calibration-lt--c1604463129b2690e41bc97c",
  "source": {
    "blob": "1199650af3cd29e38df5ba528874378b975f1cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1604463129b2690e41bc97c27b004e84dbc11e5d5083d4a4ad7ecfecd5fbfb0",
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

Occurrence: `result:c364b16e-7782-784a-169e-6a73231ef758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_coarse_calibration_lt :
    (65/6:ℝ)*((Real.log 2)^3/Real.sqrt 2+(Real.log 3)^3/Real.sqrt 3) < 11 := by
  have hl2 : 0 ≤ Real.log 2 := by positivity
  have hl3 : 0 ≤ Real.log 3 := by positivity
  have hu2 : Real.log 2 ≤ (7/10:ℝ) := by linarith [Real.log_two_lt_d9]
  have hu3 : Real.log 3 ≤ (11/10:ℝ) := by linarith [Real.log_three_lt_d9]
  have hp2 : (Real.log 2)^3 ≤ (7/10:ℝ)^3 := by gcongr
  have hp3 : (Real.log 3)^3 ≤ (11/10:ℝ)^3 := by gcongr
  have hd2 : (Real.log 2)^3/Real.sqrt 2 ≤ (7/10:ℝ)^3/(7/5) := by
    apply (div_le_iff₀ (by positivity : 0<Real.sqrt 2)).mpr
    nlinarith only [hp2, sqrt_two_bounds.1]
  have hd3 : (Real.log 3)^3/Real.sqrt 3 ≤ (11/10:ℝ)^3/(173/100) := by
    apply (div_le_iff₀ (by positivity : 0<Real.sqrt 3)).mpr
    nlinarith only [hp3, sqrt_three_bounds.1]
  have hr : (65/6:ℝ)*((7/10)^3/(7/5)+(11/10)^3/(173/100)) < 11 := by
    have hh : (((65/6:ℚ)*((7/10)^3/(7/5)+(11/10)^3/(173/100)) : ℚ) : ℝ) <
        ((11:ℚ):ℝ) := by
      exact_mod_cast ContinuousResearch.FiniteRationalCertificate.fixed_prime_coarse_lt_eleven
    convert hh using 1 <;> norm_num
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1199650af3cd29e38df5ba528874378b975f1cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
