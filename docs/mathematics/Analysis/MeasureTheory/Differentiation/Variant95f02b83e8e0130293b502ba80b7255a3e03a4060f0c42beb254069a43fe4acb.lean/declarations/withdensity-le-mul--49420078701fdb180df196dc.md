# withDensity_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcb3a1a7-b686-9033-45d2-30c0f08d9b1f",
  "kind": "theorem",
  "lexical_name": "withDensity_le_mul",
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
  "slug": "withdensity-le-mul--49420078701fdb180df196dc",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 550,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49420078701fdb180df196dc9a7cdc25dd4d5563056166c81b12eb45adc738d9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb3a1a7-b686-9033-45d2-30c0f08d9b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_le_mul {s : Set α} (hs : MeasurableSet s) {t : ℝ≥0} (ht : 1 < t) :
    μ.withDensity (v.limRatioMeas hρ) s ≤ (t : ℝ≥0∞) ^ 2 * ρ s := by
  /- We cut `s` into the sets where `v.limRatioMeas hρ = 0`, where `v.limRatioMeas hρ = ∞`, and
    where `v.limRatioMeas hρ ∈ [t^n, t^(n+1))` for `n : ℤ`. The first and second have measure `0`.
    For the latter, since `v.limRatioMeas hρ` fluctuates by at most `t` on this slice, we can use
    `measure_le_mul_of_subset_limRatioMeas_lt` and `mul_measure_le_of_subset_lt_limRatioMeas` to
    show that the two measures are comparable up to `t` (in fact `t^2` for technical reasons of
    strict inequalities). -/
  have t_ne_zero' : t ≠ 0 := (zero_lt_one.trans ht).ne'
  have t_ne_zero : (t : ℝ≥0∞) ≠ 0 := by simpa only [ENNReal.coe_eq_zero, Ne.def] using t_ne_zero'
  let ν := μ.withDensity (v.limRatioMeas hρ)
  let f := v.limRatioMeas hρ
  have f_meas : Measurable f := v.limRatioMeas_measurable hρ
  have A : ν (s ∩ f ⁻¹' {0}) ≤ ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' {0}) := by
    apply le_trans _ (zero_le _)
    have M : MeasurableSet (s ∩ f ⁻¹' {0}) := hs.inter (f_meas (measurableSet_singleton _))
    simp only [nonpos_iff_eq_zero, M, withDensity_apply, lintegral_eq_zero_iff f_meas]
    apply (ae_restrict_iff' M).2
    exact eventually_of_forall fun x hx => hx.2
  have B : ν (s ∩ f ⁻¹' {∞}) ≤ ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' {∞}) := by
    apply le_trans (le_of_eq _) (zero_le _)
    apply withDensity_absolutelyContinuous μ _
    rw [← nonpos_iff_eq_zero]
    exact (measure_mono (inter_subset_right _ _)).trans (v.measure_limRatioMeas_top hρ).le
  have C :
    ∀ n : ℤ,
      ν (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) ≤
        ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) := by
    intro n
    let I := Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))
    have M : MeasurableSet (s ∩ f ⁻¹' I) := hs.inter (f_meas measurableSet_Ico)
    simp only [M, withDensity_apply, coe_nnreal_smul_apply]
    calc
      (∫⁻ x in s ∩ f ⁻¹' I, f x ∂μ) ≤ ∫⁻ x in s ∩ f ⁻¹' I, (t : ℝ≥0∞) ^ (n + 1) ∂μ :=
        lintegral_mono_ae ((ae_restrict_iff' M).2 (eventually_of_forall fun x hx => hx.2.2.le))
      _ = (t : ℝ≥0∞) ^ (n + 1) * μ (s ∩ f ⁻¹' I) := by
        simp only [lintegral_const, MeasurableSet.univ, Measure.restrict_apply, univ_inter]
      _ = (t : ℝ≥0∞) ^ (2 : ℤ) * ((t : ℝ≥0∞) ^ (n - 1) * μ (s ∩ f ⁻¹' I)) := by
        rw [← mul_assoc, ← ENNReal.zpow_add t_ne_zero ENNReal.coe_ne_top]
        congr 2
        abel
      _ ≤ (t : ℝ≥0∞) ^ 2 * ρ (s ∩ f ⁻¹' I) := by
        refine' mul_le_mul_left' _ _
        rw [← ENNReal.coe_zpow (zero_lt_one.trans ht).ne']
        apply v.mul_measure_le_of_subset_lt_limRatioMeas hρ
        intro x hx
        apply lt_of_lt_of_le _ hx.2.1
        rw [← ENNReal.coe_zpow (zero_lt_one.trans ht).ne', ENNReal.coe_lt_coe, sub_eq_add_neg,
          zpow_add₀ t_ne_zero']
        conv_rhs => rw [← mul_one (t ^ n)]
        refine' mul_lt_mul' le_rfl _ (zero_le _) (NNReal.zpow_pos t_ne_zero' _)
        rw [zpow_neg_one]
        exact inv_lt_one ht
  calc
    ν s =
      ν (s ∩ f ⁻¹' {0}) + ν (s ∩ f ⁻¹' {∞}) +
        ∑' n : ℤ, ν (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) :=
      measure_eq_measure_preimage_add_measure_tsum_Ico_zpow ν f_meas hs ht
    _ ≤
        ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' {0}) + ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' {∞}) +
          ∑' n : ℤ, ((t : ℝ≥0∞) ^ 2 • ρ) (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) :=
      (add_le_add (add_le_add A B) (ENNReal.tsum_le_tsum C))
    _ = ((t : ℝ≥0∞) ^ 2 • ρ) s :=
      (measure_eq_measure_preimage_add_measure_tsum_Ico_zpow ((t : ℝ≥0∞) ^ 2 • ρ) f_meas hs ht).symm
#align vitali_family.with_density_le_mul VitaliFamily.withDensity_le_mul

/-- As an intermediate step to show that `μ.withDensity (v.limRatioMeas hρ) = ρ`, we show here
that `ρ ≤ t μ.withDensity (v.limRatioMeas hρ)` for any `t > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
