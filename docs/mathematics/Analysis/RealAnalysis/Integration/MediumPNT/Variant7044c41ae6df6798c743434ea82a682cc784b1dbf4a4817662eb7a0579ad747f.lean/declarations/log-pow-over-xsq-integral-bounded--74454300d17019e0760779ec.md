# log_pow_over_xsq_integral_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44a299df-6297-7d59-85c8-48971b73b1b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:438a05c6-b38a-aec9-2473-02ee66a90fcf",
  "kind": "lemma",
  "lexical_name": "log_pow_over_xsq_integral_bounded",
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
  "slug": "log-pow-over-xsq-integral-bounded--74454300d17019e0760779ec",
  "source": {
    "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2704,
    "line": 2420,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74454300d17019e0760779ec9b3bcf3bdb42cd7dda0719e17e8a44687b560bd4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:438a05c6-b38a-aec9-2473-02ee66a90fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2420–2704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_pow_over_xsq_integral_bounded :
  ∀ n : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ T >3, ∫ x in Ioo 3 T, (Real.log x)^n / x^2 < C := by
  have log3gt1: 1 < Real.log 3 := logt_gt_one le_rfl
  intro n
  induction n with
  | zero =>
    use 1
    constructor
    · norm_num
    · intro T hT
      simp only [pow_zero]
      have h1 :(0 ≤ (-2) ∨ (-2) ≠ (-1) ∧ 0 ∉ Set.uIcc 3 T) := by
        right
        constructor
        · linarith
        · refine notMem_uIcc_of_lt ?_ ?_
          · exact three_pos
          · linarith
      have integral := integral_zpow h1
      ring_nf at integral

      have swap_int_kind : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), 1 / x ^ 2 = ∫ (x : ℝ) in Ioo 3 T, 1 / x ^ 2 := by
        rw [intervalIntegral.integral_of_le (by linarith)]
        exact MeasureTheory.integral_Ioc_eq_integral_Ioo
      rw [← swap_int_kind]
      have change_int_power : ∫ (x : ℝ) in (3 : ℝ)..T, (1 : ℝ) / x ^ (↑ 2)
                            = ∫ (x : ℝ) in (3 : ℝ).. T, x ^ (-2 : ℤ) := by
        apply intervalIntegral.integral_congr
        intro x hx
        simp
        rfl
      rw [change_int_power, integral]
      have : T ^ (-1 : ℤ) > 0 := by
        refine zpow_pos ?_ (-1)
        linarith
      linarith
  | succ d ih =>
    obtain ⟨Cd, Cdpos, IH⟩ := ih
    use ((Real.log 3)^(d+1) / 3) + (d+1) * Cd
    constructor
    · have logpowpos : (Real.log 3) ^ (d + 1) > 0 := by
        refine pow_pos ?_ (d + 1)
        linarith
      have : Real.log 3 ^ (d + 1) / 3 + (↑d + 1) * Cd > 0 / 3 + 0 := by
        have term2_pos : 0 < (↑d + 1) * Cd := by
          refine (mul_pos_iff_of_pos_right Cdpos).mpr ?_
          exact Nat.cast_add_one_pos d
        refine add_lt_add ?_ term2_pos
        refine div_lt_div₀ logpowpos ?_ ?_ ?_
        · linarith
        · linarith
        · linarith
      ring_nf at this
      ring_nf
      exact this
    · intro T Tgt3
      let u := fun x : ℝ ↦ (Real.log x) ^ (d + 1)
      let v := fun x : ℝ ↦ -1 / x
      let u' := fun x : ℝ ↦ (d + 1 : ℝ) * (Real.log x)^d / x
      let v' := fun x : ℝ ↦ 1 / x^2

      have swap_int_type : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), Real.log x ^ (d + 1) / x ^ 2
                          = ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ (d + 1) / x ^ 2 := by
        rw [intervalIntegral.integral_of_le (by linarith)]
        exact MeasureTheory.integral_Ioc_eq_integral_Ioo

      rw [← swap_int_type]

      have uIcc_is_Icc : Set.uIcc 3 T = Set.Icc 3 T := by
        exact uIcc_of_lt Tgt3

      have cont_u : ContinuousOn u (Set.uIcc 3 T) := by
        unfold u
        rw[uIcc_is_Icc]
        refine ContinuousOn.pow ?_ (d + 1)
        refine continuousOn_of_forall_continuousAt ?_
        intro x hx
        refine continuousAt_log ?_
        linarith [hx.1]

      have cont_v : ContinuousOn v (Set.uIcc 3 T) := by
        unfold v
        rw[uIcc_is_Icc]
        refine continuousOn_of_forall_continuousAt ?_
        intro x hx
        have cont2 : ContinuousAt (fun (x : ℝ) ↦ 1 / x) (-x) := by
          refine ContinuousAt.div₀ ?_ (fun ⦃U⦄ a ↦ a) ?_
          · exact continuousAt_const
          · linarith [hx.1]
        have fun1 : (fun (x : ℝ) ↦ -1 / x) = (fun (x : ℝ) ↦ 1 / (-x)) := by
          ext x
          ring_nf
        rw [fun1]
        exact ContinuousAt.comp cont2 (HasDerivAt.neg (hasDerivAt_id x)).continuousAt

      have deriv_u :
          (∀ x ∈ Set.Ioo (3 ⊓ T) (3 ⊔ T), HasDerivAt u (u' x) x) := by
        intro x hx
        have min3t : min 3 T = 3 := by
          exact min_eq_left_of_lt Tgt3
        have max3t : max 3 T = T := by
          exact max_eq_right_of_lt Tgt3
        rw[min3t, max3t] at hx
        unfold u u'
        have xne0 : x ≠ 0 := by linarith [hx.1]
        have deriv2 := (Real.hasDerivAt_log xne0).pow (d + 1)
        have fun2 : (↑d + 1) * Real.log x ^ d / x =  (↑d + 1) * Real.log x ^ d * x⁻¹:= by
          exact rfl
        rw [fun2]
        convert! deriv2 using 1
        rw [Nat.add_sub_cancel,
          Nat.cast_add, Nat.cast_one]

      have deriv_v : (∀ x ∈ Set.Ioo (3 ⊓ T) (3 ⊔ T), HasDerivAt v (v' x) x) := by
        intro x hx
        have min3t : min 3 T = 3 := by
          exact min_eq_left_of_lt Tgt3
        have max3t : max 3 T = T := by
          exact max_eq_right_of_lt Tgt3
        rw[min3t, max3t] at hx
        have xne0 : x ≠ 0 := by linarith [hx.1]
        unfold v v'
        have deriv1 := hasDerivAt_inv xne0
        have fun1 : (fun (x : ℝ) ↦ x⁻¹) = (fun (x : ℝ) ↦ 1 / x) := by
          ext x
          exact inv_eq_one_div x
        rw [fun1] at deriv1
        have fun2 : -(x ^ 2)⁻¹ = - 1 / x ^ 2 := by
          field_simp
        rw [fun2] at deriv1
        convert! HasDerivAt.neg deriv1 using 1
        · ext x
          rw [neg_eq_neg_one_mul]
          field_simp
          simp
        · field_simp

      have cont_u' : ContinuousOn u' (Set.uIcc 3 T) := by
        rw[uIcc_is_Icc]
        unfold u'
        refine ContinuousOn.div₀ ?_ ?_ ?_
        · refine ContinuousOn.mul ?_ ?_
          · exact continuousOn_const
          · refine ContinuousOn.pow ?_ d
            refine continuousOn_of_forall_continuousAt ?_
            intro x hx
            refine continuousAt_log ?_
            linarith [hx.1]
        · exact continuousOn_id' (Icc 3 T)
        · intro x hx
          linarith [hx.1]

      have cont_v' : ContinuousOn v' (Set.uIcc 3 T) := by
        rw[uIcc_is_Icc]
        unfold v'
        refine ContinuousOn.div₀ ?_ ?_ ?_
        · exact continuousOn_const
        · exact continuousOn_pow 2
        · intro x hx
          refine pow_ne_zero 2 ?_
          linarith [hx.1]

      have int_u': IntervalIntegrable u' MeasureTheory.volume 3 T := by
        exact ContinuousOn.intervalIntegrable cont_u'

      have int_v': IntervalIntegrable v' MeasureTheory.volume 3 T := by
        exact ContinuousOn.intervalIntegrable cont_v'

      have IBP := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt cont_u cont_v deriv_u deriv_v int_u' int_v'

      unfold u u' v v' at IBP

      have int1 : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), Real.log x ^ (d + 1) * (1 / x ^ 2)
                = ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), Real.log x ^ (d + 1) / x ^ 2 := by
          refine intervalIntegral.integral_congr ?_
          intro x hx
          field_simp

      rw[int1] at IBP
      rw[IBP]

      have int2 : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), (↑d + 1) * Real.log x ^ d / x * (-1 / x)
                = -(↑d + 1) * ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), Real.log x ^ d / x ^ 2 := by
        have : ∀ x, (↑d + 1) * Real.log x ^ d / x * (-1 / x)
         = -((↑d + 1) * Real.log x ^ d / x ^ 2) := by
          intro x
          field_simp
        have : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), (↑d + 1) * Real.log x ^ d / x * (-1 / x)
                = ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), -((↑d + 1) * Real.log x ^ d / x ^ 2) := by
          exact intervalIntegral.integral_congr fun ⦃x⦄ a ↦ this x
        rw [this,
          ←intervalIntegral.integral_const_mul]

        ring_nf

      rw[int2]

      have int3 : ∫ (x : ℝ) in (3 : ℝ)..(T : ℝ), Real.log x ^ d / x ^ 2
                = ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d / x ^ 2 := by
        rw [intervalIntegral.integral_of_le (by linarith)]
        exact MeasureTheory.integral_Ioc_eq_integral_Ioo

      rw[int3]

      have IHbound : ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d / x ^ 2 < Cd := by
        exact IH T Tgt3

      ring_nf
      have bound2 : (Real.log T * Real.log T ^ d * T⁻¹) ≥ 0 := by
        have logTpos : Real.log T ≥ 0 := by
          refine log_nonneg ?_
          linarith
        apply mul_nonneg
        · apply mul_nonneg
          · exact logTpos
          · exact pow_nonneg logTpos d
        · field_simp
          simp
      let S := Real.log T * Real.log T ^ d * T⁻¹
      have : (-(Real.log T * Real.log T ^ d * T⁻¹) + Real.log 3 * Real.log 3 ^ d * (1 / 3) +
                ↑d * ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2) +
              ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2 = (-S + Real.log 3 * Real.log 3 ^ d * (1 / 3) +
                ↑d * ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2) +
              ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2 := by
        unfold S
        rfl
      rw [this]

      have GetRidOfS : (-S + Real.log 3 * Real.log 3 ^ d * (1 / 3)
                      + ↑d * ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2)
                      + ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2
                      ≤ ( Real.log 3 * Real.log 3 ^ d * (1 / 3)
                      + ↑d * ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2)
                      + ∫ (x : ℝ) in Ioo 3 T, Real.log x ^ d * x⁻¹ ^ 2 := by
        linarith
      apply lt_of_le_of_lt GetRidOfS
      rw [add_assoc]

      have bound4 : ∫ x in Ioo 3 T, Real.log x ^ d / x ^ 2 < Cd := IHbound

      have bound5 : ↑d * ∫ x in Ioo 3 T, Real.log x ^ d / x ^ 2 ≤ ↑d * Cd := by
        apply (mul_le_mul_of_nonneg_left bound4.le)
        exact Nat.cast_nonneg d

      rw[add_assoc]
      apply add_lt_add_right
      field_simp
      linarith

set_option maxHeartbeats 400000 in
-- Slow
@[blueprint
  (title := "I3Bound")
  (statement := /--
  Assuming a bound of the form of Lemma \ref{LogDerivZetaBndUnif} we have that
  $$
  \left|I_{3}(\nu, \epsilon, X, T)\right| \ll \frac{X}{\epsilon}\, X^{-\frac{A}{(\log T)^9}}
  .
  $$
  Same with $I_7$.
  -/)
  (proof := /--
  Unfold the definitions and apply the triangle inequality.
  $$
  \left|I_{3}(\nu, \epsilon, X, T, \sigma_1)\right| =
  \left|\frac{1}{2\pi i} \int_{-T}^3
  \left(\frac{-\zeta'}\zeta(\sigma_1 + t i) \right)
  \mathcal M(\widetilde 1_\epsilon)(\sigma_1 + t i)
  X^{\sigma_1 + t i}
  \ i \ dt
  \right|
  $$
  $$\leq
  \frac{1}{2\pi}
  \int_{-T}^3
  C \cdot \log t ^ 9
  \frac{C'}{\epsilon|\sigma_1 + t i|^2}
  X^{\sigma_1}
   \ dt
  ,
  $$
  where we used Theorems \ref{MellinOfSmooth1b} and the hypothesised bound on zeta.
  Now we estimate $X^{\sigma_1} = X \cdot X^{-A/ \log T^9}$, and the integral is absolutely bounded.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean#L2420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
