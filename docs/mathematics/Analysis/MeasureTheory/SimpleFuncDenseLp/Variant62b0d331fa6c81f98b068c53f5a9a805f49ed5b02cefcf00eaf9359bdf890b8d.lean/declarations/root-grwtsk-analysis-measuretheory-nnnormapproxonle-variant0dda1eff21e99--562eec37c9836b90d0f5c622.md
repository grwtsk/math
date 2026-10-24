# _root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.MeasureTheory.Memℒp.exists_simpleFunc_snorm_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b9e5efd-8557-3762-c700-8361277637bf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.MeasureTheory.Memℒp.exists_simpleFunc_snorm_sub_lt",
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
  "slug": "root-grwtsk-analysis-measuretheory-nnnormapproxonle-variant0dda1eff21e99--562eec37c9836b90d0f5c622",
  "source": {
    "blob": "5c77dc9c371fa99d42ebbb15160925d62de4b858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 209,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:562eec37c9836b90d0f5c622973cb5f957368586370bda394b6fe4f33fcd220a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b9e5efd-8557-3762-c700-8361277637bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.NnnormApproxOnLe.Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.MeasureTheory.Memℒp.exists_simpleFunc_snorm_sub_lt {E : Type*}
    [NormedAddCommGroup E] {f : β → E} {μ : Measure β} (hf : Memℒp f p μ) (hp_ne_top : p ≠ ∞)
    {ε : ℝ≥0∞} (hε : ε ≠ 0) : ∃ g : β →ₛ E, snorm (f - ⇑g) p μ < ε ∧ Memℒp g p μ := by
  borelize E
  let f' := hf.1.mk f
  rsuffices ⟨g, hg, g_mem⟩ : ∃ g : β →ₛ E, snorm (f' - ⇑g) p μ < ε ∧ Memℒp g p μ
  · refine' ⟨g, _, g_mem⟩
    suffices snorm (f - ⇑g) p μ = snorm (f' - ⇑g) p μ by rwa [this]
    apply snorm_congr_ae
    filter_upwards [hf.1.ae_eq_mk] with x hx
    simpa only [Pi.sub_apply, sub_left_inj] using hx
  have hf' : Memℒp f' p μ := hf.ae_eq hf.1.ae_eq_mk
  have f'meas : Measurable f' := hf.1.measurable_mk
  have : SeparableSpace (range f' ∪ {0} : Set E) :=
    StronglyMeasurable.separableSpace_range_union_singleton hf.1.stronglyMeasurable_mk
  rcases ((tendsto_approxOn_range_Lp_snorm hp_ne_top f'meas hf'.2).eventually <|
    gt_mem_nhds hε.bot_lt).exists with ⟨n, hn⟩
  rw [← snorm_neg, neg_sub] at hn
  exact ⟨_, hn, memℒp_approxOn_range f'meas hf' _⟩
#align measure_theory.mem_ℒp.exists_simple_func_snorm_sub_lt MeasureTheory.Memℒp.exists_simpleFunc_snorm_sub_lt

end Lp

/-! ### L1 approximation by simple functions -/


section Integrable

variable [MeasurableSpace β]

variable [MeasurableSpace E] [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c77dc9c371fa99d42ebbb15160925d62de4b858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
