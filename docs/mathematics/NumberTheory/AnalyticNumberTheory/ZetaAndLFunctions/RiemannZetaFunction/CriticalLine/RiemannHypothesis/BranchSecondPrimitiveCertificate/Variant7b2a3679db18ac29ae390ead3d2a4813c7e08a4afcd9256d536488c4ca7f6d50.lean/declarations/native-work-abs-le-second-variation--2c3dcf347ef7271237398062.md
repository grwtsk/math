# native_work_abs_le_second_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42c8cfc4-415a-cf86-5558-5177dbb0fbb0",
  "kind": "theorem",
  "lexical_name": "native_work_abs_le_second_variation",
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
  "slug": "native-work-abs-le-second-variation--2c3dcf347ef7271237398062",
  "source": {
    "blob": "ce6f383d1e2429b10d9b048e343499c30ddcfdc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3dcf347ef72712373980625f54da5f8e6c2f002716eef5c49d3d9583522b9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42c8cfc4-415a-cf86-5558-5177dbb0fbb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_work_abs_le_second_variation {A B : ℝ} (hA : 1 ≤ A)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ B * secondVariationPrice A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc : ContDiff ℝ 2 (deriv (nativeKernel A)) := (nativeKernel_contDiff_three hp).deriv'
  have hd := hc.continuous_deriv (by norm_num)
  have hq := (nativeSecondPrimitive_contDiff A).continuous
  have hi : IntervalIntegrable (fun t ↦ nativeSecondPrimitive A t *
      deriv (deriv (nativeKernel A)) t) volume (2 * Real.log A) (2 * A) :=
    (hq.mul hd).intervalIntegrable _ _
  have hv : IntervalIntegrable (fun t ↦ |deriv (deriv (nativeKernel A)) t|) volume
      (2 * Real.log A) (2 * A) := hd.abs.intervalIntegrable _ _
  rw [native_work_eq_second_primitive_integral hA, abs_neg]
  calc
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A),
        |nativeSecondPrimitive A t * deriv (deriv (nativeKernel A)) t| :=
      intervalIntegral.abs_integral_le_integral_abs (native_window_order hA)
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A), B * |deriv (deriv (nativeKernel A)) t| := by
      apply intervalIntegral.integral_mono_on (native_window_order hA) hi.abs (hv.const_mul B)
      intro t ht
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hB t ht) (abs_nonneg _)
    _ = B * secondVariationPrice A := intervalIntegral.integral_const_mul _ _

/-- The source-specific second primitive certificate has the proved 9336/A price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce6f383d1e2429b10d9b048e343499c30ddcfdc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
