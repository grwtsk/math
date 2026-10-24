# abs_inner_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f5f8e530f86783026d26a6a32bf33740922896a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5cd7695-bed3-3c68-ce1b-ee791fbeccef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:769b1748-923e-2fd9-f754-e3436b81c259",
  "kind": "theorem",
  "lexical_name": "abs_inner_sub_le",
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
  "slug": "abs-inner-sub-le--f4d2989325db802389c0e1ca",
  "source": {
    "blob": "6f5f8e530f86783026d26a6a32bf33740922896a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d2989325db802389c0e1ca5d7d53ee0f575fdf08c2488de1fade0331deb950",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769b1748-923e-2fd9-f754-e3436b81c259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_inner_sub_le (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p F) (hT2 : 2 ≤ p.T)
    (hμl : ∀ τ ∈ Icc p.T (2 * p.T), |Zeta23.mu τ| ≤ p.l)
    {K : ℝ} (hK0 : 0 ≤ K)
    (hKinc : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (K * |r| + 10 * r ^ 2) / t)
    (x : ℝ) :
    |(∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ')
        - ∫ τ' in Icc p.T (2 * p.T), Zeta23.mu τ' ^ 2|
      ≤ (1 + K) * p.l ^ 2 * |x| + 10 * p.l * x ^ 2 := by
  have hμc : Continuous Zeta23.mu := hΓ.smooth.continuous
  have hT0 : (0 : ℝ) < p.T := by linarith
  have hl1 : 1 ≤ p.l := hF.one_le_l
  have hl0 : (0 : ℝ) ≤ p.l := by linarith
  have hcnn : 0 ≤ ∫ τ' in Icc p.T (2 * p.T), Zeta23.mu τ' ^ 2 :=
    setIntegral_nonneg measurableSet_Icc fun τ' _ => sq_nonneg _
  have hsq_bound : ∀ τ' ∈ Icc p.T (2 * p.T), ‖Zeta23.mu τ' ^ 2‖ ≤ p.l ^ 2 := by
    intro τ' hτ'
    have h := hμl τ' hτ'
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    nlinarith [abs_nonneg (Zeta23.mu τ'), sq_abs (Zeta23.mu τ')]
  have hcle : ∫ τ' in Icc p.T (2 * p.T), Zeta23.mu τ' ^ 2 ≤ p.l ^ 2 * p.T := by
    have h := norm_setIntegral_le_of_norm_le_const (μ := volume) (s := Icc p.T (2 * p.T))
      (f := fun τ' => Zeta23.mu τ' ^ 2)
      (by rw [Real.volume_Icc]; exact ENNReal.ofReal_lt_top) hsq_bound
    rw [Real.norm_eq_abs, abs_of_nonneg hcnn, measureReal_def, Real.volume_Icc,
      ENNReal.toReal_ofReal (by linarith), show 2 * p.T - p.T = p.T by ring] at h
    exact h
  rcases le_or_gt |x| p.T with hx | hx
  · -- |x| ≤ T
    have hIle : max (p.T - x) p.T ≤ min (2 * p.T - x) (2 * p.T) := Ix_le hT0.le hx
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
    have hIxInt1 : IntegrableOn (fun τ' => Zeta23.mu (x + τ') * Zeta23.mu τ') (Ix p.T x) :=
      ContinuousOn.integrableOn_compact hIxcompact (by fun_prop)
    have hIxInt2 : IntegrableOn (fun τ' => Zeta23.mu τ' ^ 2) (Ix p.T x) :=
      ContinuousOn.integrableOn_compact hIxcompact (by fun_prop)
    have hIInt2 : IntegrableOn (fun τ' => Zeta23.mu τ' ^ 2) (Icc p.T (2 * p.T)) :=
      ContinuousOn.integrableOn_compact isCompact_Icc (by fun_prop)
    -- Lipschitz piece
    have hlip : |(∫ τ' in Ix p.T x, Zeta23.mu (x + τ') * Zeta23.mu τ')
        - ∫ τ' in Ix p.T x, Zeta23.mu τ' ^ 2| ≤ p.l * (K * |x| + 10 * x ^ 2) := by
      rw [← integral_sub hIxInt1 hIxInt2]
      have hb : ∀ τ' ∈ Ix p.T x,
          ‖Zeta23.mu (x + τ') * Zeta23.mu τ' - Zeta23.mu τ' ^ 2‖
            ≤ (K * |x| + 10 * x ^ 2) / p.T * p.l := by
        intro τ' hτ'
        obtain ⟨_, hmem2⟩ := mem_Ix.mp hτ'
        have hτT : p.T ≤ τ' := hmem2.1
        have h2τ : 2 ≤ τ' := by linarith
        have hinc := hKinc τ' h2τ x
        rw [show τ' + x = x + τ' by ring] at hinc
        have hμτ : |Zeta23.mu τ'| ≤ p.l := hμl τ' hmem2
        have hq : (K * |x| + 10 * x ^ 2) / τ' ≤ (K * |x| + 10 * x ^ 2) / p.T := by
          gcongr
        calc ‖Zeta23.mu (x + τ') * Zeta23.mu τ' - Zeta23.mu τ' ^ 2‖
            = |Zeta23.mu (x + τ') - Zeta23.mu τ'| * |Zeta23.mu τ'| := by
              rw [Real.norm_eq_abs, ← abs_mul]; congr 1; ring
          _ ≤ (K * |x| + 10 * x ^ 2) / p.T * p.l :=
              mul_le_mul (hinc.trans hq) hμτ (abs_nonneg _) (by positivity)
      have h := norm_setIntegral_le_of_norm_le_const (μ := volume) (s := Ix p.T x)
        (f := fun τ' => Zeta23.mu (x + τ') * Zeta23.mu τ' - Zeta23.mu τ' ^ 2)
        (lt_of_le_of_ne (le_top) hIxfin) hb
      rw [Real.norm_eq_abs, hIxvol] at h
      refine h.trans ?_
      have hfrac : (p.T - |x|) / p.T ≤ 1 := by
        rw [div_le_one hT0]; linarith [abs_nonneg x]
      have hnum : (0 : ℝ) ≤ K * |x| + 10 * x ^ 2 := by positivity
      calc (K * |x| + 10 * x ^ 2) / p.T * p.l * (p.T - |x|)
          = p.l * (K * |x| + 10 * x ^ 2) * ((p.T - |x|) / p.T) := by ring
        _ ≤ p.l * (K * |x| + 10 * x ^ 2) * 1 := by
            have : (0 : ℝ) ≤ p.l * (K * |x| + 10 * x ^ 2) := by positivity
            exact mul_le_mul_of_nonneg_left hfrac this
        _ = p.l * (K * |x| + 10 * x ^ 2) := mul_one _
    -- completion piece
    have hcomp : |(∫ τ' in Ix p.T x, Zeta23.mu τ' ^ 2)
        - ∫ τ' in Icc p.T (2 * p.T), Zeta23.mu τ' ^ 2| ≤ p.l ^ 2 * |x| := by
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
      have hb : ∀ τ' ∈ Icc p.T (2 * p.T) \ Ix p.T x, ‖Zeta23.mu τ' ^ 2‖ ≤ p.l ^ 2 :=
        fun τ' hτ' => hsq_bound τ' hτ'.1
      have h := norm_setIntegral_le_of_norm_le_const (μ := volume)
        (s := Icc p.T (2 * p.T) \ Ix p.T x) (f := fun τ' => Zeta23.mu τ' ^ 2)
        (lt_of_le_of_lt (measure_mono Set.sdiff_subset)
          (by rw [Real.volume_Icc]; exact ENNReal.ofReal_lt_top)) hb
      rw [Real.norm_eq_abs, hdvol] at h
      exact h
    refine (abs_sub_le _ (∫ τ' in Ix p.T x, Zeta23.mu τ' ^ 2) _).trans ?_
    refine (add_le_add hlip hcomp).trans ?_
    nlinarith [abs_nonneg x, sq_nonneg x,
      mul_nonneg (mul_nonneg hK0 hl0) (abs_nonneg x),
      mul_nonneg (mul_nonneg hK0 (mul_nonneg hl0 hl0)) (abs_nonneg x)]
  · -- |x| > T: the window is empty, the main term itself is ≤ l²T ≤ l²|x|
    rw [Ix_eq_empty hT0.le hx, Measure.restrict_empty, integral_zero_measure, zero_sub,
      abs_neg, abs_of_nonneg hcnn]
    refine hcle.trans ?_
    nlinarith [mul_nonneg (sq_nonneg p.l) (by linarith : (0 : ℝ) ≤ |x| - p.T),
      mul_nonneg (mul_nonneg hK0 (sq_nonneg p.l)) (abs_nonneg x),
      mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 10) hl0) (sq_nonneg x)]

/-- **Core estimate of [prop:mumu]** at fixed (p, F), error in terms of the two Φ-integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f5f8e530f86783026d26a6a32bf33740922896a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
