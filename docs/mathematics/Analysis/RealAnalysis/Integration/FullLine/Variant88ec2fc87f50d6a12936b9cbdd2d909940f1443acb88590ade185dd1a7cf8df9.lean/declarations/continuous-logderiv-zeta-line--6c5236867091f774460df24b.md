# continuous_logDeriv_zeta_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6148155-8a0f-ef04-edef-1c0a3430d123",
  "kind": "theorem",
  "lexical_name": "continuous_logDeriv_zeta_line",
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
  "slug": "continuous-logderiv-zeta-line--6c5236867091f774460df24b",
  "source": {
    "blob": "fddabb897516dcc6a4eb0928590a25c5e6feea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c5236867091f774460df24bb734ac7cd0cfa68489c6314501c95231dddc9819",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6148155-8a0f-ef04-edef-1c0a3430d123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_logDeriv_zeta_line {c : ℝ} (hc1 : 1 < c) :
    Continuous (fun t : ℝ => logDeriv riemannZeta ((c : ℂ) + t * I)) := by
  have hline : Continuous (fun t : ℝ => ((c : ℂ) + t * I)) := by fun_prop
  refine continuous_iff_continuousAt.mpr fun t => ?_
  have hs1 : ((c : ℂ) + t * I) ≠ 1 := by
    intro h; have := congrArg Complex.re h; simp at this; linarith
  have hre1 : 1 < ((c : ℂ) + t * I).re := by simp; linarith
  have hζ : riemannZeta ((c : ℂ) + t * I) ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hre1
  have han := analyticAt_riemannZeta hs1
  have hd : ContinuousAt (deriv riemannZeta) ((c : ℂ) + t * I) := han.deriv.continuousAt
  have hc : ContinuousAt riemannZeta ((c : ℂ) + t * I) := han.continuousAt
  have : ContinuousAt (fun s => deriv riemannZeta s / riemannZeta s) ((c : ℂ) + t * I) :=
    hd.div hc hζ
  show ContinuousAt ((fun s => deriv riemannZeta s / riemannZeta s) ∘ (fun t : ℝ => (c : ℂ) + t * I)) t
  exact ContinuousAt.comp this hline.continuousAt

/-- generic: a continuous `φ` with `‖φ(t)‖ ≤ C/(1+t²)` times `ζ'/ζ(c+it)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddabb897516dcc6a4eb0928590a25c5e6feea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
