# MemLp.exists_boundedContinuous_eLpNorm_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e29e0c5c-f5ec-7104-782d-c9924868a556",
  "kind": "theorem",
  "lexical_name": "MemLp.exists_boundedContinuous_eLpNorm_sub_le",
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
  "slug": "memlp-exists-boundedcontinuous-elpnorm-sub-le--5915de598ef760c5e883e77e",
  "source": {
    "blob": "8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5915de598ef760c5e883e77e967d83b580006a879323c7783d642da5fd25c120",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29e0c5c-f5ec-7104-782d-c9924868a556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.exists_boundedContinuous_eLpNorm_sub_le [μ.WeaklyRegular] (hp : p ≠ ∞) {f : α → E}
    (hf : MemLp f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α →ᵇ E, eLpNorm (f - (g : α → E)) p μ ≤ ε ∧ MemLp g p μ := by
  suffices H :
      ∃ g : α → E, eLpNorm (f - g) p μ ≤ ε ∧ Continuous g ∧ MemLp g p μ ∧ IsBounded (range g) by
    rcases H with ⟨g, hg, g_cont, g_mem, g_bd⟩
    exact ⟨⟨⟨g, g_cont⟩, Metric.isBounded_range_iff.1 g_bd⟩, hg, g_mem⟩
  -- It suffices to check that the set of functions we consider approximates characteristic
  -- functions, is stable under addition and made of ae strongly measurable functions.
  -- First check the latter easy facts.
  apply hf.induction_dense hp _ _ _ hε
  rotate_left
  -- stability under addition
  · rintro f g ⟨f_cont, f_mem, f_bd⟩ ⟨g_cont, g_mem, g_bd⟩
    refine ⟨f_cont.add g_cont, f_mem.add g_mem, ?_⟩
    let f' : α →ᵇ E := ⟨⟨f, f_cont⟩, Metric.isBounded_range_iff.1 f_bd⟩
    let g' : α →ᵇ E := ⟨⟨g, g_cont⟩, Metric.isBounded_range_iff.1 g_bd⟩
    exact (f' + g').isBounded_range
  -- We are left with approximating characteristic functions.
  -- This follows from `exists_continuous_eLpNorm_sub_le_of_closed`.
  intro c t ht htμ ε hε
  rcases exists_Lp_half E μ p hε with ⟨δ, δpos, hδ⟩
  obtain ⟨η, ηpos, hη⟩ :
      ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → NullMeasurableSet s μ →
          eLpNorm (s.indicator fun _x => c) p μ ≤ δ :=
    exists_eLpNorm_indicator_le hp c δpos.ne'
  have hη_pos' : (0 : ℝ≥0∞) < η := ENNReal.coe_pos.2 ηpos
  obtain ⟨s, st, s_closed, μs⟩ : ∃ s, s ⊆ t ∧ IsClosed s ∧ μ (t \ s) < η :=
    ht.exists_isClosed_sdiff_lt htμ.ne hη_pos'.ne'
  have hsμ : μ s < ∞ := (measure_mono st).trans_lt htμ
  have I1 : eLpNorm ((s.indicator fun _y => c) - t.indicator fun _y => c) p μ ≤ δ := by
    rw [← eLpNorm_neg, neg_sub, ← indicator_sdiff st]
    exact hη _ μs.le (ht.diff s_closed.measurableSet).nullMeasurableSet
  rcases exists_continuous_eLpNorm_sub_le_of_closed hp s_closed isOpen_univ (subset_univ _) hsμ.ne c
      δpos.ne' with
    ⟨f, f_cont, I2, f_bound, -, f_mem⟩
  have I3 : eLpNorm (f - t.indicator fun _y => c) p μ ≤ ε := by
    convert! (hδ _ _ I2 I1).le using 2
    ext x
    simp
  refine ⟨f, I3, f_cont, f_mem, ?_⟩
  exact (BoundedContinuousFunction.ofNormedAddCommGroup f f_cont _ f_bound).isBounded_range

/-- Any function in `ℒp` can be approximated by bounded continuous functions when `0 < p < ∞`,
version in terms of `∫`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
