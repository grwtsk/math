# tendsto_l_sq_mul_X_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c8bf2ae-8e1d-fefe-d3ec-8f85c7eb90dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:436aa65a-e58a-9ba6-df1a-e70293a5d5a3",
  "kind": "lemma",
  "lexical_name": "tendsto_l_sq_mul_X_div",
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
  "slug": "tendsto-l-sq-mul-x-div--334ff9d9cbbb72176321b4d6",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 105,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:334ff9d9cbbb72176321b4d62b70045063285d1238a5629838f7c37c6c03e3f7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:436aa65a-e58a-9ba6-df1a-e70293a5d5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_l_sq_mul_X_div (hlam0 : 0 < P.lam) (hlam1 : P.lam < 1) :
    Tendsto (fun T => l T ^ 2 * P.X T / T) atTop (𝓝 0) := by
  have hs : 0 < (1 - P.lam) / 2 := by linarith
  -- (log T)² ≤ T^{(1-λ)/2} eventually
  have hlog : ∀ᶠ T : ℝ in atTop, Real.log T ^ 2 ≤ T ^ ((1 - P.lam) / 2) := by
    have := (isLittleO_log_rpow_rpow_atTop 2 hs).bound (show (0:ℝ) < 1 by norm_num)
    filter_upwards [this, eventually_ge_atTop (1:ℝ)] with T hT hT1
    rw [one_mul, Real.norm_eq_abs, Real.norm_eq_abs, Real.rpow_two,
      abs_of_nonneg (sq_nonneg _), abs_of_nonneg (Real.rpow_nonneg (by linarith) _)] at hT
    exact hT
  have hlim : Tendsto (fun T : ℝ => T ^ ((P.lam - 1) / 2)) atTop (𝓝 0) := by
    have : (P.lam - 1) / 2 = -((1 - P.lam) / 2) := by ring
    rw [this]; exact tendsto_rpow_neg_atTop hs
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hlim ?_ ?_
  · filter_upwards [eventually_gt_atTop (0:ℝ)] with T hT
    exact div_nonneg (mul_nonneg (sq_nonneg _) (X_pos P T).le) hT.le
  · filter_upwards [hlog, eventually_ge_atTop (2 * π), eventually_l_ge 0] with T hlogT hT hl0
    have hπ := Real.pi_gt_three
    have hT0 : 0 < T := by linarith
    have hl : l T ≤ Real.log T := by
      unfold l
      rw [Real.log_div hT0.ne' (by positivity)]
      have : 0 ≤ Real.log (2 * π) := Real.log_nonneg (by linarith)
      linarith
    have hX : P.X T ≤ T ^ P.lam := by
      rw [X_eq_rpow P hT0]
      exact Real.rpow_le_rpow (by positivity) (by rw [div_le_iff₀ (by positivity)]; nlinarith)
        hlam0.le
    have hX0 : 0 ≤ P.X T := (X_pos P T).le
    calc l T ^ 2 * P.X T / T ≤ Real.log T ^ 2 * T ^ P.lam / T := by
          gcongr
      _ ≤ T ^ ((1 - P.lam) / 2) * T ^ P.lam / T := by gcongr
      _ = T ^ ((P.lam - 1) / 2) := by
          rw [← Real.rpow_add hT0, div_eq_iff hT0.ne', ← Real.rpow_add_one hT0.ne']
          congr 1; ring

/-- `T^{λ/2 − 1} → 0` (λ < 2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
