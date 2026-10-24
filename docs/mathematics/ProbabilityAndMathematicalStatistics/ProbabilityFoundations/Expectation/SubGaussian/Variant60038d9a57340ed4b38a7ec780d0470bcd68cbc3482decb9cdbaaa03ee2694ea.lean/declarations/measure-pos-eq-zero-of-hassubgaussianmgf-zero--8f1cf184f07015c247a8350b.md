# measure_pos_eq_zero_of_hasSubGaussianMGF_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74283c9a-0d4a-07df-1759-2cddf247a54e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e67bb095-f8ad-99a3-6b47-ab3d9c381e44",
  "kind": "lemma",
  "lexical_name": "measure_pos_eq_zero_of_hasSubGaussianMGF_zero",
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
  "slug": "measure-pos-eq-zero-of-hassubgaussianmgf-zero--8f1cf184f07015c247a8350b",
  "source": {
    "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 350,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1cf184f07015c247a8350bca19cf2111ca81a1ad9fa1a5da5765d51eb39b84",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e67bb095-f8ad-99a3-6b47-ab3d9c381e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_pos_eq_zero_of_hasSubGaussianMGF_zero (h : HasSubgaussianMGF X 0 κ ν) :
    ∀ᵐ ω' ∂ν, (κ ω') {ω | 0 < X ω} = 0 := by
  have hs : {ω | 0 < X ω} = ⋃ ε : {ε : ℚ // 0 < ε}, {ω | ε ≤ X ω} := by
    ext ω
    simp only [Set.mem_ofPred_eq, Set.mem_iUnion, Subtype.exists, exists_prop]
    constructor
    · intro hp
      obtain ⟨q, h1, h2⟩ := exists_rat_btwn hp
      exact ⟨q, (q.cast_pos.1 h1), h2.le⟩
    · intro ⟨q, h1, h2⟩
      exact lt_of_lt_of_le (q.cast_pos.2 h1) h2
  have hb (ε : ℚ) : ∀ᵐ ω' ∂ν, 0 < ε → (κ ω') {ω | ε ≤ X ω} = 0 := by
    filter_upwards [h.measure_ge_le_exp_add ε, h.isFiniteMeasure] with ω' hm _ hε
    simp only [neg_mul, NNReal.coe_zero, zero_mul, zero_div, add_zero] at hm
    suffices (κ ω').real {ω | ε ≤ X ω} = 0 by simpa [Measure.real, ENNReal.toReal_eq_zero_iff]
    have hl : Filter.Tendsto (fun t ↦ rexp (-(t * ε))) Filter.atTop (𝓝 0) := by
      apply tendsto_exp_neg_atTop_nhds_zero.comp
      exact Filter.Tendsto.atTop_mul_const (ε.cast_pos.2 hε) (fun _ a ↦ a)
    apply le_antisymm
    · exact ge_of_tendsto hl (Filter.eventually_atTop.2 ⟨0, hm⟩)
    · exact measureReal_nonneg
  /- `ν`-almost everywhere, `{ω | 0 < X ω}` is a countable union of `κ ω'`-null sets. -/
  filter_upwards [ae_all_iff.2 hb] with ω' hn
  simp only [hs, measure_iUnion_null_iff, Subtype.forall]
  exact fun _ ↦ hn _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2c9b55f67a2de2ea02f0d91371ae57438c26a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
