# spacing_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa693ffd-c357-344e-4157-b188a98e4439",
  "kind": "theorem",
  "lexical_name": "spacing_four",
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
  "slug": "spacing-four--32b6c74d39fd2572c3243b5f",
  "source": {
    "blob": "5a2dfb3fad088726b01abcb82c2ac6476be54467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b6c74d39fd2572c3243b5fe6dd8a1a72c994816d1443f9587a02103ebf0982",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa693ffd-c357-344e-4157-b188a98e4439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spacing_four (h : Adm freq δ) (s : ι) :
    ∑ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 4 ≤ 27 / δ s ^ 3 := by
  classical
  have hδs := h.pos s
  rcases Finset.eq_empty_or_nonempty (Finset.univ.erase s) with he | hne
  · rw [he, Finset.sum_empty]; positivity
  obtain ⟨t₀, ht₀⟩ := hne
  set g : ℝ → ℝ := fun u => ((u - freq s) ^ 4)⁻¹ with hg
  set M : ℝ := Finset.univ.sup' ⟨s, Finset.mem_univ s⟩ (fun t => |freq s - freq t|) with hM
  set R : ℝ := 3 / 2 * M + 1 with hR
  have hMle : ∀ t : ι, |freq s - freq t| ≤ M := fun t =>
    Finset.le_sup' (fun r => |freq s - freq r|) (Finset.mem_univ t)
  have hM0 : 0 ≤ M := le_trans (abs_nonneg _) (hMle s)
  have hδM : δ s ≤ M := (h.le s t₀ (Finset.ne_of_mem_erase ht₀).symm).trans (hMle t₀)
  have hRδ : δ s / 2 ≤ R := by linarith
  have hintW : MeasureTheory.IntegrableOn g (window freq δ s R) :=
    window_integrable (freq := freq) (δ := δ) hδs four_ne_zero
  have hsub : ∀ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t ⊆ window freq δ s R := by
    intro t ht u hu
    exact mem_window h (Finset.ne_of_mem_erase ht) (by linarith [hMle t]) hu
  have hper : ∀ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 4
      ≤ 81 / 16 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
    intro t ht
    have hts : t ≠ s := Finset.ne_of_mem_erase ht
    have hfst : (freq s - freq t) ≠ 0 := sub_ne_zero.2 fun hh => hts (h.inj hh.symm)
    have hpos4 : 0 < (freq s - freq t) ^ 4 := by positivity
    have hδt := h.pos t
    have hlow : ∀ u ∈ Adm.itv (freq := freq) (δ := δ) t,
        (81 / 16 * (freq s - freq t) ^ 4)⁻¹ ≤ g u := by
      intro u hu
      have hb := h.abs_le_of_mem_itv hts hu
      have hu0 : 0 < |u - freq s| := lt_of_lt_of_le (by linarith) hb.2
      have hsq : (u - freq s) ^ 4 ≤ 81 / 16 * (freq s - freq t) ^ 4 := by
        have h1 : |u - freq s| ≤ 3 / 2 * |freq s - freq t| := by
          rw [abs_sub_comm]; exact hb.1
        calc (u - freq s) ^ 4 = |u - freq s| ^ 4 := by rw [← abs_pow, abs_of_nonneg (by positivity)]
          _ ≤ (3 / 2 * |freq s - freq t|) ^ 4 := by gcongr
          _ = 81 / 16 * |freq s - freq t| ^ 4 := by ring
          _ = 81 / 16 * (freq s - freq t) ^ 4 := by rw [← abs_pow, abs_of_nonneg (by positivity)]
      have hupos : 0 < (u - freq s) ^ 4 := by
        have := abs_pos.1 hu0; positivity
      show _ ≤ ((u - freq s) ^ 4)⁻¹
      exact (inv_le_inv₀ (by positivity) hupos).2 hsq
    have hintT : MeasureTheory.IntegrableOn g (Adm.itv (freq := freq) (δ := δ) t) :=
      hintW.mono_set (hsub t ht)
    have h1 : ∫ _u in Adm.itv (freq := freq) (δ := δ) t, (81 / 16 * (freq s - freq t) ^ 4)⁻¹
        ≤ ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
      apply MeasureTheory.setIntegral_mono_on
      · exact MeasureTheory.integrableOn_const (by simp [Adm.itv])
      · exact hintT
      · exact measurableSet_Ioo
      · exact hlow
    rw [MeasureTheory.setIntegral_const, smul_eq_mul] at h1
    have hvol : (volume (Adm.itv (freq := freq) (δ := δ) t)).toReal = δ t := by
      rw [Adm.itv, Real.volume_Ioo, ENNReal.toReal_ofReal (by linarith)]
      ring
    rw [MeasureTheory.measureReal_def, hvol] at h1
    calc δ t / (freq s - freq t) ^ 4
        = 81 / 16 * (δ t * (81 / 16 * (freq s - freq t) ^ 4)⁻¹) := by
          field_simp
      _ ≤ 81 / 16 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
          gcongr
  have hdisj : (↑(Finset.univ.erase s) : Set ι).PairwiseDisjoint
      (fun t => Adm.itv (freq := freq) (δ := δ) t) :=
    (h.itv_disjoint).subset (Set.subset_univ _)
  have hsum : ∑ t ∈ Finset.univ.erase s, ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u
      = ∫ u in ⋃ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t, g u := by
    rw [MeasureTheory.integral_biUnion_finset]
    · exact fun t _ => measurableSet_Ioo
    · exact hdisj
    · exact fun t ht => hintW.mono_set (hsub t ht)
  have hUsub : (⋃ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t)
      ⊆ window freq δ s R := by
    simp only [Set.iUnion_subset_iff]
    exact fun t ht => hsub t ht
  have hUmono : ∫ u in ⋃ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t, g u
      ≤ ∫ u in window freq δ s R, g u := by
    apply MeasureTheory.setIntegral_mono_set hintW
    · exact Filter.Eventually.of_forall fun u => by positivity
    · exact Filter.Eventually.of_forall hUsub
  have hwindow : ∫ u in window freq δ s R, g u ≤ 16 / (3 * δ s ^ 3) := by
    have hd : Disjoint (Set.Icc (freq s - R) (freq s - δ s / 2))
        (Set.Icc (freq s + δ s / 2) (freq s + R)) := by
      rw [Set.disjoint_left]
      intro u hu hu'
      simp only [Set.mem_Icc] at hu hu'
      linarith [hu.2, hu'.1]
    have hil : MeasureTheory.IntegrableOn g (Set.Icc (freq s - R) (freq s - δ s / 2)) :=
      hintW.mono_set Set.subset_union_left
    have hir : MeasureTheory.IntegrableOn g (Set.Icc (freq s + δ s / 2) (freq s + R)) :=
      hintW.mono_set Set.subset_union_right
    rw [window, MeasureTheory.setIntegral_union hd measurableSet_Icc hil hir]
    have hleft : ∫ u in Set.Icc (freq s - R) (freq s - δ s / 2), g u
        = -((R ^ (3:ℕ))⁻¹ / 3) + ((δ s / 2) ^ (3:ℕ))⁻¹ / 3 := by
      rw [hg, integral_inv_four_Icc (by linarith) (Or.inr (by linarith))]
      have e1 : freq s - R - freq s = -R := by ring
      have e2 : freq s - δ s / 2 - freq s = -(δ s / 2) := by ring
      rw [e1, e2]
      have e3 : (-R) ^ (3:ℕ) = -(R ^ (3:ℕ)) := by ring
      have e4 : (-(δ s / 2)) ^ (3:ℕ) = -((δ s / 2) ^ (3:ℕ)) := by ring
      rw [e3, e4, inv_neg, inv_neg]
      ring
    have hright : ∫ u in Set.Icc (freq s + δ s / 2) (freq s + R), g u
        = ((δ s / 2) ^ (3:ℕ))⁻¹ / 3 - (R ^ (3:ℕ))⁻¹ / 3 := by
      rw [hg, integral_inv_four_Icc (by linarith) (Or.inl (by linarith))]
      have e1 : freq s + δ s / 2 - freq s = δ s / 2 := by ring
      have e2 : freq s + R - freq s = R := by ring
      rw [e1, e2]
    rw [hleft, hright]
    have hR0 : 0 < R := by linarith
    have hRi : 0 < (R ^ (3:ℕ))⁻¹ := by positivity
    have hhalf : ((δ s / 2) ^ (3:ℕ))⁻¹ = 8 / δ s ^ 3 := by
      rw [div_pow]
      norm_num
    have h16 : 16 / (3 * δ s ^ 3) = 8 / δ s ^ 3 / 3 + 8 / δ s ^ 3 / 3 := by ring
    rw [hhalf]
    linarith
  calc ∑ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 4
      ≤ ∑ t ∈ Finset.univ.erase s, 81 / 16 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u :=
        Finset.sum_le_sum hper
    _ = 81 / 16 * ∑ t ∈ Finset.univ.erase s, ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
        rw [Finset.mul_sum]
    _ = 81 / 16 * ∫ u in ⋃ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t, g u := by
        rw [hsum]
    _ ≤ 81 / 16 * (16 / (3 * δ s ^ 3)) := by
        have := hUmono.trans hwindow
        gcongr
    _ = 27 / δ s ^ 3 := by field_simp; ring

/-- **Two-point lemma** (replaces Preissmann Lemme 6 at constant 36). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2dfb3fad088726b01abcb82c2ac6476be54467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
