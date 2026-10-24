# gram_residual_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0fe838f-7dfc-67fe-0091-5244ebbb6019",
  "kind": "theorem",
  "lexical_name": "gram_residual_lower",
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
  "slug": "gram-residual-lower--464d0d5c94b7b773b8286df8",
  "source": {
    "blob": "ae0610e1ef0a14c942a695114548445ee3f88914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464d0d5c94b7b773b8286df8bf205261322677612473661fb92bebb277778e60",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0fe838f-7dfc-67fe-0091-5244ebbb6019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_residual_lower (H R : E →L[𝕜] E) (V : E →L[𝕜] F)
    (hfactor : H=V.adjoint.comp V+R) (u : E) :
    -‖R‖*‖u‖^2 ≤ H.reApplyInnerSelf u := by
  have h := positive_approximation_lower H (V.adjoint.comp V)
    (ContinuousLinearMap.isPositive_adjoint_comp_self V) u
  have he : H-V.adjoint.comp V=R := by rw [hfactor]; abel
  simpa only [he] using h

/-- Fixed-source Gram approximants of arbitrarily small residual imply positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0610e1ef0a14c942a695114548445ee3f88914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
