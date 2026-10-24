# fejer_kernel_tail_mass_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e62b2910-60a6-0044-cab1-7fb681509265",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_tail_mass_vanishes",
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
  "slug": "fejer-kernel-tail-mass-vanishes--6b9b482f38f672134efe2b1b",
  "source": {
    "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 879,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b9b482f38f672134efe2b1bebbf523f2b41931bcea2d84ea16e4aa0e76492c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e62b2910-60a6-0044-cab1-7fb681509265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_tail_mass_vanishes (δ : ℝ) (hδ_pos : 0 < δ) (hδ_le : δ ≤ Real.pi) :
    Filter.Tendsto (fun n => ∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), fejer_kernel n t) Filter.atTop (nhds 0) := by
      have h_fejer_kernel_tail : Filter.Tendsto (fun n => ∫ t in Set.Icc δ Real.pi, fejer_kernel n t) Filter.atTop (nhds 0) := by
        -- By the properties of the Fejér kernel, we know that its integral over $[\delta, \pi]$ is bounded by $\frac{1}{n+1} \int_{\delta}^{\pi} \frac{\pi^2}{2t^2} dt$.
        have h_integral_bound : ∀ n : ℕ, ∫ t in Set.Icc δ Real.pi, fejer_kernel n t ≤ (1 / (n + 1 : ℝ)) * ∫ t in Set.Icc δ Real.pi, (Real.pi ^ 2 / (2 * t ^ 2)) := by
          intro n;
          rw [ ← MeasureTheory.integral_const_mul ];
          field_simp;
          refine' MeasureTheory.setIntegral_mono_on _ _ measurableSet_Icc fun t ht => _;
          · exact Continuous.integrableOn_Icc ( show Continuous ( fejer_kernel n ) from by unfold fejer_kernel; exact Continuous.mul ( continuous_const ) <| continuous_finset_sum _ fun _ _ => continuous_const.add <| continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity );
          · exact ContinuousOn.integrableOn_Icc ( continuousOn_of_forall_continuousAt fun x hx => ContinuousAt.div continuousAt_const ( ContinuousAt.mul continuousAt_const ( continuousAt_id.pow 2 ) ) ( by nlinarith [ hx.1, hx.2, Real.pi_pos ] ) );
          · convert fejer_kernel_le_quadratic n t ( by linarith [ ht.1 ] ) ( by linarith [ ht.2 ] ) using 1 ; ring;
        exact squeeze_zero ( fun n => MeasureTheory.setIntegral_nonneg measurableSet_Icc fun t ht => fejer_kernel_nonneg _ _ ) h_integral_bound <| by simpa using tendsto_one_div_add_atTop_nhds_zero_nat.mul_const _;
      convert h_fejer_kernel_tail.const_mul 2 using 2 <;> ring;
      rw [ MeasureTheory.setIntegral_union ] <;> norm_num;
      · norm_num [ mul_two, MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le, hδ_pos.le, hδ_le ];
        convert intervalIntegral.integral_comp_neg _ using 2 <;> norm_num [ fejer_kernel_even ];
      · exact Set.disjoint_left.mpr fun x hx₁ hx₂ => by linarith [ Set.mem_Icc.mp hx₁, Set.mem_Icc.mp hx₂ ] ;
      · exact Continuous.integrableOn_Icc ( by exact Continuous.mul ( continuous_const ) ( by exact continuous_finset_sum _ fun _ _ => by exact Continuous.add continuous_const <| by exact continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity ) );
      · exact Continuous.integrableOn_Icc ( by unfold fejer_kernel; exact Continuous.mul ( continuous_const ) ( by exact continuous_finset_sum _ fun _ _ => by exact Continuous.add ( continuous_const ) ( by exact continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) ) ) )

/-
Bound for the central part of the Fejér integral.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
