# sourceCorrelation_eq_unit_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d4f9207-b155-2601-2559-142219d2b398",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_unit_integral",
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
  "slug": "sourcecorrelation-eq-unit-integral--25084f07f76b46168d0f50c1",
  "source": {
    "blob": "bfdfe5f23851544010fe27046b4664aa566715b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25084f07f76b46168d0f50c19dff93140442b23a5dd6d28fabc79206a750de17",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d4f9207-b155-2601-2559-142219d2b398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_unit_integral (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (A * v) =
      (∫ x in (v - 1)..1, unitDilation (1 / A ^ 2) x *
        unitDilation (1 / A ^ 2) (x - v)) / sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have hAn : A ≠ 0 := ne_of_gt hA0
  have hZ := source_normalization_pos A hA
  rw [sourceCorrelation_eq_overlap A v hA hv hv2]
  have he : (fun x ↦ normalizedInterior A x * normalizedInterior A (x - A * v)) =
      (fun x ↦ (unitDilation (1 / A ^ 2) (x / A) *
        unitDilation (1 / A ^ 2) (x / A - v)) / (A * sourceNormalization A)) := by
    funext x
    rw [normalizedInterior_eq_unitDilation, normalizedInterior_eq_unitDilation,
      div_mul_div_comm, ← sq, mul_pow, Real.sq_sqrt hA0.le, Real.sq_sqrt hZ.le]
    have hx : (x - A * v) / A = x / A - v := by field_simp
    rw [hx]
  rw [he, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ unitDilation (1 / A ^ 2) x * unitDilation (1 / A ^ 2) (x - v)) hAn]
  have hl : (A * v - A) / A = v - 1 := by field_simp
  rw [hl, div_self hAn]
  simp only [smul_eq_mul]
  field_simp

set_option maxHeartbeats 800000 in
-- Degree sixteen in x and degree eight in v require a larger finite ring-normalization budget.
/-- Collecting powers before integration retains the complete signed source polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdfe5f23851544010fe27046b4664aa566715b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
