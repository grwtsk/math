# wienerShiftedLambda_logKernel_tsum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bee79e7-142d-e16b-ffaf-9c821c8dab9a",
  "kind": "theorem",
  "lexical_name": "wienerShiftedLambda_logKernel_tsum_le",
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
  "slug": "wienershiftedlambda-logkernel-tsum-le--1c641f8727d99637133295a8",
  "source": {
    "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 274,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c641f8727d99637133295a8dc12d9be904be636e24344f4deb927f3de9b7c0f",
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

Occurrence: `result:7bee79e7-142d-e16b-ffaf-9c821c8dab9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerShiftedLambda_logKernel_tsum_le
    {T : ℝ} (hT : 0 < T) :
    Summable
      (fun k : ℕ =>
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ∧
      (∑' k : ℕ,
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ≤
          (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
  obtain ⟨hSumW, hBoundW⟩ :=
    wienerShiftedLogWeight_tsum_le hT
  have hNonneg (k : ℕ) :
      0 ≤ wienerShiftedLambda k *
        wienerShiftedLogWeight T k :=
    mul_nonneg (wienerShiftedLambda_nonnegative k)
      (wienerShiftedLogWeight_nonnegative hT k)
  have hFinite (N : ℕ) :
      (∑ k ∈ Finset.range N,
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ≤
          (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
    calc
      _ ≤ (Real.log 4 + 4) *
          (∑ k ∈ Finset.range N,
            wienerShiftedLogWeight T k) :=
        wienerLambdaLogKernel_finite_majorization hT N
      _ ≤ (Real.log 4 + 4) *
          (∑' k : ℕ, wienerShiftedLogWeight T k) := by
        apply mul_le_mul_of_nonneg_left _ wienerChebyConstant_nonnegative
        exact hSumW.sum_le_tsum (Finset.range N)
          (fun k _ => wienerShiftedLogWeight_nonnegative hT k)
      _ ≤ (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) :=
        mul_le_mul_of_nonneg_left hBoundW
          wienerChebyConstant_nonnegative
  exact ⟨Real.summable_of_sum_range_le hNonneg hFinite,
    Real.tsum_le_of_sum_range_le hNonneg hFinite⟩

/-- Exact index adapter: the original wienerLambdaLogKernel has
zero at n=0, and the shifted kernel has values at n=k+1.
No Fourier factor or natural-number endpoint changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
