# _root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.MeasureTheory.MemLp.exists_simpleFunc_eLpNorm_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e8fd940-a50f-a87b-4af9-240e648ed788",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.MeasureTheory.MemLp.exists_simpleFunc_eLpNorm_sub_lt",
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
  "slug": "root-grwtsk-analysis-measuretheory-nnnormapproxonle-variant00729b335e80b--692be64805602a70dbe71d78",
  "source": {
    "blob": "bc237f045196c891c518d440ecfe10e5273ff39c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 185,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692be64805602a70dbe71d78dd4e66964aae97c3d14e8832509b22062493215c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8fd940-a50f-a87b-4af9-240e648ed788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.MeasureTheory.MemLp.exists_simpleFunc_eLpNorm_sub_lt {E : Type*}
    [NormedAddCommGroup E] {f : β → E} {μ : Measure β} (hf : MemLp f p μ) (hp_ne_top : p ≠ ∞)
    {ε : ℝ≥0∞} (hε : ε ≠ 0) : ∃ g : β →ₛ E, eLpNorm (f - ⇑g) p μ < ε ∧ MemLp g p μ := by
  borelize E
  let f' := hf.1.mk f
  rsuffices ⟨g, hg, g_mem⟩ : ∃ g : β →ₛ E, eLpNorm (f' - ⇑g) p μ < ε ∧ MemLp g p μ
  · refine ⟨g, ?_, g_mem⟩
    suffices eLpNorm (f - ⇑g) p μ = eLpNorm (f' - ⇑g) p μ by rwa [this]
    apply eLpNorm_congr_ae
    filter_upwards [hf.1.ae_eq_mk] with x hx
    simpa only [Pi.sub_apply, sub_left_inj] using hx
  have hf' : MemLp f' p μ := hf.ae_eq hf.1.ae_eq_mk
  have f'meas : Measurable f' := hf.1.measurable_mk
  have : SeparableSpace (range f' ∪ {0} : Set E) :=
    StronglyMeasurable.separableSpace_range_union_singleton hf.1.stronglyMeasurable_mk
  rcases ((tendsto_approxOn_range_Lp_eLpNorm hp_ne_top f'meas hf'.2).eventually <|
    gt_mem_nhds hε.bot_lt).exists with ⟨n, hn⟩
  rw [← eLpNorm_neg, neg_sub] at hn
  exact ⟨_, hn, memLp_approxOn_range f'meas hf' _⟩

end Lp

/-! ### L1 approximation by simple functions -/


section Integrable

variable [MeasurableSpace β]
variable [MeasurableSpace E] [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc237f045196c891c518d440ecfe10e5273ff39c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
