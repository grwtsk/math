# quadratic_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:995083f9-b6bb-b3b7-63f3-91ab12f6473f",
  "kind": "theorem",
  "lexical_name": "quadratic_difference_abs_le",
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
  "slug": "quadratic-difference-abs-le--191feaed675a22e722e96d1f",
  "source": {
    "blob": "b04424b189fc81548296e7c60690a064ab36ca68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:191feaed675a22e722e96d1f492b03ad5bf84e7c84a4fce0e643b4f91c33cc63",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995083f9-b6bb-b3b7-63f3-91ab12f6473f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem quadratic_difference_abs_le (H P : E →L[𝕜] E) (u : E) :
    |H.reApplyInnerSelf u-P.reApplyInnerSelf u| ≤ ‖H-P‖*‖u‖^2 := by
  have he : H.reApplyInnerSelf u-P.reApplyInnerSelf u =
      re (inner 𝕜 ((H-P) u) u) := by
    simp [ContinuousLinearMap.reApplyInnerSelf,inner_sub_left]
  rw [he]
  calc
    |re (inner 𝕜 ((H-P) u) u)| ≤ ‖inner 𝕜 ((H-P) u) u‖ := abs_re_le_norm _
    _ ≤ ‖(H-P) u‖*‖u‖ := norm_inner_le_norm _ _
    _ ≤ (‖H-P‖*‖u‖)*‖u‖ := mul_le_mul_of_nonneg_right ((H-P).le_opNorm u) (norm_nonneg _)
    _ = _ := by ring

/-- A positive approximant supplies only a norm-scaled lower bound on the unchanged operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04424b189fc81548296e7c60690a064ab36ca68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
