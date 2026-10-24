# actualFixedCenteredRieszLaplace_poleCleared_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6e946ac-dea0-9d9b-ef9a-f3a7eba2800b",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredRieszLaplace_poleCleared_identity",
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
  "slug": "actualfixedcenteredrieszlaplace-polecleared-identity--f49543b20b055893873cf06d",
  "source": {
    "blob": "a959b9e5450cbae96864d759e0e62c2f30fa900b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 97,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49543b20b055893873cf06da230433735dbbd593433d9d8accba234c928c47c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6e946ac-dea0-9d9b-ef9a-f3a7eba2800b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredRieszLaplace_poleCleared_identity {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {s : ℂ} (hs : 1 / 2 < s.re) :
    actualZetaPoleCleared s * ((s - 1 / 2) ^ 2 *
      actualFixedCenteredRieszLaplace (s - 1 / 2) +
        (actualRieszLimitingLinearCenter : ℂ) +
          (actualRieszRealConstantCenter : ℂ) * (s - 1 / 2)) =
      -deriv actualZetaPoleCleared s := by
  let U := {s : ℂ | 1 / 2 < s.re}
  have hl : AnalyticOnNhd ℂ (fun s => actualZetaPoleCleared s * extensionNumerator s) U := by
    intro w hw
    have hw0 : w ≠ 0 := by intro h; norm_num [U, h] at hw
    exact (poleCleared_analyticAt hw0).mul (extension_analytic hM hR harea hw)
  have hr : AnalyticOnNhd ℂ (fun s => -deriv actualZetaPoleCleared s) U := by
    intro w hw
    have hw0 : w ≠ 0 := by intro h; norm_num [U, h] at hw
    exact (poleCleared_analyticAt hw0).deriv.neg
  have hconn : IsPreconnected U := (convex_halfSpace_re_gt (1 / 2)).isPreconnected
  have ht : (2 : ℂ) ∈ U := by norm_num [U]
  have he : (fun s => actualZetaPoleCleared s * extensionNumerator s) =ᶠ[𝓝 (2 : ℂ)]
      (fun s => -deriv actualZetaPoleCleared s) := by
    have hu : {s : ℂ | 1 < s.re} ∈ 𝓝 (2 : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by norm_num)
    filter_upwards [hu] with w hw
    exact extension_initial hw
  exact hl.eqOn_of_preconnected_of_eventuallyEq hr hconn ht he hs

/-- The supplied actual area budget excludes an actual nontrivial zero right of the axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a959b9e5450cbae96864d759e0e62c2f30fa900b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
