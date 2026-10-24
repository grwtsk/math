# abs_inner_sub_le_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3d14da7-ee27-6e6c-b5f3-af90fa883734",
  "kind": "theorem",
  "lexical_name": "abs_inner_sub_le_chi",
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
  "slug": "abs-inner-sub-le-chi--6d25e850910daff98a05c79e",
  "source": {
    "blob": "481b3a9761be7e05ba8f3a4abcf8130f5d7345b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variantec60fd3225c47639e27f5a7dcadc2a06dfeda3954f550c6b310ef4ffc56528f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d25e850910daff98a05c79e3c9debdf0eef90e0f73649f415eb894b3de69470",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variantec60fd3225c47639e27f5a7dcadc2a06dfeda3954f550c6b310ef4ffc56528f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3d14da7-ee27-6e6c-b5f3-af90fa883734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_inner_sub_le_chi (hΓq : GammaFactsChi κ q) (hT2 : 2 ≤ p.T)
    {A : ℝ} (hA0 : 0 ≤ A)
    (hμl : ∀ τ ∈ Icc p.T (2 * p.T), |muq κ q τ| ≤ A)
    {K : ℝ} (hK0 : 0 ≤ K)
    (hKinc : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |muq κ q (t + r) - muq κ q t| ≤ K * (|r| + r ^ 2) / t)
    (x : ℝ) :
    |(∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ')
        - ∫ τ' in Icc p.T (2 * p.T), muq κ q τ' ^ 2|
      ≤ (A ^ 2 + A * K) * |x| + A * K * x ^ 2 := by
  have hμc : Continuous (muq κ q) := hΓq.smooth.continuous
  have hT0 : (0 : ℝ) < p.T := by linarith
  have hcnn : 0 ≤ ∫ τ' in Icc p.T (2 * p.T), muq κ q τ' ^ 2 :=
    setIntegral_nonneg measurableSet_Icc fun τ' _ => sq_nonneg _
  have hsq_bound : ∀ τ' ∈ Icc p.T (2 * p.T), ‖muq κ q τ' ^ 2‖ ≤ A ^ 2 := by
    intro τ' hτ'
    have h := hμl τ' hτ'
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    nlinarith [abs_nonneg (muq κ q τ'), sq_abs (muq κ q τ')]
  have hcle : ∫ τ' in Icc p.T (2 * p.T), muq κ q τ' ^ 2 ≤ A ^ 2 * p.T := by
    have h := norm_setIntegral_le_of_norm_le_const (μ := volume) (s := Icc p.T (2 * p.T))
      (f := fun τ' => muq κ q τ' ^ 2)
      (by rw [Real.volume_Icc]; exact ENNReal.ofReal_lt_top) hsq_bound
    rw [Real.norm_eq_abs, abs_of_nonneg hcnn, measureReal_def, Real.volume_Icc,
      ENNReal.toReal_ofReal (by linarith), show 2 * p.T - p.T = p.T by ring] at h
    exact h
  rcases le_or_gt |x| p.T with hx | hx
  · have hIle : max (p.T - x) p.T ≤ min (2 * p.T - x) (2 * p.T) := Ix_le hT0.le hx
    have hlen : min (2 * p.T - x) (2 * p.T) - max (p.T - x) p.T = p.T - |x| :=
      Ix_length
    have hIxI : Ix p.T x ⊆ Icc p.T (2 * p.T) := fun τ' hτ' => (mem_Ix.mp hτ').2
    have hIxcompact : IsCompact (Ix p.T x) := by unfold Ix; exact isCompact_Icc
    have hIxmeas : MeasurableSet (Ix p.T x) := measurableSet_Ix p.T x
    have hIxfin : volume (Ix p.T x) ≠ ⊤ := by
      unfold Ix; rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top
    have hIxvol : (volume : Measure ℝ).real (Ix p.T x) = p.T - |x| := by
      unfold Ix
      rw [measureReal_def, Real.volume_Icc, ENNReal.toReal_ofReal (by linarith)]
      linarith
    have hIxInt1 : IntegrableOn (fun τ' => muq κ q (x + τ') * muq κ q τ') (Ix p.T x) :=
      ContinuousOn.integrableOn_compact hIxcompact (by fun_prop)
    have hIxInt2 : IntegrableOn (fun τ' => muq κ q τ' ^ 2) (Ix p.T x) :=
      ContinuousOn.integrableOn_compact hIxcompact (by fun_prop)
    have hIInt2 : IntegrableOn (fun τ' => muq κ q τ' ^ 2) (Icc p.T (2 * p.T)) :=
      ContinuousOn.integrableOn_compact isCompact_Icc (by fun_prop)
    have hlip : |(∫ τ' in Ix p.T x, muq κ q (x + τ') * muq κ q τ')
        - ∫ τ' in Ix p.T x, muq κ q τ' ^ 2| ≤ A * (K * (|x| + x ^ 2)) := by
      rw [← integral_sub hIxInt1 hIxInt2]
      have hb : ∀ τ' ∈ Ix p.T x,
          ‖muq κ q (x + τ') * muq κ q τ' - muq κ q τ' ^ 2‖
            ≤ K * (|x| + x ^ 2) / p.T * A := by
        intro τ' hτ'
        obtain ⟨_, hmem2⟩ := mem_Ix.mp hτ'
        have hτT : p.T ≤ τ' := hmem2.1
        have h2τ : 2 ≤ τ' := by linarith
        have hinc := hKinc τ' h2τ x
        rw [show τ' + x = x + τ' by ring] at hinc
        have hμτ : |muq κ q τ'| ≤ A := hμl τ' hmem2
        have hqd : K * (|x| + x ^ 2) / τ' ≤ K * (|x| + x ^ 2) / p.T := by
          gcongr
        calc ‖muq κ q (x + τ') * muq κ q τ' - muq κ q τ' ^ 2‖
            = |muq κ q (x + τ') - muq κ q τ'| * |muq κ q τ'| := by
              rw [Real.norm_eq_abs, ← abs_mul]; congr 1; ring
          _ ≤ K * (|x| + x ^ 2) / p.T * A :=
              mul_le_mul (hinc.trans hqd) hμτ (abs_nonneg _) (by positivity)
      have h := norm_setIntegral_le_of_norm_le_const (μ := volume) (s := Ix p.T x)
        (f := fun τ' => muq κ q (x + τ') * muq κ q τ' - muq κ q τ' ^ 2)
        (lt_of_le_of_ne (le_top) hIxfin) hb
      rw [Real.norm_eq_abs, hIxvol] at h
      refine h.trans ?_
      have hfrac : (p.T - |x|) / p.T ≤ 1 := by
        rw [div_le_one hT0]; linarith [abs_nonneg x]
      have hnum : (0 : ℝ) ≤ K * (|x| + x ^ 2) := by positivity
      calc K * (|x| + x ^ 2) / p.T * A * (p.T - |x|)
          = A * (K * (|x| + x ^ 2)) * ((p.T - |x|) / p.T) := by ring
        _ ≤ A * (K * (|x| + x ^ 2)) * 1 := by
            have : (0 : ℝ) ≤ A * (K * (|x| + x ^ 2)) := by positivity
            exact mul_le_mul_of_nonneg_left hfrac this
        _ = A * (K * (|x| + x ^ 2)) := mul_one _
    have hcomp : |(∫ τ' in Ix p.T x, muq κ q τ' ^ 2)
        - ∫ τ' in Icc p.T (2 * p.T), muq κ q τ' ^ 2| ≤ A ^ 2 * |x| := by
      rw [abs_sub_comm, ← setIntegral_sdiff hIxmeas hIInt2 hIxI]
      have hdvol : (volume : Measure ℝ).real (Icc p.T (2 * p.T) \ Ix p.T x) = |x| := by
        have hsub : volume (Icc p.T (2 * p.T) \ Ix p.T x)
            = volume (Icc p.T (2 * p.T)) - volume (Ix p.T x) :=
          measure_sdiff hIxI hIxmeas.nullMeasurableSet hIxfin
        rw [measureReal_def, hsub]
        unfold Ix
        rw [Real.volume_Icc, Real.volume_Icc,
          ← ENNReal.ofReal_sub _ (by linarith :
            (0 : ℝ) ≤ min (2 * p.T - x) (2 * p.T) - max (p.T - x) p.T),
          ENNReal.toReal_ofReal (by linarith [abs_nonneg x])]
        linarith
      have hb : ∀ τ' ∈ Icc p.T (2 * p.T) \ Ix p.T x, ‖muq κ q τ' ^ 2‖ ≤ A ^ 2 :=
        fun τ' hτ' => hsq_bound τ' hτ'.1
      have h := norm_setIntegral_le_of_norm_le_const (μ := volume)
        (s := Icc p.T (2 * p.T) \ Ix p.T x) (f := fun τ' => muq κ q τ' ^ 2)
        (lt_of_le_of_lt (measure_mono Set.sdiff_subset)
          (by rw [Real.volume_Icc]; exact ENNReal.ofReal_lt_top)) hb
      rw [Real.norm_eq_abs, hdvol] at h
      exact h
    refine (abs_sub_le _ (∫ τ' in Ix p.T x, muq κ q τ' ^ 2) _).trans ?_
    refine (add_le_add hlip hcomp).trans ?_
    nlinarith [abs_nonneg x, sq_nonneg x, mul_nonneg (mul_nonneg hA0 hK0) (abs_nonneg x)]
  · rw [Ix_eq_empty hT0.le hx, Measure.restrict_empty, integral_zero_measure, zero_sub,
      abs_neg, abs_of_nonneg hcnn]
    refine hcle.trans ?_
    nlinarith [mul_nonneg (sq_nonneg A) (by linarith : (0 : ℝ) ≤ |x| - p.T),
      mul_nonneg (mul_nonneg hA0 hK0) (abs_nonneg x),
      mul_nonneg (mul_nonneg hA0 hK0) (sq_nonneg x)]

/-- Core estimate of [prop:mumu]_chi at fixed (p, F). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variantec60fd3225c47639e27f5a7dcadc2a06dfeda3954f550c6b310ef4ffc56528f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variantec60fd3225c47639e27f5a7dcadc2a06dfeda3954f550c6b310ef4ffc56528f0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481b3a9761be7e05ba8f3a4abcf8130f5d7345b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
