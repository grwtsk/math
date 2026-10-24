# setLIntegral_stieltjesOfMeasurableRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffda87e1c3370647a584a62c8bc589d235d0bfce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f4e46a7-0c98-3213-ef28-c1e35ea0d9f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1803737b-3bbb-4b56-989a-1eaaa3a282d9",
  "kind": "lemma",
  "lexical_name": "setLIntegral_stieltjesOfMeasurableRat",
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
  "slug": "setlintegral-stieltjesofmeasurablerat--167875ffdf5d545b983a457f",
  "source": {
    "blob": "ffda87e1c3370647a584a62c8bc589d235d0bfce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167875ffdf5d545b983a457f34f0cde79b9a90c9430822eab7df5b19635c5c7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1803737b-3bbb-4b56-989a-1eaaa3a282d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setLIntegral_stieltjesOfMeasurableRat [IsFiniteKernel κ] (hf : IsRatCondKernelCDF f κ ν)
    (a : α) (x : ℝ) {s : Set β} (hs : MeasurableSet s) :
    ∫⁻ b in s, ENNReal.ofReal (stieltjesOfMeasurableRat f hf.measurable (a, b) x) ∂(ν a)
      = κ a (s ×ˢ Iic x) := by
  -- We have the result for `x : ℚ` thanks to `setLIntegral_stieltjesOfMeasurableRat_rat`.
  -- We use a monotone convergence argument to extend it to the reals.
  by_cases hρ_zero : (ν a).restrict s = 0
  · rw [hρ_zero, lintegral_zero_measure]
    have ⟨q, hq⟩ := exists_rat_gt x
    suffices κ a (s ×ˢ Iic (q : ℝ)) = 0 by
      symm
      refine measure_mono_null (fun p ↦ ?_) this
      simp only [mem_prod, mem_Iic, and_imp]
      exact fun h1 h2 ↦ ⟨h1, h2.trans hq.le⟩
    suffices (κ a).real (s ×ˢ Iic (q : ℝ)) = 0 by
      rw [measureReal_eq_zero_iff] at this
      simpa [measure_ne_top] using this
    rw [← hf.setIntegral a hs q]
    simp [hρ_zero]
  have h : ∫⁻ b in s, ENNReal.ofReal (stieltjesOfMeasurableRat f hf.measurable (a, b) x) ∂(ν a)
      = ∫⁻ b in s, ⨅ r : { r' : ℚ // x < r' },
        ENNReal.ofReal (stieltjesOfMeasurableRat f hf.measurable (a, b) r) ∂(ν a) := by
    congr with b : 1
    simp_rw [← measure_stieltjesOfMeasurableRat_Iic]
    rw [← Monotone.measure_iInter]
    · congr with y : 1
      simp only [mem_Iic, mem_iInter, Subtype.forall]
      exact le_iff_forall_lt_rat_imp_le
    · exact fun r r' hrr' ↦ Iic_subset_Iic.mpr <| mod_cast hrr'
    · exact fun _ ↦ nullMeasurableSet_Iic
    · obtain ⟨q, hq⟩ := exists_rat_gt x
      exact ⟨⟨q, hq⟩, measure_ne_top _ _⟩
  have h_nonempty : Nonempty { r' : ℚ // x < ↑r' } := by
    obtain ⟨r, hrx⟩ := exists_rat_gt x
    exact ⟨⟨r, hrx⟩⟩
  rw [h, lintegral_iInf_directed_of_measurable hρ_zero fun q : { r' : ℚ // x < ↑r' } ↦ ?_]
  rotate_left
  · intro b
    rw [setLIntegral_stieltjesOfMeasurableRat_rat hf a _ hs]
    exact measure_ne_top _ _
  · refine Monotone.directed_ge fun i j hij b ↦ ?_
    simp_rw [← measure_stieltjesOfMeasurableRat_Iic]
    refine measure_mono (Iic_subset_Iic.mpr ?_)
    exact mod_cast hij
  · refine Measurable.ennreal_ofReal ?_
    exact (measurable_stieltjesOfMeasurableRat hf.measurable _).comp measurable_prodMk_left
  simp_rw [setLIntegral_stieltjesOfMeasurableRat_rat hf _ _ hs]
  rw [← Monotone.measure_iInter]
  · rw [← prod_iInter]
    congr with y
    simp only [mem_iInter, mem_Iic, Subtype.forall]
    exact ⟨le_of_forall_lt_rat_imp_le, fun hyx q hq ↦ hyx.trans hq.le⟩
  · exact fun i j hij ↦ prod_mono_right (by gcongr)
  · exact fun i ↦ (hs.prod measurableSet_Iic).nullMeasurableSet
  · exact ⟨h_nonempty.some, measure_ne_top _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffda87e1c3370647a584a62c8bc589d235d0bfce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
