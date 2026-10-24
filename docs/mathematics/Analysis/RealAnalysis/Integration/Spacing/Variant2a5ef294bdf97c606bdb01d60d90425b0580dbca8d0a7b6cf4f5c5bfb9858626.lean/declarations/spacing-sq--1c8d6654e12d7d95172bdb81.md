# spacing_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1dc640c83577c69f29c1e55e9581e5e13a2c40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45af47df-d8cc-aa3c-6489-8fa1b2e9747e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e1eb923-3426-7433-b9b2-b19a264ebae1",
  "kind": "theorem",
  "lexical_name": "spacing_sq",
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
  "slug": "spacing-sq--1c8d6654e12d7d95172bdb81",
  "source": {
    "blob": "d1dc640c83577c69f29c1e55e9581e5e13a2c40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8d6654e12d7d95172bdb8191537be9160061a51c8bff8968624d8923a8a20e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e1eb923-3426-7433-b9b2-b19a264ebae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spacing_sq (h : Adm freq δ) (s : ι) :
    ∑ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 2 ≤ 9 / δ s := by
  classical
  have hδs := h.pos s
  rcases Finset.eq_empty_or_nonempty (Finset.univ.erase s) with he | hne
  · rw [he, Finset.sum_empty]; positivity
  obtain ⟨t₀, ht₀⟩ := hne
  set g : ℝ → ℝ := fun u => ((u - freq s) ^ 2)⁻¹ with hg
  set M : ℝ := Finset.univ.sup' ⟨s, Finset.mem_univ s⟩ (fun t => |freq s - freq t|) with hM
  set R : ℝ := 3 / 2 * M + 1 with hR
  have hMle : ∀ t : ι, |freq s - freq t| ≤ M := fun t =>
    Finset.le_sup' (fun r => |freq s - freq r|) (Finset.mem_univ t)
  have hM0 : 0 ≤ M := le_trans (abs_nonneg _) (hMle s)
  have hδM : δ s ≤ M := (h.le s t₀ (Finset.ne_of_mem_erase ht₀).symm).trans (hMle t₀)
  have hRδ : δ s / 2 ≤ R := by linarith
  -- integrability on the window
  have hintW : MeasureTheory.IntegrableOn g (window freq δ s R) :=
    window_integrable (freq := freq) (δ := δ) hδs two_ne_zero
  -- each interval sits in the window
  have hsub : ∀ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t ⊆ window freq δ s R := by
    intro t ht u hu
    exact mem_window h (Finset.ne_of_mem_erase ht) (by linarith [hMle t]) hu
  -- per-term comparison
  have hper : ∀ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 2
      ≤ 9 / 4 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
    intro t ht
    have hts : t ≠ s := Finset.ne_of_mem_erase ht
    have hfst : (freq s - freq t) ≠ 0 := sub_ne_zero.2 fun hh => hts (h.inj hh.symm)
    have hpos2 : 0 < (freq s - freq t) ^ 2 := pow_two_pos_of_ne_zero hfst
    have hδt := h.pos t
    have hlow : ∀ u ∈ Adm.itv (freq := freq) (δ := δ) t,
        (9 / 4 * (freq s - freq t) ^ 2)⁻¹ ≤ g u := by
      intro u hu
      have hb := h.abs_le_of_mem_itv hts hu
      have hu0 : 0 < |u - freq s| := lt_of_lt_of_le (by linarith) hb.2
      have hsq : (u - freq s) ^ 2 ≤ 9 / 4 * (freq s - freq t) ^ 2 := by
        have h1 : |u - freq s| ≤ 3 / 2 * |freq s - freq t| := by
          rw [abs_sub_comm]; exact hb.1
        calc (u - freq s) ^ 2 = |u - freq s| ^ 2 := (sq_abs _).symm
          _ ≤ (3 / 2 * |freq s - freq t|) ^ 2 := by gcongr
          _ = 9 / 4 * |freq s - freq t| ^ 2 := by ring
          _ = 9 / 4 * (freq s - freq t) ^ 2 := by rw [sq_abs]
      have hupos : 0 < (u - freq s) ^ 2 := pow_two_pos_of_ne_zero (abs_pos.1 hu0)
      show _ ≤ ((u - freq s) ^ 2)⁻¹
      exact (inv_le_inv₀ (by positivity) hupos).2 hsq
    have hintT : MeasureTheory.IntegrableOn g (Adm.itv (freq := freq) (δ := δ) t) :=
      hintW.mono_set (hsub t ht)
    have h1 : ∫ _u in Adm.itv (freq := freq) (δ := δ) t, (9 / 4 * (freq s - freq t) ^ 2)⁻¹
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
    calc δ t / (freq s - freq t) ^ 2
        = 9 / 4 * (δ t * (9 / 4 * (freq s - freq t) ^ 2)⁻¹) := by
          field_simp
      _ ≤ 9 / 4 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
          gcongr
  -- sum the comparisons, merge the disjoint intervals, pass to the window
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
  -- evaluate the window integral
  have hwindow : ∫ u in window freq δ s R, g u ≤ 4 / δ s := by
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
        = (- R)⁻¹ + (δ s / 2)⁻¹ := by
      rw [hg]
      rw [integral_inv_sq_Icc (by linarith) (Or.inr (by linarith))]
      have e1 : freq s - R - freq s = -R := by ring
      have e2 : freq s - δ s / 2 - freq s = -(δ s / 2) := by ring
      rw [e1, e2]
      rw [inv_neg]
      ring
    have hright : ∫ u in Set.Icc (freq s + δ s / 2) (freq s + R), g u
        = (δ s / 2)⁻¹ - R⁻¹ := by
      rw [hg]
      rw [integral_inv_sq_Icc (by linarith) (Or.inl (by linarith))]
      have e1 : freq s + δ s / 2 - freq s = δ s / 2 := by ring
      have e2 : freq s + R - freq s = R := by ring
      rw [e1, e2]
    rw [hleft, hright]
    have hR0 : 0 < R := by linarith
    have : (δ s / 2)⁻¹ = 2 / δ s := by field_simp
    rw [this, inv_neg]
    have hRi : 0 < R⁻¹ := by positivity
    have h4 : 4 / δ s = 2 / δ s + 2 / δ s := by ring
    linarith
  -- assemble
  calc ∑ t ∈ Finset.univ.erase s, δ t / (freq s - freq t) ^ 2
      ≤ ∑ t ∈ Finset.univ.erase s, 9 / 4 * ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u :=
        Finset.sum_le_sum hper
    _ = 9 / 4 * ∑ t ∈ Finset.univ.erase s, ∫ u in Adm.itv (freq := freq) (δ := δ) t, g u := by
        rw [Finset.mul_sum]
    _ = 9 / 4 * ∫ u in ⋃ t ∈ Finset.univ.erase s, Adm.itv (freq := freq) (δ := δ) t, g u := by
        rw [hsum]
    _ ≤ 9 / 4 * (4 / δ s) := by
        have := hUmono.trans hwindow
        gcongr
    _ = 9 / δ s := by field_simp

end MainSpacing


/-- **Spacing lemma, σ = 4**: `Σ_{t≠s} δ t/(freq s − freq t)⁴ ≤ 27/(δ s)³`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1dc640c83577c69f29c1e55e9581e5e13a2c40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
