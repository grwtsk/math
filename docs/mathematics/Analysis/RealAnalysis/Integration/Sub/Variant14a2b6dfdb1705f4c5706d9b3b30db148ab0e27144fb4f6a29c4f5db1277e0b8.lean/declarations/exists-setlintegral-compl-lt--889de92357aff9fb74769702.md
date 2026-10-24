# exists_setLIntegral_compl_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d8e76541bd486034955db2673d8981954523e58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68b2dab1-b4ff-23c0-ebe7-adab1668327d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:257c3285-e22c-443b-1171-05044afa500b",
  "kind": "theorem",
  "lexical_name": "exists_setLIntegral_compl_lt",
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
  "slug": "exists-setlintegral-compl-lt--889de92357aff9fb74769702",
  "source": {
    "blob": "8d8e76541bd486034955db2673d8981954523e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889de92357aff9fb74769702ed0c12f1976be464ab8e11e988b44a410d5aba19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:257c3285-e22c-443b-1171-05044afa500b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_setLIntegral_compl_lt {f : α → ℝ≥0∞} (hf : ∫⁻ a, f a ∂μ ≠ ∞)
    {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ s : Set α, MeasurableSet s ∧ μ s < ∞ ∧ ∫⁻ a in sᶜ, f a ∂μ < ε := by
  by_cases hf₀ : ∫⁻ a, f a ∂μ = 0
  · exact ⟨∅, .empty, by simp, by simpa [hf₀, pos_iff_ne_zero]⟩
  obtain ⟨g, hgf, hg_meas, hgsupp, hgε⟩ :
      ∃ g ≤ f, Measurable g ∧ μ (support g) < ∞ ∧ ∫⁻ a, f a ∂μ - ε < ∫⁻ a, g a ∂μ := by
    obtain ⟨g, hgf, hgε⟩ : ∃ (g : α →ₛ ℝ≥0∞) (_ : g ≤ f), ∫⁻ a, f a ∂μ - ε < g.lintegral μ := by
      simpa only [← lt_iSup_iff, ← lintegral_def] using ENNReal.sub_lt_self hf hf₀ hε
    refine ⟨g, hgf, g.measurable, ?_, by rwa [g.lintegral_eq_lintegral]⟩
    exact SimpleFunc.FinMeasSupp.of_lintegral_ne_top <| ne_top_of_le_ne_top hf <|
      g.lintegral_eq_lintegral μ ▸ lintegral_mono hgf
  refine ⟨_, measurableSet_support hg_meas, hgsupp, ?_⟩
  calc
    ∫⁻ a in (support g)ᶜ, f a ∂μ
      = ∫⁻ a in (support g)ᶜ, f a - g a ∂μ := setLIntegral_congr_fun
      (measurableSet_support hg_meas).compl <| ae_of_all _ <| by intro; simp_all
    _ ≤ ∫⁻ a, f a - g a ∂μ := setLIntegral_le_lintegral _ _
    _ = ∫⁻ a, f a ∂μ - ∫⁻ a, g a ∂μ :=
      lintegral_sub hg_meas (ne_top_of_le_ne_top hf <| lintegral_mono hgf) (ae_of_all _ hgf)
    _ < ε := ENNReal.sub_lt_of_lt_add (lintegral_mono hgf) <|
      ENNReal.lt_add_of_sub_lt_left (.inl hf) hgε

@[deprecated (since := "2025-04-22")]
alias exists_setLintegral_compl_lt := exists_setLIntegral_compl_lt

/-- For any function `f : α → ℝ≥0∞`, there exists a measurable function `g ≤ f` with the same
integral over any measurable set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8e76541bd486034955db2673d8981954523e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
