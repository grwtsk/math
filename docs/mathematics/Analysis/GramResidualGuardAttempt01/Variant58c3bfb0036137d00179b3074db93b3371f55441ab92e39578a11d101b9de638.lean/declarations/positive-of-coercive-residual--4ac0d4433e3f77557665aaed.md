# positive_of_coercive_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcb6fd2a-400d-5dee-2a48-18ae2f06ddaa",
  "kind": "theorem",
  "lexical_name": "positive_of_coercive_residual",
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
  "slug": "positive-of-coercive-residual--4ac0d4433e3f77557665aaed",
  "source": {
    "blob": "b04424b189fc81548296e7c60690a064ab36ca68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac0d4433e3f77557665aaede5325d0d0d9c4f9690eff0d76080693ebc923a7b",
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

Occurrence: `result:dcb6fd2a-400d-5dee-2a48-18ae2f06ddaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_of_coercive_residual (H P : E →L[𝕜] E) (hH : H.IsSymmetric) (c : ℝ)
    (hmargin : ∀ u, c*‖u‖^2 ≤ P.reApplyInnerSelf u) (hresidual : ‖H-P‖ ≤ c) :
    H.IsPositive := by
  refine ⟨hH,fun u => ?_⟩
  exact (mul_nonneg (sub_nonneg.mpr hresidual) (sq_nonneg _)).trans
    (coercive_approximation_lower H P c hmargin u)

/-- The source operator H is fixed outside every precision/approximant quantifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04424b189fc81548296e7c60690a064ab36ca68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
