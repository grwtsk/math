# nontrivial_Lp_real_of_nontrivial_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "978d665facfd56ec69700c9d56c1d95c2ab03c86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a406e76-8bc9-0ee9-c364-caf47c788874",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86ee7fc4-5027-dd99-4419-3ec4e03703df",
  "kind": "lemma",
  "lexical_name": "nontrivial_Lp_real_of_nontrivial_Lp",
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
  "slug": "nontrivial-lp-real-of-nontrivial-lp--2f64174fd4827d39b1b0f435",
  "source": {
    "blob": "978d665facfd56ec69700c9d56c1d95c2ab03c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 45,
    "path": "GRWTSK/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f64174fd4827d39b1b0f435a910bba99f4f11e9defa92ff27cc1d138149f60d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86ee7fc4-5027-dd99-4419-3ec4e03703df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nontrivial_Lp_real_of_nontrivial_Lp [Nontrivial (Lp E p μ)] : Nontrivial (Lp ℝ p μ) := by
  obtain ⟨f, hf⟩ : ∃ f : Lp E p μ, f ≠ 0 := exists_ne 0
  have hfne : ¬ (f =ᵐ[μ] 0) := by
    contrapose! hf
    ext
    grw [hf, Lp.coeFn_zero E p μ]
  rcases eq_top_or_lt_top p with rfl | h'p
  · apply nontrivial_of_ne ((memLp_top_const (1 : ℝ)).toLp _) 0
    contrapose! hfne
    have := Lp.ext_iff.1 hfne
    grw [Lp.coeFn_zero, MemLp.coeFn_toLp] at this
    filter_upwards [this] with x hx using by simp at hx
  rcases eq_or_ne p 0 with rfl | hp
  · have : MemLp (fun (_ : α) ↦ (1 : ℝ)) 0 μ := by simpa using aestronglyMeasurable_const
    apply nontrivial_of_ne (this.toLp _) 0
    contrapose! hfne
    have := Lp.ext_iff.1 hfne
    grw [Lp.coeFn_zero, MemLp.coeFn_toLp] at this
    filter_upwards [this] with x hx using by simp at hx
  · have h'f : AEFinStronglyMeasurable f μ :=
      MemLp.aefinStronglyMeasurable (Lp.memLp f) hp h'p.ne
    obtain ⟨s, s_meas, s_pos, s_top⟩ : ∃ s, MeasurableSet s ∧ 0 < μ s ∧ μ s < ∞ :=
      h'f.exists_measurableSet_measure_pos_lt_top hfne
    apply nontrivial_of_ne (indicatorConstLp p s_meas s_top.ne 1) 0
    intro hzero
    have : ‖indicatorConstLp p s_meas s_top.ne (1 : ℝ)‖ = ‖(0 : Lp ℝ p μ)‖ := by rw [hzero]
    simp only [norm_indicatorConstLp hp h'p.ne, norm_one, one_div, one_mul, Lp.norm_zero] at this
    rw [Real.rpow_eq_zero (by positivity) (by simp [ENNReal.toReal_eq_zero_iff, hp, h'p.ne]),
      measureReal_eq_zero_iff] at this
    order

variable [NormedSpace ℝ E]

variable (E p μ) in
/-- If an `L^p` space is complete and nontrivial, then the target space is complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `978d665facfd56ec69700c9d56c1d95c2ab03c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
