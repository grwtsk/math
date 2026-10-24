# iteratedDifference_sampling_sum_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:681eea5a-8082-577c-2d70-e208e7591039",
  "kind": "theorem",
  "lexical_name": "iteratedDifference_sampling_sum_abs_le",
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
  "slug": "iterateddifference-sampling-sum-abs-le--0ae765f840309399d4438ae4",
  "source": {
    "blob": "dc0c528a79568af1f92d78fe186300e2eafce3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 536,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ae765f840309399d4438ae4fac67c79d5a6627d027ef03b934246e3aa374a27",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:681eea5a-8082-577c-2d70-e208e7591039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDifference_sampling_sum_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x := by
  let N : ℕ := ⌊Real.exp (2 * A) / x⌋₊ + 1
  have hN : Real.exp (2 * A) / x ≤ (N : ℝ) := by
    have h := Nat.lt_floor_add_one (Real.exp (2 * A) / x)
    exact le_of_lt (by simpa only [N, Nat.cast_add, Nat.cast_one] using h)
  have hsum : (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 N, TwoMomentSampling.samplingIntegrand (iteratedDifference A) x k := by
    calc
      _ = ∑ k ∈ samplingIndices A x,
          TwoMomentSampling.samplingIntegrand (iteratedDifference A) x k := by
        apply sum_congr rfl
        intro k hk
        have hk0 : (0 : ℝ) < k := by
          exact_mod_cast (show 0 < k by have := ((mem_samplingIndices_iff A x k hx).mp hk).1; omega)
        rw [TwoMomentSampling.samplingIntegrand, Real.log_mul hx.ne' hk0.ne']
      _ = _ := by
        apply sum_subset (samplingIndices_subset_fixed A x N hx hN)
        intro k hk hout
        have hk1 := (mem_Icc.mp hk).1
        have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
        have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
          by_contra h
          exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
        exact iteratedDifference_sampling_zero A x k hA hx hk0 hcut
  rw [hsum]
  have hz := iteratedDifference_two_moments_zero A hA
  have h := TwoMomentSampling.sampling_sum_abs_le (iteratedDifference A) x
    (65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / A + 1 / 4)
    (Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A))
    N hx (by dsimp [N]; omega) (iteratedDifference_contDiff A hA)
    (iteratedDifference_hasCompactSupport A hA)
    (fun t ↦ iteratedDifference_abs_le A t hA)
    (fun t ↦ iteratedDifference_derivative_abs_le A t hA) hz.1 hz.2 (fun u hu ↦ by
      have hu0 : 0 < u := lt_of_lt_of_le (by dsimp [N]; positivity : (0 : ℝ) < N) hu
      apply iteratedDifference_sampling_zero A x u hA hx hu0
      exact (div_le_iff₀ hx).mp (hN.trans hu) |>.trans_eq (mul_comm u x))
  convert h using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc0c528a79568af1f92d78fe186300e2eafce3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
