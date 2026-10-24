# LSeries.LSeriesSummable_logMul_and_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41f4b50e-b19b-3444-3ca9-218f2c29e135",
  "kind": "lemma",
  "lexical_name": "LSeries.LSeriesSummable_logMul_and_hasDerivAt",
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
  "slug": "lseries-lseriessummable-logmul-and-hasderivat--06faaf8f00fe611c8c90bb82",
  "source": {
    "blob": "df4570e0aad7d9cc41e0bc21d5bab221ccc89e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06faaf8f00fe611c8c90bb820a78491c734bc8f5cdf1e25a3e2ef3d5763f5e34",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f4b50e-b19b-3444-3ca9-218f2c29e135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LSeries.LSeriesSummable_logMul_and_hasDerivAt {f : ℕ → ℂ} {s : ℂ}
    (h : abscissaOfAbsConv f < s.re) :
    LSeriesSummable (logMul f) s ∧ HasDerivAt (LSeries f) (-LSeries (logMul f) s) s := by
  -- The L-series of `f` is summable at some real `x < re s`.
  obtain ⟨x, hxs, hf⟩ := LSeriesSummable_lt_re_of_abscissaOfAbsConv_lt_re h
  obtain ⟨y, hxy, hys⟩ := exists_between hxs
  -- We work in the right half-plane `y < re z`, for some `y` such that `x < y < re s`, on which
  -- we have a uniform summable bound on `‖term f z ·‖`.
  let S : Set ℂ := {z | y < z.re}
  have h₀ : Summable (fun n ↦ ‖term f x n‖) := summable_norm_iff.mpr hf
  have h₁ (n) : DifferentiableOn ℂ (term f · n) S :=
    fun z _ ↦ (hasDerivAt_term f n _).differentiableAt.differentiableWithinAt
  have h₂ : IsOpen S := isOpen_lt continuous_const continuous_re
  have h₃ (n z) (hz : z ∈ S) : ‖term f z n‖ ≤ ‖term f x n‖ :=
    norm_term_le_of_re_le_re f (by simpa using (hxy.trans hz).le) n
  have H := hasSum_deriv_of_summable_norm h₀ h₁ h₂ h₃ hys
  simp_rw [(hasDerivAt_term f _ _).deriv] at H
  refine ⟨summable_neg_iff.mp H.summable, ?_⟩
  simpa [← H.tsum_eq, tsum_neg] using ((differentiableOn_tsum_of_summable_norm
    h₀ h₁ h₂ h₃).differentiableAt <| h₂.mem_nhds hys).hasDerivAt

/-- If `re s` is greater than the abscissa of absolute convergence of `f`, then the L-series
of `f` is differentiable with derivative the negative of the L-series of the point-wise
product of `log` with `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4570e0aad7d9cc41e0bc21d5bab221ccc89e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
