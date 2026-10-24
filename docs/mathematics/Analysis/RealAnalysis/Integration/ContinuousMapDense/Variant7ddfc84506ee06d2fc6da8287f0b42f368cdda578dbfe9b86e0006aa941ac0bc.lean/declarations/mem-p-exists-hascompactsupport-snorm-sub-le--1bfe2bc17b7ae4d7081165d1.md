# Memℒp.exists_hasCompactSupport_snorm_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d398ef9a-ab4d-9b13-dac3-b84077826177",
  "kind": "theorem",
  "lexical_name": "Memℒp.exists_hasCompactSupport_snorm_sub_le",
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
  "slug": "mem-p-exists-hascompactsupport-snorm-sub-le--1bfe2bc17b7ae4d7081165d1",
  "source": {
    "blob": "42e34c708789a0e6253a72c3fe0cad5f477eeb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bfe2bc17b7ae4d7081165d11083b2ebc61c44a0f9aff1c8572fb77e2394f4cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d398ef9a-ab4d-9b13-dac3-b84077826177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.exists_hasCompactSupport_snorm_sub_le [LocallyCompactSpace α] [μ.Regular] (hp : p ≠ ∞)
    {f : α → E} (hf : Memℒp f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α → E, HasCompactSupport g ∧ snorm (f - g) p μ ≤ ε ∧ Continuous g ∧ Memℒp g p μ := by
  suffices H :
    ∃ g : α → E, snorm (f - g) p μ ≤ ε ∧ Continuous g ∧ Memℒp g p μ ∧ HasCompactSupport g
  · rcases H with ⟨g, hg, g_cont, g_mem, g_support⟩
    exact ⟨g, g_support, hg, g_cont, g_mem⟩
  -- It suffices to check that the set of functions we consider approximates characteristic
  -- functions, is stable under addition and consists of ae strongly measurable functions.
  -- First check the latter easy facts.
  apply hf.induction_dense hp _ _ _ _ hε
  rotate_left
  -- stability under addition
  · rintro f g ⟨f_cont, f_mem, hf⟩ ⟨g_cont, g_mem, hg⟩
    exact ⟨f_cont.add g_cont, f_mem.add g_mem, hf.add hg⟩
  -- ae strong measurability
  · rintro f ⟨_f_cont, f_mem, _hf⟩
    exact f_mem.aestronglyMeasurable
  -- We are left with approximating characteristic functions.
  -- This follows from `exists_continuous_snorm_sub_le_of_closed`.
  intro c t ht htμ ε hε
  rcases exists_Lp_half E μ p hε with ⟨δ, δpos, hδ⟩
  obtain ⟨η, ηpos, hη⟩ :
    ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → snorm (s.indicator fun _x => c) p μ ≤ δ
  exact exists_snorm_indicator_le hp c δpos.ne'
  have hη_pos' : (0 : ℝ≥0∞) < η := ENNReal.coe_pos.2 ηpos
  obtain ⟨s, st, s_compact, μs⟩ : ∃ s, s ⊆ t ∧ IsCompact s ∧ μ (t \ s) < η
  exact ht.exists_isCompact_diff_lt htμ.ne hη_pos'.ne'
  have hsμ : μ s < ∞ := (measure_mono st).trans_lt htμ
  have I1 : snorm ((s.indicator fun _y => c) - t.indicator fun _y => c) p μ ≤ δ := by
    rw [← snorm_neg, neg_sub, ← indicator_diff st]
    exact hη _ μs.le
  obtain ⟨k, k_compact, sk⟩ : ∃ k : Set α, IsCompact k ∧ s ⊆ interior k :=
    exists_compact_superset s_compact
  rcases exists_continuous_snorm_sub_le_of_closed hp s_compact.isClosed isOpen_interior sk hsμ.ne c
      δpos.ne' with
    ⟨f, f_cont, I2, _f_bound, f_support, f_mem⟩
  have I3 : snorm (f - t.indicator fun _y => c) p μ ≤ ε := by
    convert
      (hδ _ _
          (f_mem.aestronglyMeasurable.sub
            (aestronglyMeasurable_const.indicator s_compact.measurableSet))
          ((aestronglyMeasurable_const.indicator s_compact.measurableSet).sub
            (aestronglyMeasurable_const.indicator ht))
          I2 I1).le using 2
    simp only [sub_add_sub_cancel]
  refine' ⟨f, I3, f_cont, f_mem, HasCompactSupport.intro k_compact fun x hx => _⟩
  rw [← Function.nmem_support]
  contrapose! hx
  exact interior_subset (f_support hx)
#align measure_theory.mem_ℒp.exists_has_compact_support_snorm_sub_le MeasureTheory.Memℒp.exists_hasCompactSupport_snorm_sub_le

/-- In a locally compact space, any function in `ℒp` can be approximated by compactly supported
continuous functions when `0 < p < ∞`, version in terms of `∫`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e34c708789a0e6253a72c3fe0cad5f477eeb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
