# native_work_abs_le_primitive_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:860a1afe-dd1f-3992-aad1-c9962655382e",
  "kind": "theorem",
  "lexical_name": "native_work_abs_le_primitive_variation",
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
  "slug": "native-work-abs-le-primitive-variation--5da8a5157b02fa1530277abc",
  "source": {
    "blob": "e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 204,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da8a5157b02fa1530277abcf9e6cdf798a5139b7ffdabf9bc26771387c0cbbf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:860a1afe-dd1f-3992-aad1-c9962655382e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_work_abs_le_primitive_variation {A B : ℝ} (hA : 1 ≤ A)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativePrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ B * variationPrice A := by
  have hA0 := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  have hi := native_primitive_product_intervalIntegrable hA
  have hv : IntervalIntegrable (fun t ↦ |deriv (nativeKernel A) t|) volume
      (2 * Real.log A) (2 * A) :=
    (nativeKernel_contDiff hA0).continuous_deriv_one.abs.intervalIntegrable _ _
  rw [native_work_eq_primitive_integral hA]
  calc
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A),
        |nativePrimitive A t * deriv (nativeKernel A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (native_window_order hA)
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A), B * |deriv (nativeKernel A) t| := by
      apply intervalIntegral.integral_mono_on (native_window_order hA) hi.abs (hv.const_mul B)
      intro t ht
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hB t ht) (abs_nonneg _)
    _ = B * variationPrice A := intervalIntegral.integral_const_mul _ _

/-- The one-sided certificate charges only the signs that make a positive contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
