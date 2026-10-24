# tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d556ed7-7511-ac33-5b6a-aa550a77e83c",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable",
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
  "slug": "tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable--823a8d96358f4643bca66a38",
  "source": {
    "blob": "abe8c6ec3bb621a51511053bc209f63cfa1a03eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 131,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823a8d96358f4643bca66a38c5c2b5e8efa82ce490b0d8c3f6a3858492d87367",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d556ed7-7511-ac33-5b6a-aa550a77e83c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable [IsFiniteMeasure μ]
    (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g)
    (hfg : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (g x))) : TendstoInMeasure μ f atTop g := by
  refine fun ε hε => ENNReal.tendsto_atTop_zero.mpr fun δ hδ => ?_
  by_cases hδi : δ = ∞
  · simp only [hδi, imp_true_iff, le_top, exists_const]
  lift δ to ℝ≥0 using hδi
  rw [gt_iff_lt, ENNReal.coe_pos, ← NNReal.coe_pos] at hδ
  obtain ⟨t, _, ht, hunif⟩ := tendstoUniformlyOn_of_ae_tendsto' hf hg hfg hδ
  rw [ENNReal.ofReal_coe_nnreal] at ht
  rw [Metric.tendstoUniformlyOn_iff] at hunif
  obtain ⟨N, hN⟩ := eventually_atTop.1 (hunif ε hε)
  refine ⟨N, fun n hn => ?_⟩
  suffices { x : α | ε ≤ dist (f n x) (g x) } ⊆ t from (measure_mono this).trans ht
  rw [← Set.compl_subset_compl]
  intro x hx
  rw [Set.mem_compl_iff, Set.notMem_setOf_iff, dist_comm, not_le]
  exact hN n hn x hx

/-- Convergence a.e. implies convergence in measure in a finite measure space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe8c6ec3bb621a51511053bc209f63cfa1a03eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
