# onePoleUnit_analytic_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82ad78be-a2a8-f852-7af4-da55bc191154",
  "kind": "theorem",
  "lexical_name": "onePoleUnit_analytic_value",
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
  "slug": "onepoleunit-analytic-value--7ec2cc610157c5a43f2bc2ad",
  "source": {
    "blob": "eac118be2215d95e026dbaa78eeb4559dfcde0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec2cc610157c5a43f2bc2adf978bc54e6db3651671bf7fe275e674644d0bd91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ad78be-a2a8-f852-7af4-da55bc191154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem onePoleUnit_analytic_value : AnalyticAt ℂ onePoleUnit 1 ∧ onePoleUnit 1 = 1 := by
  constructor
  · exact (((analyticAt_id.sub analyticAt_const).mul
      (differentiable_completedZeta₀.analyticAt 1)).sub
      ((analyticAt_id.sub analyticAt_const).div analyticAt_id (by norm_num))).add analyticAt_const
  · simp [onePoleUnit]

/-- Exact local order −1 at zero, independently of the function's center value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac118be2215d95e026dbaa78eeb4559dfcde0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
