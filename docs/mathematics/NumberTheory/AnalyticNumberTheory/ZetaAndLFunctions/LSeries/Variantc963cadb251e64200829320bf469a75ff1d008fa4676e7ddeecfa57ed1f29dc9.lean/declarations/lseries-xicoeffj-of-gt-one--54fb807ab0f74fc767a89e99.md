# LSeries_xiCoeffJ_of_gt_one

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
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2576f1c0-59f6-1713-1f5a-9fd6b9579eff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c86f3266-ca18-aeab-d281-adb4a9f5c908",
  "kind": "theorem",
  "lexical_name": "LSeries_xiCoeffJ_of_gt_one",
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
  "slug": "lseries-xicoeffj-of-gt-one--54fb807ab0f74fc767a89e99",
  "source": {
    "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 279,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54fb807ab0f74fc767a89e999af02a99bf4c1657f9bb4bfefd4cbb04a998cd38",
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

Occurrence: `result:c86f3266-ca18-aeab-d281-adb4a9f5c908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeries_xiCoeffJ_of_gt_one (σ₀ : ℝ) (hσ₀ : 1 < σ₀) :
    ∃ R₀ : ℝ, 0 < R₀ ∧ ∀ Λs : ℂ, R₀ ≤ ‖Λs‖ → ∀ s : ℂ, σ₀ ≤ s.re →
      Summable (fun N : ℕ => ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-s.re)) ∧
      Λs - LSeries (fun n => ((Λ n : ℝ) : ℂ)) s ≠ 0 ∧
      LSeries (fun N => xiCoeffJ Λs N) s
        = LSeries (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) s / (Λs - LSeries (fun n => ((Λ n : ℝ) : ℂ)) s) := by
  refine ⟨R0sig σ₀, R0sig_pos σ₀, fun Λs hΛ s hs => ?_⟩
  have hΛpos : 0 < ‖Λs‖ := lt_of_lt_of_le (R0sig_pos σ₀) hΛ
  have hΛ0 : Λs ≠ 0 := norm_pos_iff.mp hΛpos
  have hsumσ := summable_norm_xiCoeffJ_rpow_gen hσ₀ hΛ hs
  have hCJ : LSeriesSummable (fun N => xiCoeffJ Λs N) s := by
    refine Summable.of_norm ?_
    exact hsumσ.congr fun N => (norm_term_xiCoeffJ Λs s N).symm
  have hΛC : LSeriesSummable lamC s :=
    ArithmeticFunction.LSeriesSummable_vonMangoldt (by linarith : 1 < s.re)
  have hconv : LSeriesSummable (lamC ⍟ (fun N => xiCoeffJ Λs N)) s :=
    (LSeriesHasSum.convolution hΛC.LSeriesHasSum hCJ.LSeriesHasSum).LSeriesSummable
  have hsmul : LSeriesSummable (Λs • (fun N => xiCoeffJ Λs N)) s := hCJ.smul Λs
  have hA := norm_LSeries_lamC_le_gen hσ₀ hs
  have hne : Λs - LSeries lamC s ≠ 0 := by
    intro h
    have : ‖Λs‖ = ‖LSeries lamC s‖ := by rw [sub_eq_zero.mp h]
    unfold R0sig at hΛ; linarith [Asig_nonneg (sigAux σ₀)]
  have hB : LSeries lamLogC s = LSeries (fun N => xiCoeffJ Λs N) s * (Λs - LSeries lamC s) := by
    have hfun : lamLogC = (Λs • (fun N => xiCoeffJ Λs N)) - (lamC ⍟ (fun N => xiCoeffJ Λs N)) :=
      lamLogC_eq hΛ0
    rw [hfun, LSeries_sub hsmul hconv, LSeries_smul, LSeries_convolution' hΛC hCJ]
    ring
  refine ⟨hsumσ, hne, ?_⟩
  change LSeries (fun N => xiCoeffJ Λs N) s = LSeries lamLogC s / (Λs - LSeries lamC s)
  rw [eq_div_iff hne, hB]

end general

/-! ### the line Re s = 5/4 (the ξ′ explicit formula's contour): instances of the general statements -/

/-- **(C2) absolute bound** at 5/4:  Σ' ‖C_J(N;Λ⋆)‖ N^{-5/4} ≤ C/‖Λ⋆‖ for ‖Λ⋆‖ ≥ R₀ (with summability). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9c0a5732be3b22f84ae924d4f18e9332658251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
