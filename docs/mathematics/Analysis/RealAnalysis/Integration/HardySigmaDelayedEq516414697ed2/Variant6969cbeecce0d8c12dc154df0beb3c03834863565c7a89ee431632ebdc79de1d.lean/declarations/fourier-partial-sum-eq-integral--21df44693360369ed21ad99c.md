# fourier_partial_sum_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d0a4d0d-240f-fe9b-c7d8-217d8f328b4d",
  "kind": "theorem",
  "lexical_name": "fourier_partial_sum_eq_integral",
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
  "slug": "fourier-partial-sum-eq-integral--21df44693360369ed21ad99c",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21df44693360369ed21ad99cd0e9998cb584e9dd9d946949a06ac572ae17b924",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0a4d0d-240f-fe9b-c7d8-217d8f328b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_partial_sum_eq_integral {f : ℝ → ℝ} (hf : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (h_per : Function.Periodic f (2 * Real.pi)) (n : ℕ) (x : ℝ) :
    fourier_partial_sum f n x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, f t * dirichlet_kernel n (x - t) := by
      unfold fourier_partial_sum dirichlet_kernel;
      simp +decide [ mul_add, mul_comm, mul_left_comm, div_eq_inv_mul, Finset.mul_sum _ _ _, Finset.sum_add_distrib, intervalIntegral.integral_const_mul, fourier_coeff_cos, fourier_coeff_sin ];
      rw [ intervalIntegral.integral_add, intervalIntegral.integral_finset_sum ] <;> norm_num;
      · norm_num [ sub_mul, mul_assoc, mul_comm, mul_left_comm, Finset.mul_sum _ _ _, Finset.sum_add_distrib ];
        norm_num [ Real.cos_sub, Real.sin_sub, mul_sub, ← mul_assoc, ← Finset.mul_sum _ _ _, ← Finset.sum_add_distrib ] ; ring_nf;
        rw [ Finset.mul_sum _ _ _ ] ; refine' congr rfl ( Finset.sum_congr rfl fun i hi => _ ) ; rw [ intervalIntegral.integral_add ] <;> norm_num [ mul_assoc, mul_comm, mul_left_comm, ← intervalIntegral.integral_const_mul ] ; ring_nf;
        · simp +decide only [mul_assoc, mul_comm, ← intervalIntegral.integral_const_mul,
                        mul_left_comm];
        · exact hf.mul_continuousOn ( Continuous.continuousOn ( by continuity ) );
        · apply_rules [ IntervalIntegrable.mul_continuousOn, hf ];
          fun_prop;
      · intro i hi₁ hi₂; exact hf.mul_continuousOn ( Continuous.continuousOn ( Real.continuous_cos.comp ( by continuity ) ) ) ;
      · exact hf.mul_const _;
      · rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le ( by linarith [ Real.pi_pos ] ) ] at *;
        refine' MeasureTheory.integrable_finset_sum _ fun i hi => _;
        refine' hf.norm.mono' _ _;
        · exact hf.1.mul ( Continuous.aestronglyMeasurable ( Real.continuous_cos.comp ( by continuity ) ) );
        · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with a ha using by rw [ norm_mul ] ; exact mul_le_of_le_one_right ( norm_nonneg _ ) ( Real.abs_cos_le_one _ ) ;

/-
Integral representation of the Fejér sum sigma_n(x).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
