# quadratic_comparison_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ebfdc14-426e-3bea-e8fc-f3ab6f9e6086",
  "kind": "theorem",
  "lexical_name": "quadratic_comparison_error",
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
  "slug": "quadratic-comparison-error--6186c10f17b74ccd41061998",
  "source": {
    "blob": "9c4a3b3ced22c7db678dce54ea200aeef2dd3556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 351,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6186c10f17b74ccd410619981e76119cabbd63f0fa373c3d168266d0b30e7715",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ebfdc14-426e-3bea-e8fc-f3ab6f9e6086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_comparison_error (K B : ComplexL2 →L[ℂ] ComplexL2) (f : ComplexL2) :
    |(⟪f, K f⟫_ℂ).re - (⟪f, B f⟫_ℂ).re| ≤ ‖K - B‖ * ‖f‖ ^ 2 := by
  have he : (⟪f, K f⟫_ℂ).re - (⟪f, B f⟫_ℂ).re =
      (⟪f, (K - B) f⟫_ℂ).re := by
    simp only [sub_apply, inner_sub_right, Complex.sub_re]
  rw [he]
  calc
    _ ≤ ‖⟪f, (K - B) f⟫_ℂ‖ := Complex.abs_re_le_norm _
    _ ≤ ‖f‖ * ‖(K - B) f‖ := norm_inner_le_norm _ _
    _ ≤ ‖f‖ * (‖K - B‖ * ‖f‖) :=
      mul_le_mul_of_nonneg_left ((K - B).le_opNorm f) (norm_nonneg _)
    _ = _ := by ring

/-- Unit source normalization removes only its own vector factor; arithmetic complexity stays in K. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4a3b3ced22c7db678dce54ea200aeef2dd3556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
