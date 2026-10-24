# norm_xiCoeffJ_tsum_le_of_gt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd5108d6-7f06-deab-124a-67f0aae10258",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e45c6a5f-a78c-a129-20e6-68af2263a6f7",
  "kind": "theorem",
  "lexical_name": "norm_xiCoeffJ_tsum_le_of_gt_one",
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
  "slug": "norm-xicoeffj-tsum-le-of-gt-one--e86ee262c1c76f1191f39193",
  "source": {
    "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e86ee262c1c76f1191f391936c3e355e9372d55f11a21cdecbc5cb738b6b1c47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45c6a5f-a78c-a129-20e6-68af2263a6f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_xiCoeffJ_tsum_le_of_gt_one (σ₀ : ℝ) (hσ₀ : 1 < σ₀) :
    ∃ R₀ C : ℝ, 0 < R₀ ∧ ∀ Λs : ℂ, R₀ ≤ ‖Λs‖ →
      Summable (fun N : ℕ => ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀)) ∧
      ∑' N, ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀) ≤ C / ‖Λs‖ := by
  refine ⟨R0sig σ₀, (4 / (σ₀ - 1)) * Asig (sigAux σ₀), R0sig_pos σ₀, fun Λs hΛ => ?_⟩
  have hf : ∀ N, 0 ≤ ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀) := norm_xiCoeffJ_rpow_nonneg Λs σ₀
  have hf0 : ‖xiCoeffJ Λs 0‖ * ((0:ℕ) : ℝ) ^ (-σ₀) = 0 := by simp
  have hbound : ∀ n, ∑ i ∈ range n, ‖xiCoeffJ Λs i‖ * (i : ℝ) ^ (-σ₀)
      ≤ (4 / (σ₀ - 1)) * Asig (sigAux σ₀) / ‖Λs‖ :=
    fun n => (sum_range_le_sum_Ioc hf hf0 n).trans (sum_norm_xiCoeffJ_rpow_le_gen hσ₀ hΛ n)
  exact ⟨summable_of_sum_range_le hf hbound, Real.tsum_le_of_sum_range_le hf hbound⟩

/-- summability of ‖C_J‖·N^{−σ} for σ ≥ σ₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9c0a5732be3b22f84ae924d4f18e9332658251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
