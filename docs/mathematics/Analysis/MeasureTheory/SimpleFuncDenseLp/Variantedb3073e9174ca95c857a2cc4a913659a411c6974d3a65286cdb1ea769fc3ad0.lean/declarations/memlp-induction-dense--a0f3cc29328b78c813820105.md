# MemLp.induction_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 868,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16d8c5d3-7922-5d1d-bb6b-d3e2ad102f56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85313cbd-9192-723c-81b7-99dcaf24732f",
  "kind": "theorem",
  "lexical_name": "MemLp.induction_dense",
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
  "slug": "memlp-induction-dense--a0f3cc29328b78c813820105",
  "source": {
    "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 922,
    "line": 868,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f3cc29328b78c813820105700863940154e7c4f4b64318463eb86c1c950172",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85313cbd-9192-723c-81b7-99dcaf24732f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–922.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.induction_dense (hp_ne_top : p ≠ ∞) (P : (α → E) → Prop)
    (h0P : ∀ (c : E) ⦃s : Set α⦄, MeasurableSet s → μ s < ∞ →
      ∀ {ε : ℝ≥0∞}, ε ≠ 0 → ∃ g : α → E, eLpNorm (g - s.indicator fun _ => c) p μ ≤ ε ∧ P g)
    (h1P : ∀ f g, P f → P g → P (f + g)) {f : α → E}
    (hf : MemLp f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) : ∃ g : α → E, eLpNorm (f - g) p μ ≤ ε ∧ P g := by
  rcases eq_or_ne p 0 with (rfl | hp_pos)
  · rcases h0P (0 : E) MeasurableSet.empty (by simp only [measure_empty, zero_lt_top])
        one_ne_zero with ⟨g, h'g, Pg⟩
    have : g - (fun x ↦ 0) = g := by ext; simp
    simp [this] at h'g
    refine ⟨g, ?_, Pg⟩
    rw [eLpNorm_exponent_zero]
    · simp
    · apply hf.aestronglyMeasurable.sub
      apply MemLp.aestronglyMeasurable (p := 0)
      rw [memLp_iff]
      exact h'g.trans_lt one_lt_top
  suffices H : ∀ (f' : α →ₛ E) (δ : ℝ≥0∞) (hδ : δ ≠ 0), MemLp f' p μ →
      ∃ g, eLpNorm (⇑f' - g) p μ ≤ δ ∧ P g by
    obtain ⟨η, ηpos, hη⟩ := exists_Lp_half E μ p hε
    rcases hf.exists_simpleFunc_eLpNorm_sub_lt hp_ne_top ηpos.ne' with ⟨f', hf', f'_mem⟩
    rcases H f' η ηpos.ne' f'_mem with ⟨g, hg, Pg⟩
    refine ⟨g, ?_, Pg⟩
    convert! (hη _ _ hf'.le hg).le using 2
    simp only [sub_add_sub_cancel]
  apply SimpleFunc.induction
  · intro c s hs ε εpos Hs
    rcases eq_or_ne c 0 with (rfl | hc)
    · rcases h0P (0 : E) MeasurableSet.empty (by simp only [measure_empty, zero_lt_top])
          εpos with ⟨g, hg, Pg⟩
      rw [← eLpNorm_neg, neg_sub] at hg
      refine ⟨g, ?_, Pg⟩
      convert! hg
      ext x
      simp
    · have : μ s < ∞ := SimpleFunc.measure_lt_top_of_memLp_indicator hp_pos hp_ne_top hc hs Hs
      rcases h0P c hs this εpos with ⟨g, hg, Pg⟩
      rw [← eLpNorm_neg, neg_sub] at hg
      exact ⟨g, hg, Pg⟩
  · intro f f' hff' hf hf' δ δpos int_ff'
    obtain ⟨η, ηpos, hη⟩ := exists_Lp_half E μ p δpos
    rw [SimpleFunc.coe_add,
      memLp_add_of_disjoint hff' f.stronglyMeasurable f'.stronglyMeasurable] at int_ff'
    rcases hf η ηpos.ne' int_ff'.1 with ⟨g, hg, Pg⟩
    rcases hf' η ηpos.ne' int_ff'.2 with ⟨g', hg', Pg'⟩
    refine ⟨g + g', ?_, h1P g g' Pg Pg'⟩
    convert! (hη _ _ hg hg').le using 2
    rw [SimpleFunc.coe_add]
    abel

section Integrable

@[inherit_doc MeasureTheory.Lp.simpleFunc]
notation3:25 α " →₁ₛ[" μ "] " E => @MeasureTheory.Lp.simpleFunc α E _ _ 1 μ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4039326eb4d1a24548a24292c2beeb8da639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
