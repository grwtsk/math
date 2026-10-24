# exists_pos_set_lintegral_lt_of_measure_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eac3a71a-f926-14d7-c604-c4695fe5677a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fcaac25-0fa2-90a9-d70f-7df4f42a0b6a",
  "kind": "theorem",
  "lexical_name": "exists_pos_set_lintegral_lt_of_measure_lt",
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
  "slug": "exists-pos-set-lintegral-lt-of-measure-lt--6ab315f7ff18022e2c3bca26",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 450,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab315f7ff18022e2c3bca268361f87c43fbed8c7e33a76ce2fcd42a37a6cc10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fcaac25-0fa2-90a9-d70f-7df4f42a0b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_set_lintegral_lt_of_measure_lt {f : α → ℝ≥0∞} (h : ∫⁻ x, f x ∂μ ≠ ∞) {ε : ℝ≥0∞}
    (hε : ε ≠ 0) : ∃ δ > 0, ∀ s, μ s < δ → ∫⁻ x in s, f x ∂μ < ε := by
  rcases exists_between hε.bot_lt with ⟨ε₂, hε₂0 : 0 < ε₂, hε₂ε⟩
  rcases exists_between hε₂0 with ⟨ε₁, hε₁0, hε₁₂⟩
  rcases exists_simpleFunc_forall_lintegral_sub_lt_of_pos h hε₁0.ne' with ⟨φ, _, hφ⟩
  rcases φ.exists_forall_le with ⟨C, hC⟩
  use (ε₂ - ε₁) / C, ENNReal.div_pos_iff.2 ⟨(tsub_pos_iff_lt.2 hε₁₂).ne', ENNReal.coe_ne_top⟩
  refine' fun s hs => lt_of_le_of_lt _ hε₂ε
  simp only [lintegral_eq_nnreal, iSup_le_iff]
  intro ψ hψ
  calc
    (map (↑) ψ).lintegral (μ.restrict s) ≤
        (map (↑) φ).lintegral (μ.restrict s) + (map (↑) (ψ - φ)).lintegral (μ.restrict s) := by
      rw [← SimpleFunc.add_lintegral, ← SimpleFunc.map_add @ENNReal.coe_add]
      refine' SimpleFunc.lintegral_mono (fun x => _) le_rfl
      simp only [add_tsub_eq_max, le_max_right, coe_map, Function.comp_apply, SimpleFunc.coe_add,
        SimpleFunc.coe_sub, Pi.add_apply, Pi.sub_apply, WithTop.coe_max (φ x) (ψ x), ENNReal.some]
    _ ≤ (map (↑) φ).lintegral (μ.restrict s) + ε₁ := by
      refine' add_le_add le_rfl (le_trans _ (hφ _ hψ).le)
      exact SimpleFunc.lintegral_mono le_rfl Measure.restrict_le_self
    _ ≤ (SimpleFunc.const α (C : ℝ≥0∞)).lintegral (μ.restrict s) + ε₁ :=
      (add_le_add (SimpleFunc.lintegral_mono (fun x => by exact coe_le_coe.2 (hC x)) le_rfl) le_rfl)
    _ = C * μ s + ε₁ := by
      simp only [← SimpleFunc.lintegral_eq_lintegral, coe_const, lintegral_const,
        Measure.restrict_apply, MeasurableSet.univ, univ_inter, Function.const]
    _ ≤ C * ((ε₂ - ε₁) / C) + ε₁ := by gcongr
    _ ≤ ε₂ - ε₁ + ε₁ := by gcongr; apply mul_div_le
    _ = ε₂ := tsub_add_cancel_of_le hε₁₂.le
#align measure_theory.exists_pos_set_lintegral_lt_of_measure_lt MeasureTheory.exists_pos_set_lintegral_lt_of_measure_lt

/-- If `f` has finite integral, then `∫⁻ x in s, f x ∂μ` is absolutely continuous in `s`: it tends
to zero as `μ s` tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
