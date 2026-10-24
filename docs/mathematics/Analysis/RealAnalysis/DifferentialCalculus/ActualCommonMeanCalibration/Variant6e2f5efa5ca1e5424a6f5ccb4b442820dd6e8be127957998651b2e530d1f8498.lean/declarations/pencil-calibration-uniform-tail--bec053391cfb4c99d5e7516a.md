# pencil_calibration_uniform_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e3d53fb-984a-60f2-631b-2939cdcd715b",
  "kind": "theorem",
  "lexical_name": "pencil_calibration_uniform_tail",
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
  "slug": "pencil-calibration-uniform-tail--bec053391cfb4c99d5e7516a",
  "source": {
    "blob": "e46e204bdb20abfb4870ac6686de23a48adb1e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec053391cfb4c99d5e7516a15e867fc2f68355b298208cc95009251c0dfe727",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e3d53fb-984a-60f2-631b-2939cdcd715b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pencil_calibration_uniform_tail {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A)
    (a b : ℝ) (ha : |a| ≤ 1) (hb : |b| ≤ 1) :
    |sourcePencil A a b+a*primeConstant 2+b*primeConstant 3-sourceMean A| ≤
      calibrationConstant/R^2 := by
  apply (pencil_calibration (hR.trans hRA) a b ha hb).trans
  apply div_le_div_of_nonneg_left calibrationConstant_nonneg (by positivity : 0 < R^2)
  nlinarith

#print axioms correlation_deriv_zero
#print axioms correlation_translation_square
#print axioms correlation_deficit_nonneg
#print axioms correlation_deficit_le_sharp
#print axioms primeAtom
#print axioms primeConstant
#print axioms primeDeficit
#print axioms sourceCore
#print axioms firstPrimeRest
#print axioms sourceMean
#print axioms sourcePencil
#print axioms primeAtom_eq_literal
#print axioms two_mem_inventory
#print axioms three_mem_inventory
#print axioms firstPrimeRest_eq_inventory
#print axioms squareRemainder_eq_core_higher
#print axioms sourceMean_eq_squareWork
#print axioms sourceMean_eq_remainder_sub_residual
#print axioms sourcePencil_eq_mean
#print axioms sourcePencil_plus_plus
#print axioms literal_four_mean
#print axioms primeDeficit_eq
#print axioms primeConstant_nonneg
#print axioms primeDeficit_nonneg
#print axioms primeDeficit_le_sharp
#print axioms calibrationConstant
#print axioms calibrationConstant_nonneg
#print axioms two_prime_calibration
#print axioms squareWork_mean_calibration
#print axioms pencil_calibration
#print axioms pencil_calibration_uniform_tail
end ContinuousResearch.ActualCommonMeanCalibration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e204bdb20abfb4870ac6686de23a48adb1e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
