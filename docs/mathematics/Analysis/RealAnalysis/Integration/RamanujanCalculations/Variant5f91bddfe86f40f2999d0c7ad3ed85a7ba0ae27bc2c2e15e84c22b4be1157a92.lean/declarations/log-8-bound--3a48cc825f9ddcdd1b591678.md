# log_8_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1a116b2-18fa-6b02-6fdc-a67a47a1c791",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81017a51-18ff-a7a7-8e63-a8c86e91405f",
  "kind": "theorem",
  "lexical_name": "log_8_bound",
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
  "slug": "log-8-bound--3a48cc825f9ddcdd1b591678",
  "source": {
    "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 589,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a48cc825f9ddcdd1b591678d08c7f837d28589e595f25dc93c9bb09ee192100",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81017a51-18ff-a7a7-8e63-a8c86e91405f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_8_bound (x : ℝ) (hx : 2 ≤ x) :
    ∫ t in Set.Icc 2 x, 1 / log t ^ 8 <
      sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8 := by
  by_cases h : x < 4
  · refine lt_of_le_of_lt (MeasureTheory.setIntegral_mono_on ?_ ?_ measurableSet_Icc fun t ht =>
      one_div_le_one_div_of_le ?_ <| pow_le_pow_left₀ (log_nonneg <| by linarith [ht.1])
        (log_le_log (by linarith [ht.1]) ht.1) 8) ?_
    · exact ContinuousOn.integrableOn_Icc (continuousOn_const.div (ContinuousOn.pow
        (continuousOn_log.mono <| by norm_num) _) fun t ht ↦ pow_ne_zero _ <| ne_of_gt <|
        log_pos <| by linarith [ht.1])
    · norm_num
    · positivity
    · norm_num [← div_eq_mul_inv]
      exact lt_add_of_le_of_pos (by
        gcongr; cases max_cases (x - 2) 0 <;>
          nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)]) (
        div_pos (by positivity) (pow_pos (log_pos (by linarith)) _))
  · have h_split : ∫ t in Set.Icc 2 x, 1 / log t ^ 8 =
        (∫ t in Set.Icc 2 (sqrt x), 1 / log t ^ 8) +
          (∫ t in Set.Icc (sqrt x) x, 1 / log t ^ 8) := by
      norm_num [MeasureTheory.integral_Icc_eq_integral_Ioc,
        ← intervalIntegral.integral_of_le, sqrt_le_iff, hx]
      rw [← intervalIntegral.integral_of_le (by
            nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)]),
        ← intervalIntegral.integral_of_le (by
          nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)]),
        intervalIntegral.integral_add_adjacent_intervals]
        <;> apply_rules [ContinuousOn.intervalIntegrable]
      · exact continuousOn_of_forall_continuousAt fun y hy =>
          ContinuousAt.inv₀ (ContinuousAt.pow (continuousAt_log (by
            cases Set.mem_uIcc.mp hy <;>
              nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)])) _)
            (pow_ne_zero _ <| ne_of_gt <| log_pos <| by
              cases Set.mem_uIcc.mp hy <;>
                nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)])
      · exact continuousOn_of_forall_continuousAt fun y hy =>
          ContinuousAt.inv₀ (ContinuousAt.pow (continuousAt_log (by
            cases Set.mem_uIcc.mp hy <;>
              nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)])) _)
            (pow_ne_zero _ <| ne_of_gt <| log_pos <| by
              cases Set.mem_uIcc.mp hy <;>
                nlinarith [sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)])
    have h_first : ∫ t in Set.Icc 2 (sqrt x), 1 / log t ^ 8 ≤
        sqrt x / (log 2) ^ 8 := by
      have h_mono : ∫ t in Set.Icc 2 (sqrt x), 1 / log t ^ 8 ≤
          ∫ t in Set.Icc 2 (sqrt x), 1 / log 2 ^ 8 := by
        refine MeasureTheory.setIntegral_mono_on ?_ ?_ ?_ ?_ <;> norm_num
        · exact ContinuousOn.integrableOn_Icc (continuousOn_of_forall_continuousAt fun t ht =>
            ContinuousAt.inv₀
              ((Real.continuousAt_log (show t ≠ 0 from ne_of_gt (by linarith [ht.1]))).pow _)
              (ne_of_gt (pow_pos (log_pos (show 1 < t by linarith [ht.1])) _)))
        · exact fun t ht₁ ht₂ ↦ inv_anti₀ (pow_pos (log_pos (by linarith)) _)
            (pow_le_pow_left₀ (log_nonneg (by linarith)) (log_le_log (by linarith) (by linarith)) _)
      refine le_trans h_mono ?_; norm_num
      rw [max_eq_left (sub_nonneg.mpr <| le_sqrt_of_sq_le <| by linarith)]
      ring_nf; norm_num; positivity
    have h_second : ∫ t in Set.Icc (sqrt x) x, 1 / log t ^ 8 ≤
        (x - sqrt x) * (2 ^ 8 / (log x) ^ 8) := by
      have hbd : ∀ t ∈ Set.Icc (sqrt x) x,
          1 / log t ^ 8 ≤ 2 ^ 8 / (log x) ^ 8 := by
        intro t ht
        have hlog_half : log t ≥ log (sqrt x) := log_le_log (by positivity) ht.1
        rw [log_sqrt (by positivity)] at hlog_half
        rw [div_le_div_iff₀] <;>
          nlinarith [pow_pos (log_pos (by linarith : 1 < x)) 8,
            pow_le_pow_left₀ (by linarith [log_pos (by linarith : 1 < x)]) hlog_half 8]
      convert MeasureTheory.setIntegral_mono_on _ _ _ hbd <;> norm_num
      · exact Or.inl <| sqrt_le_iff.mpr ⟨by positivity, by nlinarith⟩
      · exact ContinuousOn.integrableOn_Icc (continuousOn_of_forall_continuousAt fun t ht =>
          ContinuousAt.inv₀ (ContinuousAt.pow (continuousAt_log (by
            nlinarith [ht.1, sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)])) _)
            (pow_ne_zero _ <| ne_of_gt <| log_pos <| by
              nlinarith [ht.1, sqrt_nonneg x, sq_sqrt (show 0 ≤ x by linarith)]))
    refine h_split.symm ▸ lt_of_le_of_lt (add_le_add h_first h_second) ?_
    ring_nf
    nlinarith [show 0 < sqrt x * (log x)⁻¹ ^ 8 from
      mul_pos (sqrt_pos.mpr (by linarith))
        (pow_pos (inv_pos.mpr (log_pos (by linarith))) _)]

@[blueprint
  "log-7-int-bound"
  (title := "Bound for integral of an inverse power of log")
  (statement := /-- For $x \geq 2$ we have
$$\int_2^x \frac{dt}{\log^7 t} < \frac{x}{\log^7 x} + 7 \Big( \frac{\sqrt{x}}{\log^8 2} + \frac{2^8 x}{\log^8 x} \Big).$$
(cf. \cite[Section 2.3]{dudek-platt})-/)
  (proof := /-- Integrate by parts to write the left-hand side as $\frac{x}{\log^7 x} - \frac{2}{\log^7 2} + 7 \int_2^x \frac{t}{\log^8 t} dt$.  Discard the middle term.  For the final term, split between $\int_2^{\sqrt{x}}$ and $\int_{\sqrt{x}}^x$.  For the first, use the bound $\int_2^{\sqrt{x}} \frac{t}{\log^8 t} dt < \int_2^{\sqrt{x}} \frac{t}{\log^8 2} dt$, and for the second, use the bound $\int_{\sqrt{x}}^x \frac{t}{\log^8 t} dt < \int_{\sqrt{x}}^x \frac{t}{\log^8 x} dt$.-/)
  (latexEnv := "lemma")
  (discussion := 988)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453e830095347a4b4868e31bd20aa3dede73817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
