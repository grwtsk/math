# wienerShiftedCauchy_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e8b1223-4862-05c8-1246-718d2d28aa5a",
  "kind": "theorem",
  "lexical_name": "wienerShiftedCauchy_integral",
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
  "slug": "wienershiftedcauchy-integral--7801bcfe369cee4dab135eb6",
  "source": {
    "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7801bcfe369cee4dab135eb69ba2eccea585c546e2fbbbbce7a8a79bc58f6672",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e8b1223-4862-05c8-1246-718d2d28aa5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerShiftedCauchy_integral (T : ℝ) :
    (∫ y : ℝ, wienerShiftedCauchy T y) =
      2 * Real.pi ^ 2 := by
  have hc : 0 < wienerLogKernelC :=
    zero_lt_one.trans wienerLogKernelC_gt_one
  have hShift :
      (∫ y : ℝ, wienerShiftedCauchy T y) =
      ∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹ := by
    simpa [wienerShiftedCauchy] using
      (integral_sub_right_eq_self
        (fun y : ℝ =>
          (1 + (y / wienerLogKernelC) ^ 2)⁻¹)
        (Real.log T))
  have hScale :
      (∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹) =
      wienerLogKernelC * Real.pi := by
    simpa [smul_eq_mul, abs_of_pos hc,
      integral_univ_inv_one_add_sq] using
      (MeasureTheory.integral_comp_div
        (fun y : ℝ => (1 + y ^ 2)⁻¹)
        wienerLogKernelC)
  calc
    (∫ y : ℝ, wienerShiftedCauchy T y) =
        ∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹ :=
      hShift
    _ = wienerLogKernelC * Real.pi := hScale
    _ = 2 * Real.pi ^ 2 := by
      simp only [wienerLogKernelC]
      ring

/-- True pointwise nonnegativity of the translated Cauchy function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
