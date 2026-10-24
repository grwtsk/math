# regularPart_circleIntegral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49cdd9d8-01ec-67ae-a881-294ff9aabeb8",
  "kind": "theorem",
  "lexical_name": "regularPart_circleIntegral_zero",
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
  "slug": "regularpart-circleintegral-zero--00bb9ee066e95270afc252cc",
  "source": {
    "blob": "f325456531fdcfd2a8619f8d8b8ef67d4bea91da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00bb9ee066e95270afc252cca0fef6cc7683ba2542a9f446f5d3f0b48dcb9393",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49cdd9d8-01ec-67ae-a881-294ff9aabeb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularPart_circleIntegral_zero (f : ℂ → ℂ) (c root : ℂ) (r : ℝ)
    (positive : 0 < r) (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (rootMember : root ∈ closedBall c r) (rootZero : f root = 0)
    (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    (∮ z in C(c, r), regularPart f root z) = 0 := by
  have extension := regularPart_analytic f root (closedBall c r)
    analytic rootMember rootZero simple nonzeroAway
  have regular : DiffContOnCl ℂ (regularPart f root) (ball c r) :=
    DiffContOnCl.mk_ball
      (fun z hz => (extension z (ball_subset_closedBall hz)).differentiableAt.differentiableWithinAt)
      (fun z hz => (extension z hz).continuousAt.continuousWithinAt)
  exact DiffContOnCl.circleIntegral_eq_zero positive.le regular

/-- Exact local integral, using a supplied isolated simple root and no numerical rounding step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f325456531fdcfd2a8619f8d8b8ef67d4bea91da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
