# completed_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a98ef5d8-2b5a-7d07-09a3-d61491af54ce",
  "kind": "theorem",
  "lexical_name": "completed_analytic",
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
  "slug": "completed-analytic--997d6cf976e8bd9a0607597e",
  "source": {
    "blob": "917fc9bcd9355c772137eda91188e172dff28b3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:997d6cf976e8bd9a0607597e9bcd130c123790ebce45933665284ebe9ee200a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a98ef5d8-2b5a-7d07-09a3-d61491af54ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_analytic (z : ZeroPoint) : AnalyticAt ℂ completedRiemannZeta z.1 := by
  have hleft : AnalyticAt ℂ (fun s : ℂ => 1 / s) z.1 :=
    analyticAt_const.div analyticAt_id z.2.ne_zero
  have hright : AnalyticAt ℂ (fun s : ℂ => 1 / (1 - s)) z.1 :=
    analyticAt_const.div (analyticAt_const.sub analyticAt_id)
      (sub_ne_zero.mpr (Ne.symm z.2.2.2))
  have h := ((differentiable_completedZeta₀.analyticAt z.1).sub hleft).sub hright
  exact h.congr (Eventually.of_forall (fun s => (completedRiemannZeta_eq s).symm))

/-- The canonical zeta zero is a zero of the actual completion, not just of a model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917fc9bcd9355c772137eda91188e172dff28b3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
