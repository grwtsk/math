# norm_Hfn_kfun_neg_le

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
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e167c6b0-30ec-1e21-3320-b3273620bc8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:922d86a8-d7c2-5334-b7b2-9603d2340612",
  "kind": "theorem",
  "lexical_name": "norm_Hfn_kfun_neg_le",
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
  "slug": "norm-hfn-kfun-neg-le--0937d4e70f721d8c22ab3f24",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 572,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0937d4e70f721d8c22ab3f242ec87928795192b2704841b2a155fa0cfe90d852",
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

Occurrence: `result:922d86a8-d7c2-5334-b7b2-9603d2340612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Hfn_kfun_neg_le (h : WindowAt P T C) (k l : ℤ) (t : ℝ) :
    ‖Hfn (fun u => kfun P T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
      ≤ (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 /
          ((1 + (t + P.tau T k) ^ 2) * (1 + (t + P.tau T l) ^ 2)) := by
  have hC := h.C_nonneg
  have hL := h.L_pos
  rw [h.Hfn_kfun_neg, norm_mul]
  calc ‖P.phiHat T (-((t + P.tau T k : ℝ) : ℂ) + 3 / 4 * I)‖
        * ‖P.phiHat T (-((t + P.tau T l : ℝ) : ℂ) + 3 / 4 * I)‖
      ≤ ((1 + C) * Real.exp (3 / 4 * (P.L T / 2)) * P.L T / (1 + (t + P.tau T k) ^ 2))
        * ((1 + C) * Real.exp (3 / 4 * (P.L T / 2)) * P.L T / (1 + (t + P.tau T l) ^ 2)) :=
        mul_le_mul (h.mfactor_le _) (h.mfactor_le _) (norm_nonneg _) (by positivity)
    _ = (1 + C) ^ 2 * (Real.exp (3 / 4 * (P.L T / 2)) * Real.exp (3 / 4 * (P.L T / 2))) * P.L T ^ 2 /
          ((1 + (t + P.tau T k) ^ 2) * (1 + (t + P.tau T l) ^ 2)) := by
        rw [div_mul_div_comm]; ring
    _ = _ := by rw [exp_mul_exp_eq_X_rpow]

/-- **(W3, first moment)** (|t+τ_k| + |t+τ_l|) ‖H_{k∘neg}(5/4+it)‖ ≤ 4C(1+C) X^{3/4} L / (…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
