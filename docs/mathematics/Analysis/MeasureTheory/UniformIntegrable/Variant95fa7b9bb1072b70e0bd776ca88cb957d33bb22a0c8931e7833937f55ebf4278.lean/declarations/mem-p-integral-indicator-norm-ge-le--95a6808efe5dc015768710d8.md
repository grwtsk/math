# Memℒp.integral_indicator_norm_ge_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1221c935-f66a-0a12-15ce-188fe9be8aee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6571975a-c5f3-ec04-a5e0-137a09047aae",
  "kind": "theorem",
  "lexical_name": "Memℒp.integral_indicator_norm_ge_le",
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
  "slug": "mem-p-integral-indicator-norm-ge-le--95a6808efe5dc015768710d8",
  "source": {
    "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 176,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a6808efe5dc015768710d8a344f01e2bd724c3af86f421b151dd1270ffa33c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6571975a-c5f3-ec04-a5e0-137a09047aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.integral_indicator_norm_ge_le (hf : Memℒp f 1 μ) (hmeas : StronglyMeasurable f)
    {ε : ℝ} (hε : 0 < ε) :
    ∃ M : ℝ, (∫⁻ x, ‖{ x | M ≤ ‖f x‖₊ }.indicator f x‖₊ ∂μ) ≤ ENNReal.ofReal ε := by
  have htendsto :
      ∀ᵐ x ∂μ, Tendsto (fun M : ℕ => { x | (M : ℝ) ≤ ‖f x‖₊ }.indicator f x) atTop (𝓝 0) :=
    univ_mem' (id fun x => tendsto_indicator_ge f x)
  have hmeas : ∀ M : ℕ, AEStronglyMeasurable ({ x | (M : ℝ) ≤ ‖f x‖₊ }.indicator f) μ := by
    intro M
    apply hf.1.indicator
    apply StronglyMeasurable.measurableSet_le stronglyMeasurable_const
      hmeas.nnnorm.measurable.coe_nnreal_real.stronglyMeasurable
  have hbound : HasFiniteIntegral (fun x => ‖f x‖) μ := by
    rw [memℒp_one_iff_integrable] at hf
    exact hf.norm.2
  have : Tendsto (fun n : ℕ ↦ ∫⁻ a, ENNReal.ofReal ‖{ x | n ≤ ‖f x‖₊ }.indicator f a - 0‖ ∂μ)
      atTop (𝓝 0) := by
    refine' tendsto_lintegral_norm_of_dominated_convergence hmeas hbound _ htendsto
    refine' fun n => univ_mem' (id fun x => _)
    by_cases hx : (n : ℝ) ≤ ‖f x‖
    · dsimp
      rwa [Set.indicator_of_mem]
    · dsimp
      rw [Set.indicator_of_not_mem, norm_zero]
      · exact norm_nonneg _
      · assumption
  rw [ENNReal.tendsto_atTop_zero] at this
  obtain ⟨M, hM⟩ := this (ENNReal.ofReal ε) (ENNReal.ofReal_pos.2 hε)
  simp only [true_and_iff, ge_iff_le, zero_tsub, zero_le, sub_zero, zero_add, coe_nnnorm,
    Set.mem_Icc] at hM
  refine' ⟨M, _⟩
  convert hM M le_rfl
  simp only [coe_nnnorm, ENNReal.ofReal_eq_coe_nnreal (norm_nonneg _)]
  rfl
#align measure_theory.mem_ℒp.integral_indicator_norm_ge_le MeasureTheory.Memℒp.integral_indicator_norm_ge_le

/-- This lemma is superceded by `MeasureTheory.Memℒp.integral_indicator_norm_ge_nonneg_le`
which does not require measurability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a20fe34047ff03983087f39f261020e75101cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
