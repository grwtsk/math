# tendsto_div_pow_mul_exp_add_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f25f565bd82162577409a2a2d5c72e5d9f7c5b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfca22ee-fa8f-ea7c-160e-85feaab8464c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b2a26cb-931f-493a-004c-b1c1311941d8",
  "kind": "theorem",
  "lexical_name": "tendsto_div_pow_mul_exp_add_atTop",
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
  "slug": "tendsto-div-pow-mul-exp-add-attop--7d50a9b6cb51c698ab5a719a",
  "source": {
    "blob": "9f25f565bd82162577409a2a2d5c72e5d9f7c5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 258,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d50a9b6cb51c698ab5a719ad83427b21976e6edf4438593a3e21052b65d1dad",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b2a26cb-931f-493a-004c-b1c1311941d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_pow_mul_exp_add_atTop (b c : ℝ) (n : ℕ) (hb : 0 ≠ b) :
    Tendsto (fun x => x ^ n / (b * exp x + c)) atTop (𝓝 0) := by
  have H : ∀ d e, 0 < d → Tendsto (fun x : ℝ => x ^ n / (d * exp x + e)) atTop (𝓝 0) := by
    intro b' c' h
    convert(tendsto_mul_exp_add_div_pow_atTop b' c' n h).inv_tendsto_atTop using 1
    ext x
    simp
  cases' lt_or_gt_of_ne hb with h h
  · exact H b c h
  · convert(H (-b) (-c) (neg_pos.mpr h)).neg using 1
    · ext x
      field_simp
      rw [← neg_add (b * exp x) c, neg_div_neg_eq]
    · rw [neg_zero]
#align real.tendsto_div_pow_mul_exp_add_at_top Real.tendsto_div_pow_mul_exp_add_atTop

/-- `Real.exp` as an order isomorphism between `ℝ` and `(0, +∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f25f565bd82162577409a2a2d5c72e5d9f7c5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
