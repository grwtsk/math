# LFunction_linear_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b853519f-53e4-938d-faba-96045438a6d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab2865fe-bdb3-8df8-ee02-7643d95c2d79",
  "kind": "theorem",
  "lexical_name": "LFunction_linear_growth",
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
  "slug": "lfunction-linear-growth--b9c760f83c52742309a54cb7",
  "source": {
    "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 236,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c760f83c52742309a54cb786a4e06df9aaea932deea7e02b99968335ba9fa1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab2865fe-bdb3-8df8-ee02-7643d95c2d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_linear_growth (hχ1 : χ ≠ 1) {δ : ℝ} (hδ : 0 < δ) {s : ℂ} (hσ : δ ≤ s.re) :
    ‖χ.LFunction s‖ ≤ q * (1 + δ⁻¹) * (|s.im| + 1) := by
  have hσpos : 0 < s.re := lt_of_lt_of_le hδ hσ
  have h := norm_LFunction_le_of_re_pos hχ1 hσpos
  have hq : (0 : ℝ) < q := by exact_mod_cast NeZero.pos q
  have hn : ‖s‖ ≤ |s.re| + |s.im| := Complex.norm_le_abs_re_add_abs_im s
  rw [abs_of_pos hσpos] at hn
  have h2 : ‖s‖ / s.re ≤ 1 + δ⁻¹ * |s.im| := by
    calc ‖s‖ / s.re ≤ (s.re + |s.im|) / s.re := by gcongr
      _ = 1 + |s.im| / s.re := by field_simp
      _ ≤ 1 + |s.im| / δ := by gcongr
      _ = 1 + δ⁻¹ * |s.im| := by rw [div_eq_inv_mul]
  have ht : 0 ≤ |s.im| := abs_nonneg _
  have hδ' : 0 ≤ δ⁻¹ := by positivity
  calc ‖χ.LFunction s‖ ≤ q * ‖s‖ / s.re := h
    _ = q * (‖s‖ / s.re) := by ring
    _ ≤ q * (1 + δ⁻¹ * |s.im|) := by gcongr
    _ ≤ q * (1 + δ⁻¹) * (|s.im| + 1) := by nlinarith

/-- **Polynomial (linear) growth to the right of σ = 0.15** (shape parallel to
Zeta23.RvM.zeta_growth_right; the constant depends on q; no condition at s = 1 — L(·,χ) is entire). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
