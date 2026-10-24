# extension_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:644135c0-45df-bcee-e918-a54e15b9a330",
  "kind": "theorem",
  "lexical_name": "extension_analytic",
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
  "slug": "extension-analytic--5126a135e38a88ae75a2ccbd",
  "source": {
    "blob": "91f023e2152084cbd703c6ee1ae27e4533f17833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5126a135e38a88ae75a2ccbd799624aa6fdcda9442ed119c00bdfa0a399e8f77",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:644135c0-45df-bcee-e918-a54e15b9a330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extension_analytic {M R : ℝ} (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {s : ℂ} (hs : 1 / 2 < s.re) : AnalyticAt ℂ extensionNumerator s := by
  have hz : 0 < (s - 1 / 2).re := by simp only [sub_re, div_ofNat_re, one_re]; linarith
  have hh := (actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area
    hM hR harea) (s - 1 / 2) hz
  have hshift : AnalyticAt ℂ (fun w : ℂ => w - 1 / 2) s :=
    analyticAt_id.sub analyticAt_const
  have hcomp : AnalyticAt ℂ (fun w : ℂ => actualFixedCenteredRieszLaplace (w - 1 / 2)) s :=
    by simpa only [Function.comp_def] using hh.comp (f := fun w : ℂ => w - 1 / 2) (x := s) hshift
  unfold extensionNumerator
  exact ((hshift.pow 2).mul hcomp).add analyticAt_const |>.add
    (analyticAt_const.mul hshift)

/-- Connected-domain continuation is proved for the cleared identity, retaining the area premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f023e2152084cbd703c6ee1ae27e4533f17833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
