# dist_integral_mulExpNegMulSq_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aedc692d-ebd3-5321-e084-60d093ea36bf",
  "kind": "theorem",
  "lexical_name": "dist_integral_mulExpNegMulSq_comp_le",
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
  "slug": "dist-integral-mulexpnegmulsq-comp-le--b9968c178acd434d58603d22",
  "source": {
    "blob": "e8d3a0b9ba2ab7be63444af783ce2d44aa9c4365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9968c178acd434d58603d225ef858238efd47a9855004d0e77750cb80e122dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedc692d-ebd3-5321-e084-60d093ea36bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_integral_mulExpNegMulSq_comp_le (f : E →ᵇ ℝ)
    {A : Subalgebra ℝ (E →ᵇ ℝ)} (hA : (A.map (toContinuousMapₐ ℝ)).SeparatesPoints)
    (heq : ∀ g ∈ A, ∫ x, (g : E → ℝ) x ∂P = ∫ x, (g : E → ℝ) x ∂P') (hε : 0 < ε) :
    |∫ x, mulExpNegMulSq ε (f x) ∂P - ∫ x, mulExpNegMulSq ε (f x) ∂P'| ≤ 6 * √ε := by
  -- if both measures are zero, the result is trivial
  by_cases hPP' : P = 0 ∧ P' = 0
  · simp only [hPP', integral_zero_measure, sub_self, abs_zero, Nat.ofNat_pos,
    mul_nonneg_iff_of_pos_left, (le_of_lt (sqrt_pos_of_pos hε))]
  let const : ℝ := (max (P.real Set.univ) (P'.real Set.univ))
  have pos_of_measure : 0 < const := by
    rw [not_and_or] at hPP'
    rcases hPP' with hP0 | hP'0
    · exact lt_max_of_lt_left
        (toReal_pos ((Measure.measure_univ_ne_zero).mpr hP0) (by finiteness))
    · exact lt_max_of_lt_right
        (toReal_pos ((Measure.measure_univ_ne_zero).mpr hP'0) (by finiteness))
  -- obtain K, a compact and closed set, which covers E up to a small area of measure at most ε
  -- w.r.t. both P and P'
  obtain ⟨KP, _, hKPco, hKPcl, hKP⟩ := MeasurableSet.exists_isCompact_isClosed_sdiff_lt
    (MeasurableSet.univ) (measure_ne_top P Set.univ) (ofReal_pos.mpr hε).ne'
  obtain ⟨KP', _, hKP'co, hKP'cl, hKP'⟩ := MeasurableSet.exists_isCompact_isClosed_sdiff_lt
    (MeasurableSet.univ) (measure_ne_top P' Set.univ) (ofReal_pos.mpr hε).ne'
  let K := KP ∪ KP'
  have hKco := IsCompact.union hKPco hKP'co
  have hKcl := IsClosed.union hKPcl hKP'cl
  simp only [← Set.compl_eq_univ_sdiff] at hKP hKP'
  have hKPbound : P (KP ∪ KP')ᶜ < ε.toNNReal := lt_of_le_of_lt
        (measure_mono (Set.compl_subset_compl_of_subset (Set.subset_union_left))) hKP
  have hKP'bound : P' (KP ∪ KP')ᶜ < ε.toNNReal := lt_of_le_of_lt
        (measure_mono (Set.compl_subset_compl_of_subset (Set.subset_union_right))) hKP'
  -- Stone-Weierstrass approximation of f on K
  obtain ⟨g', hg'A, hg'approx⟩ :=
      ContinuousMap.exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints
      hA f hKco (Left.mul_pos (sqrt_pos_of_pos hε) (inv_pos_of_pos pos_of_measure))
  simp only [Subalgebra.mem_map] at hg'A
  let g := hg'A.choose
  have hgA : g ∈ A := hg'A.choose_spec.1
  have hgapprox : ∀ x ∈ K, ‖g x - f x‖ < √ε * const⁻¹ := by
    rw [← coe_toContinuousMapₐ ℝ g, hg'A.choose_spec.2]
    exact hg'approx
  -- collect the results needed in the decomposition at the end of the proof
  have line1 : |∫ x, mulExpNegMulSq ε (f x) ∂P
      - ∫ x in K, mulExpNegMulSq ε (f x) ∂P| < √ε :=
    abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt
      f (IsClosed.measurableSet hKcl) hε hKPbound
  have line3 : |∫ x in K, mulExpNegMulSq ε (g x) ∂P
      - ∫ x, mulExpNegMulSq ε (g x) ∂P| < √ε := by
    rw [abs_sub_comm]
    exact (abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt
      g (IsClosed.measurableSet hKcl) hε hKPbound)
  have line5 : |∫ x, mulExpNegMulSq ε (g x) ∂P'
      - ∫ x in K, mulExpNegMulSq ε (g x) ∂P'| < √ε :=
    (abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt
      g (IsClosed.measurableSet hKcl) hε hKP'bound)
  have line7 : |∫ x in K, mulExpNegMulSq ε (f x) ∂P'
      - ∫ x, mulExpNegMulSq ε (f x) ∂P'| < √ε := by
    rw [abs_sub_comm]
    exact (abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt
      f (IsClosed.measurableSet hKcl) hε hKP'bound)
  have line2 : |∫ x in K, mulExpNegMulSq ε (f x) ∂P
      - ∫ x in K, mulExpNegMulSq ε (g x) ∂P| ≤ √ε := by
    rw [abs_sub_comm]
    apply le_trans (abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure hKco
      (IsClosed.measurableSet hKcl) f g hε hgapprox)
    rw [mul_assoc]
    apply mul_le_of_le_one_right (le_of_lt (sqrt_pos_of_pos hε))
    apply inv_mul_le_one_of_le₀ (le_max_of_le_left _) (le_of_lt pos_of_measure)
    exact (toReal_le_toReal (by finiteness) (by finiteness)).mpr
        (measure_mono (Set.subset_univ _))
  have line6 : |∫ x in K, mulExpNegMulSq ε (g x) ∂P'
      - ∫ x in K, mulExpNegMulSq ε (f x) ∂P'| ≤ √ε := by
    apply le_trans (abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure hKco
      (IsClosed.measurableSet hKcl) f g hε hgapprox)
    rw [mul_assoc]
    apply mul_le_of_le_one_right (le_of_lt (sqrt_pos_of_pos hε))
    apply inv_mul_le_one_of_le₀ (le_max_of_le_right _) (le_of_lt pos_of_measure)
    exact (toReal_le_toReal (by finiteness) (by finiteness)).mpr
        (measure_mono (Set.subset_univ _))
  have line4 : |∫ x, mulExpNegMulSq ε (g x) ∂P
      - ∫ x, mulExpNegMulSq ε (g x) ∂P'| = 0 := by
    rw [abs_eq_zero, sub_eq_zero]
    exact integral_mulExpNegMulSq_comp_eq hε heq hgA
  calc
      |∫ x, mulExpNegMulSq ε (f x) ∂P - ∫ x, mulExpNegMulSq ε (f x) ∂P'|
    ≤ |∫ x, mulExpNegMulSq ε (f x) ∂P - ∫ x in K, mulExpNegMulSq ε (f x) ∂P|
      + |∫ x in K, mulExpNegMulSq ε (f x) ∂P - ∫ x in K, mulExpNegMulSq ε (g x) ∂P|
      + |∫ x in K, mulExpNegMulSq ε (g x) ∂P - ∫ x, mulExpNegMulSq ε (g x) ∂P|
      + |∫ x, mulExpNegMulSq ε (g x) ∂P - ∫ x, mulExpNegMulSq ε (g x) ∂P'|
      + |∫ x, mulExpNegMulSq ε (g x) ∂P' - ∫ x in K, mulExpNegMulSq ε (g x) ∂P'|
      + |∫ x in K, mulExpNegMulSq ε (g x) ∂P' - ∫ x in K, mulExpNegMulSq ε (f x) ∂P'|
      + |∫ x in K, mulExpNegMulSq ε (f x) ∂P' - ∫ x, mulExpNegMulSq ε (f x) ∂P'| :=
        @dist_triangle8 ℝ _ _ _ _ _ _ _ _ _
  _ ≤ 6 * √ε := by linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d3a0b9ba2ab7be63444af783ce2d44aa9c4365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
