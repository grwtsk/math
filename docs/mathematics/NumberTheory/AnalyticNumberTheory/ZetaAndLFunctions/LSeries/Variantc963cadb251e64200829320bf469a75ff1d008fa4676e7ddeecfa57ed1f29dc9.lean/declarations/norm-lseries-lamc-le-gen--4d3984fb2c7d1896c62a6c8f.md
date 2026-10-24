# norm_LSeries_lamC_le_gen

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
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4edce6f9-e139-b446-c671-7d6dd0b794ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edb32b4e-321a-86de-c72b-10cc854f0f19",
  "kind": "lemma",
  "lexical_name": "norm_LSeries_lamC_le_gen",
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
  "slug": "norm-lseries-lamc-le-gen--4d3984fb2c7d1896c62a6c8f",
  "source": {
    "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 261,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d3984fb2c7d1896c62a6c8f3c997c4f90f56d2d0527ad91fcef36cb01cddf76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb32b4e-321a-86de-c72b-10cc854f0f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_LSeries_lamC_le_gen (hσ₀ : 1 < σ₀) {s : ℂ} (hs : σ₀ ≤ s.re) :
    ‖LSeries lamC s‖ ≤ Asig (sigAux σ₀) := by
  have hσ'1 : 1 < sigAux σ₀ := one_lt_sigAux hσ₀
  have hσ' : sigAux σ₀ ≤ σ₀ := by unfold sigAux; linarith
  have hΛC : LSeriesSummable lamC s :=
    ArithmeticFunction.LSeriesSummable_vonMangoldt (by linarith : 1 < s.re)
  unfold LSeries
  refine (norm_tsum_le_tsum_norm hΛC.norm).trans ?_
  refine hΛC.norm.tsum_le_tsum (fun n => ?_) (summable_lam_rpow_of_gt_one hσ'1)
  rw [LSeries.norm_term_eq]
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  · rw [if_neg hn, lamC_apply, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg, div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg n)]
    refine mul_le_mul_of_nonneg_left ?_ ArithmeticFunction.vonMangoldt_nonneg
    exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast Nat.pos_of_ne_zero hn) (by linarith)

/-- **(C1) the closed form on any line σ₀ > 1**:  L(C_J, s) = B(s)/(Λ⋆ − A(s))  for σ₀ ≤ Re s, ‖Λ⋆‖ ≥ R₀(σ₀). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9c0a5732be3b22f84ae924d4f18e9332658251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
