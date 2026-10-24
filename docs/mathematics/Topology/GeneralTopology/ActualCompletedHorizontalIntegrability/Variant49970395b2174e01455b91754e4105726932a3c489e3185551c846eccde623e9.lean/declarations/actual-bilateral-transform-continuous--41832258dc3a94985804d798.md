# actual_bilateral_transform_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa16e470-655e-c1b8-288d-759b5cfa9e10",
  "kind": "theorem",
  "lexical_name": "actual_bilateral_transform_continuous",
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
  "slug": "actual-bilateral-transform-continuous--41832258dc3a94985804d798",
  "source": {
    "blob": "7320f59b7c936ba13dd0c520cc7746b760edf66e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variant49970395b2174e01455b91754e4105726932a3c489e3185551c846eccde623e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41832258dc3a94985804d79886c0f67530ea64fa1b8306feba5384d40d8bf31a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variant49970395b2174e01455b91754e4105726932a3c489e3185551c846eccde623e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa16e470-655e-c1b8-288d-759b5cfa9e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bilateral_transform_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (fun s : ℂ => actualBilateralCorrelationTransform A (s-1/2)) := by
  have hb : Continuous bumpLaplace := by
    have hh := bump_laplace_moment_continuous 0
    simpa only [bump_laplace_moment_zero] using hh
  have hbc : Continuous (fun s : ℂ => bumpLaplace ((A : ℂ)*(s-1/2))) :=
    hb.comp (by fun_prop)
  simp_rw [actualBilateralCorrelationTransform_eq_bump hA]
  fun_prop

/-- Genuine finite L1 holds on either actual good horizontal, with all completed terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variant49970395b2174e01455b91754e4105726932a3c489e3185551c846eccde623e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variant49970395b2174e01455b91754e4105726932a3c489e3185551c846eccde623e9.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7320f59b7c936ba13dd0c520cc7746b760edf66e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
