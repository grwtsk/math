# actualResidual_sub_offAxisHead_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a52e2035-1a50-3798-6737-6f91b3f5859b",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_offAxisHead_eq",
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
  "slug": "actualresidual-sub-offaxishead-eq--08e28ac27f60b98713407985",
  "source": {
    "blob": "cc952fbaf9e8db249e7ba2819c0fc3ff1fdbe0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e28ac27f60b98713407985d9a352cca13c1c79e8962162b77c0dbfe36d516f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a52e2035-1a50-3798-6737-6f91b3f5859b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_offAxisHead_eq {A : ℝ} (hA : 1 ≤ A) (R : ℝ) :
    mertensResidual A - (archimedeanMultiplier 0 -
      (actualOffAxisZeroHeightHead A R).re) / 2 =
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
        (actualZeroHeightTail A R).re / 2 - (actualCriticalZeroHeightHead A R).re / 2 := by
  have hr := actualResidual_sub_signedHead_eq hA R
  rw [actualZeroHeightHead_re_eq_critical_add_offAxis] at hr
  linarith

/-- A quantitative upper bound for the original residual retains every actual off-axis zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc952fbaf9e8db249e7ba2819c0fc3ff1fdbe0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
