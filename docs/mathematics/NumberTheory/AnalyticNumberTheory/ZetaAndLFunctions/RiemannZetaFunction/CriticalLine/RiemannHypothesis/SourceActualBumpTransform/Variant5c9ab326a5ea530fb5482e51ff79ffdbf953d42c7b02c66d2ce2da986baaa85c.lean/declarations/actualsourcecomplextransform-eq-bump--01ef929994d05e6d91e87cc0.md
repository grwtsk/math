# actualSourceComplexTransform_eq_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa860477-92f3-5ce9-c219-6220e7cd6404",
  "kind": "theorem",
  "lexical_name": "actualSourceComplexTransform_eq_bump",
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
  "slug": "actualsourcecomplextransform-eq-bump--01ef929994d05e6d91e87cc0",
  "source": {
    "blob": "95f02533f7c7f4263ac952ecc054fc1460e3df82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ef929994d05e6d91e87cc0d67ec6706144419e32d6a4ba8dfdea9770794f9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa860477-92f3-5ce9-c219-6220e7cd6404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceComplexTransform_eq_bump {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualSourceComplexTransform A z =
      ((Real.sqrt A / Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        (z^2 - 1/4) * bumpLaplace ((A : ℂ) * z) := by
  have hp : 0 < A := by linarith
  have hb : Continuous (fun x : ℝ => (bumpInterior A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (bumpInterior_continuous A)).mul (by fun_prop)
  have he : Continuous (fun x : ℝ => (secondInterior A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (secondInterior_continuous A)).mul (by fun_prop)
  have hq : actualSourceComplexTransform A z = (Real.sqrt (sourceNormalization A) : ℂ)⁻¹ *
      ((∫ x in -A..A, (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) -
       (1/4 : ℂ) * (∫ x in -A..A, (bumpInterior A x : ℂ) *
         Complex.exp (z * (x : ℂ)))) := by
    unfold actualSourceComplexTransform
    rw [← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_sub (he.intervalIntegrable _ _)
        ((hb.const_mul (1/4 : ℂ)).intervalIntegrable _ _)]
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le (by linarith : -A ≤ A)] at hx
    rw [normalizedTest_eq_indicator A hp, indicator_of_mem hx]
    dsimp [normalizedInterior]
    push_cast
    ring
  rw [hq, actualSecondInteriorTransform_eq hA z, actualBumpInteriorTransform_eq hA z]
  push_cast
  ring

/-- The prescribed Mellin polynomial contains both actual annihilation endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f02533f7c7f4263ac952ecc054fc1460e3df82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
