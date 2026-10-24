# norm_sq_eq_re_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0a6fdfb-1041-efcf-e6ce-d95d5f3e9a69",
  "kind": "theorem",
  "lexical_name": "norm_sq_eq_re_inner",
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
  "slug": "norm-sq-eq-re-inner--ec98bdf1228dfe8e71106701",
  "source": {
    "blob": "ba68f2afcf2ef56eb220febdb81ae54ab9e7826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec98bdf1228dfe8e71106701c5deb987b9f1ddbc13b8684d4c942441c62e40d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a6fdfb-1041-efcf-e6ce-d95d5f3e9a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem norm_sq_eq_re_inner (f : α →₂[μ] E) : ‖f‖ ^ 2 = RCLike.re ⟪f, f⟫ := by
  have h_two : (2 : ℝ≥0∞).toReal = 2 := by simp
  rw [inner_def, integral_inner_eq_sq_eLpNorm, norm_def, ← ENNReal.toReal_pow, RCLike.ofReal_re,
    ENNReal.toReal_eq_toReal (ENNReal.pow_ne_top (Lp.eLpNorm_ne_top f)) _]
  · rw [← ENNReal.rpow_natCast, eLpNorm_eq_eLpNorm' two_ne_zero ENNReal.ofNat_ne_top, eLpNorm', ←
      ENNReal.rpow_mul, one_div, h_two]
    simp [enorm_eq_nnnorm]
  · refine (lintegral_rpow_enorm_lt_top_of_eLpNorm'_lt_top zero_lt_two (ε := E) ?_).ne
    rw [← h_two, ← eLpNorm_eq_eLpNorm' two_ne_zero ENNReal.ofNat_ne_top]
    exact Lp.eLpNorm_lt_top f

@[deprecated (since := "2025-04-22")] alias norm_sq_eq_inner' := norm_sq_eq_re_inner

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba68f2afcf2ef56eb220febdb81ae54ab9e7826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
