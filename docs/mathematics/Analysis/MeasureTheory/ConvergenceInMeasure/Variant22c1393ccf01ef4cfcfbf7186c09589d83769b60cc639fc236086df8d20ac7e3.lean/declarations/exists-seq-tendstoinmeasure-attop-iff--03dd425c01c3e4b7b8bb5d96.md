# exists_seq_tendstoInMeasure_atTop_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12d6cdd1316f09ae6c0327146288c272e3421f3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0345cf32-a65e-9eef-f107-29a5cdd557eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b983e97f-4082-f128-88ff-516eca497e52",
  "kind": "theorem",
  "lexical_name": "exists_seq_tendstoInMeasure_atTop_iff",
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
  "slug": "exists-seq-tendstoinmeasure-attop-iff--03dd425c01c3e4b7b8bb5d96",
  "source": {
    "blob": "12d6cdd1316f09ae6c0327146288c272e3421f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 260,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03dd425c01c3e4b7b8bb5d961cfbb76b608aed099227cf3d7d633ccbdbcc2ba0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b983e97f-4082-f128-88ff-516eca497e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_tendstoInMeasure_atTop_iff [IsFiniteMeasure μ]
    {f : ℕ → α → E} (hf : ∀ (n : ℕ), AEStronglyMeasurable (f n) μ) {g : α → E} :
    TendstoInMeasure μ f atTop g ↔
      ∀ ns : ℕ → ℕ, StrictMono ns → ∃ ns' : ℕ → ℕ, StrictMono ns' ∧
        ∀ᵐ (ω : α) ∂μ, Tendsto (fun i ↦ f (ns (ns' i)) ω) atTop (𝓝 (g ω)) := by
  refine ⟨fun hfg _ hns ↦ (hfg.comp hns.tendsto_atTop).exists_seq_tendsto_ae,
    not_imp_not.mp (fun h1 ↦ ?_)⟩
  rw [tendstoInMeasure_iff_tendsto_toNNReal] at h1
  push_neg at *
  obtain ⟨ε, hε, h2⟩ := h1
  obtain ⟨δ, ns, hδ, hns, h3⟩ : ∃ (δ : ℝ≥0) (ns : ℕ → ℕ), 0 < δ ∧ StrictMono ns ∧
      ∀ n, δ ≤ (μ {x | ε ≤ dist (f (ns n) x) (g x)}).toNNReal := by
    obtain ⟨s, hs, h4⟩ := not_tendsto_iff_exists_frequently_notMem.1 h2
    obtain ⟨δ, hδ, h5⟩ := NNReal.nhds_zero_basis.mem_iff.1 hs
    obtain ⟨ns, hns, h6⟩ := extraction_of_frequently_atTop h4
    exact ⟨δ, ns, hδ, hns, fun n ↦ Set.notMem_Iio.1 (Set.notMem_subset h5 (h6 n))⟩
  refine ⟨ns, hns, fun ns' _ ↦ ?_⟩
  by_contra h6
  have h7 := tendstoInMeasure_iff_tendsto_toNNReal.mp <|
    tendstoInMeasure_of_tendsto_ae (fun n ↦ hf _) h6
  exact lt_irrefl _ (lt_of_le_of_lt (ge_of_tendsto' (h7 ε hε) (fun n ↦ h3 _)) hδ)

end ExistsSeqTendstoAe

section TendstoInMeasureUnique

/-- The limit in measure is ae unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d6cdd1316f09ae6c0327146288c272e3421f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
