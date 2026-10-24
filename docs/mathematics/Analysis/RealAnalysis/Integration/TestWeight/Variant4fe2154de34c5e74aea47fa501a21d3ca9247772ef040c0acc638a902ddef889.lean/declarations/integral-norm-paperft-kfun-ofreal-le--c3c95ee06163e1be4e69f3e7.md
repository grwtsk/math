# integral_norm_paperFT_kfun_ofReal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4df929b-f127-7a2b-b43b-f0d9f8ba0767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccdac1f9-1ac5-28a4-8987-aee94638883f",
  "kind": "theorem",
  "lexical_name": "integral_norm_paperFT_kfun_ofReal_le",
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
  "slug": "integral-norm-paperft-kfun-ofreal-le--c3c95ee06163e1be4e69f3e7",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 650,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c95ee06163e1be4e69f3e702617a1f592b1e347b7b15f4c9a100a9102311c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccdac1f9-1ac5-28a4-8987-aee94638883f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_paperFT_kfun_ofReal_le (h : WindowAt P T C) (k l : ℤ) :
    ∫ τ : ℝ, ‖paperFT (kfun P T k l) τ‖
      ≤ 32 * Real.pi * (1 + C) ^ 2 * P.L T ^ 2 / (1 + (P.tau T k - P.tau T l) ^ 2) := by
  have hC := h.C_nonneg
  have hL := h.L_pos
  calc ∫ τ : ℝ, ‖paperFT (kfun P T k l) τ‖
      ≤ ∫ τ : ℝ, (1 + C) ^ 2 * P.L T ^ 2 * (1 / ((1 + (τ - P.tau T k) ^ 2) * (1 + (τ - P.tau T l) ^ 2))) :=
        integral_mono_of_nonneg (Eventually.of_forall fun _ => norm_nonneg _)
          ((cauchyConv_integrable _ _).const_mul _)
          (Eventually.of_forall fun τ => by
            beta_reduce; rw [mul_one_div]; exact h.norm_paperFT_kfun_ofReal_le k l τ)
    _ = (1 + C) ^ 2 * P.L T ^ 2 * ∫ τ : ℝ, 1 / ((1 + (τ - P.tau T k) ^ 2) * (1 + (τ - P.tau T l) ^ 2)) :=
        integral_const_mul _ _
    _ ≤ (1 + C) ^ 2 * P.L T ^ 2 * (32 * Real.pi / (1 + (P.tau T k - P.tau T l) ^ 2)) :=
        mul_le_mul_of_nonneg_left (cauchyConv_integral_le' _ _) (by positivity)
    _ = _ := by ring

/-! ## §H. (W6): integrated consequences on the line Re s = 5/4 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
