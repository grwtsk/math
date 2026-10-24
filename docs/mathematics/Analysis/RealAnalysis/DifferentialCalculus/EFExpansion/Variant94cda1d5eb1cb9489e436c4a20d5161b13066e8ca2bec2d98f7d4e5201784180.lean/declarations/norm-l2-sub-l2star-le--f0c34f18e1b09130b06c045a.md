# norm_L2_sub_L2star_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2ae3aaf-09a5-d55a-aa45-2b09da8dcc4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:687c8fc1-3121-24a7-bcb3-a153189b9a82",
  "kind": "theorem",
  "lexical_name": "norm_L2_sub_L2star_le'",
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
  "slug": "norm-l2-sub-l2star-le--f0c34f18e1b09130b06c045a",
  "source": {
    "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 424,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c34f18e1b09130b06c045a1215e6fe469058da4c0a3c7f54b1d982e5cefb09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:687c8fc1-3121-24a7-bcb3-a153189b9a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_L2_sub_L2star_le' (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4) {t τ : ℝ} (ht : 2 ≤ t) (hτ : 2 ≤ τ) :
    ‖L2 (((c:ℝ):ℂ) + t * I) - ((L2star τ : ℝ) : ℂ)‖ ≤ (|t - τ| + 24) / (2 * min t τ) := by
  have ht0 : 0 < t := by linarith
  have hτ0 : 0 < τ := by linarith
  have hm : 0 < min t τ := lt_min ht0 hτ0
  have h1 := norm_L2_sub_L2star_self_le' hc1 hc2 ht
  have h2 := norm_L2star_sub_L2star_le ht0 hτ0
  calc ‖L2 (((c:ℝ):ℂ) + t * I) - ((L2star τ : ℝ) : ℂ)‖
      ≤ ‖L2 (((c:ℝ):ℂ) + t * I) - ((L2star t : ℝ) : ℂ)‖ + ‖((L2star t : ℝ) : ℂ) - ((L2star τ : ℝ) : ℂ)‖ :=
        norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ 12 / t + |t - τ| / (2 * min t τ) := add_le_add h1 h2
    _ ≤ 24 / (2 * min t τ) + |t - τ| / (2 * min t τ) := by
        have : 12 / t ≤ 24 / (2 * min t τ) := by
          rw [div_le_div_iff₀ ht0 (by positivity)]
          nlinarith [min_le_left t τ]
        linarith
    _ = (|t - τ| + 24) / (2 * min t τ) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfd7f9c0da96f5740c52033032152259e5a67eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
