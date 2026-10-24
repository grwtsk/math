# lintegral_Lp_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d27698c5-823e-8f91-5bfd-2d51c8f38219",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7119c27-7f1d-c151-c13d-be593324390e",
  "kind": "theorem",
  "lexical_name": "lintegral_Lp_add_le",
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
  "slug": "lintegral-lp-add-le--02eda59f5d25536fc21d17da",
  "source": {
    "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 346,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02eda59f5d25536fc21d17daceb0afdd1a4fa3d73e66a6dd9ea20b64b07f8096",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7119c27-7f1d-c151-c13d-be593324390e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_Lp_add_le {p : ℝ} {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    (hp1 : 1 ≤ p) :
    (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≤
      (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a, g a ^ p ∂μ) ^ (1 / p) := by
  have hp_pos : 0 < p := lt_of_lt_of_le zero_lt_one hp1
  by_cases hf_top : ∫⁻ a, f a ^ p ∂μ = ⊤
  · simp [hf_top, hp_pos]
  by_cases hg_top : ∫⁻ a, g a ^ p ∂μ = ⊤
  · simp [hg_top, hp_pos]
  by_cases h1 : p = 1
  · refine' le_of_eq _
    simp_rw [h1, one_div_one, ENNReal.rpow_one]
    exact lintegral_add_left' hf _
  have hp1_lt : 1 < p := by
    refine' lt_of_le_of_ne hp1 _
    symm
    exact h1
  have hpq := Real.isConjugateExponent_conjugateExponent hp1_lt
  by_cases h0 : (∫⁻ a, (f + g) a ^ p ∂μ) = 0
  · rw [h0, @ENNReal.zero_rpow_of_pos (1 / p) (by simp [lt_of_lt_of_le zero_lt_one hp1])]
    exact zero_le _
  have htop : (∫⁻ a, (f + g) a ^ p ∂μ) ≠ ⊤ := by
    rw [← Ne.def] at hf_top hg_top
    rw [← lt_top_iff_ne_top] at hf_top hg_top ⊢
    exact lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top hf hf_top hg_top hp1
  exact lintegral_Lp_add_le_aux hpq hf hf_top hg hg_top h0 htop
#align ennreal.lintegral_Lp_add_le ENNReal.lintegral_Lp_add_le

/-- Variant of Minkowski's inequality for functions `α → ℝ≥0∞` in `ℒp` with `p ≤ 1`: the `ℒp`
seminorm of the sum of two functions is bounded by a constant multiple of the sum
of their `ℒp` seminorms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c018b986246e2a0f21c5aa9a354844ec14d7f5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
