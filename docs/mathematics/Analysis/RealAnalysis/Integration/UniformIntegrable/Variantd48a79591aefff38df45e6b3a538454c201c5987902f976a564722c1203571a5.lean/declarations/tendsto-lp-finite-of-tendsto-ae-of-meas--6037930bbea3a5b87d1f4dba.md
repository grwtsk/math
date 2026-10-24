# tendsto_Lp_finite_of_tendsto_ae_of_meas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2664a3e1-97ee-a51e-6a2a-23d394c5d689",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_finite_of_tendsto_ae_of_meas",
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
  "slug": "tendsto-lp-finite-of-tendsto-ae-of-meas--6037930bbea3a5b87d1f4dba",
  "source": {
    "blob": "313652b796b799acabeca063febbf5151bb2cc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 490,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6037930bbea3a5b87d1f4dbac54b1d7b08738545ee956ed946276e13ca45f1de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2664a3e1-97ee-a51e-6a2a-23d394c5d689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Lp_finite_of_tendsto_ae_of_meas [IsFiniteMeasure μ] (hp : 1 ≤ p) (hp' : p ≠ ∞)
    {f : ℕ → α → β} {g : α → β} (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g)
    (hg' : MemLp g p μ) (hui : UnifIntegrable f p μ)
    (hfg : ∀ᵐ x ∂μ, Tendsto (fun n ↦ f n x) atTop (𝓝 (g x))) :
    Tendsto (fun n ↦ eLpNorm (f n - g) p μ) atTop (𝓝 0) := by
  rw [ENNReal.tendsto_atTop_zero]
  intro ε hε
  by_cases! h : ∞ ≤ ε
  · rw [top_le_iff] at h
    exact ⟨0, fun n _ => by simp [h]⟩
  by_cases hμ : μ = 0
  · exact ⟨0, fun n _ => by simp [hμ]⟩
  have hε' : 0 < ε / 3 := ε.div_pos hε.ne' ofNat_ne_top
  have hdivp : 0 ≤ 1 / p.toReal := by positivity
  have hpow : 0 < measureUnivNNReal μ ^ (1 / p.toReal) :=
    Real.rpow_pos_of_pos (measureUnivNNReal_pos hμ) _
  obtain ⟨δ₁, hδ₁, heLpNorm₁⟩ := unifIntegrable_iff.1 hui (ε / 3) hε'
  obtain ⟨δ₂, hδ₂, heLpNorm₂⟩ := hg'.eLpNorm_indicator_le hp hp' hε'
  obtain ⟨t, htm, ht₁, ht₂⟩ := tendstoUniformlyOn_of_ae_tendsto' hf hg hfg (lt_min hδ₁ hδ₂)
  rw [Metric.tendstoUniformlyOn_iff] at ht₂
  specialize ht₂ (ε.toReal / (3 * measureUnivNNReal μ ^ (1 / p.toReal)))
    (div_pos (toReal_pos (gt_iff_lt.1 hε).ne' h.ne) (mul_pos (by simp) hpow))
  obtain ⟨N, hN⟩ := eventually_atTop.1 ht₂; clear ht₂
  refine ⟨N, fun n hn => ?_⟩
  rw [← t.indicator_self_add_compl (f n - g)]
  grw [eLpNorm_add_le hp, sub_eq_add_neg,
    Set.indicator_add' t, Set.indicator_neg', eLpNorm_add_le hp]
  have hnf : eLpNorm (t.indicator (f n)) p μ ≤ ε / 3 := by
    rw [eLpNorm_indicator_eq_eLpNorm_restrict htm]
    exact heLpNorm₁ n t (ht₁.trans (min_le_left _ _))
  have hng : eLpNorm (t.indicator g) p μ ≤ ε / 3 :=
    heLpNorm₂ t htm (ht₁.trans (min_le_right _ _))
  have hlt : eLpNorm (tᶜ.indicator (f n - g)) p μ ≤ ε / 3 := by
    specialize hN n hn
    have : 0 ≤ ε.toReal / (3 * measureUnivNNReal μ ^ (1 / p.toReal)) := by positivity
    have hε₃ : ENNReal.ofReal (ε.toReal / 3) = ε / 3 := by
      rw [ofReal_div_of_pos (show (0 : ℝ) < 3 by simp), ofReal_toReal h.ne]
      simp
    have := eLpNorm_indicator_sub_le_of_dist_bdd μ hp' htm.compl.nullMeasurableSet this
      (((hf n).sub hg).indicator htm.compl).aestronglyMeasurable fun x hx =>
      (dist_comm (g x) (f n x) ▸ (hN x hx).le :
        dist (f n x) (g x) ≤ ε.toReal / (3 * measureUnivNNReal μ ^ (1 / p.toReal)))
    refine this.trans ?_
    rw [div_mul_eq_div_mul_one_div, ← ofReal_toReal (measure_lt_top μ tᶜ).ne,
      ofReal_rpow_of_nonneg toReal_nonneg hdivp, ← ofReal_mul, mul_assoc]; swap
    · positivity
    rw [ofReal_mul (by positivity), hε₃]
    refine mul_le_of_le_one_right (by positivity) (ofReal_le_one.2 ?_)
    rw [mul_comm, mul_one_div, div_le_one]
    · gcongr
      refine (toReal_le_of_le_ofReal (measureUnivNNReal_pos hμ).le ?_)
      rw [ofReal_coe_nnreal, coe_measureUnivNNReal]
      exact measure_mono (Set.subset_univ _)
    · exact Real.rpow_pos_of_pos (measureUnivNNReal_pos hμ) _
  rw [eLpNorm_neg, ← add_thirds ε, ← sub_eq_add_neg]
  gcongr

/-- A sequence of uniformly integrable functions which converges μ-a.e. converges in Lp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313652b796b799acabeca063febbf5151bb2cc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
