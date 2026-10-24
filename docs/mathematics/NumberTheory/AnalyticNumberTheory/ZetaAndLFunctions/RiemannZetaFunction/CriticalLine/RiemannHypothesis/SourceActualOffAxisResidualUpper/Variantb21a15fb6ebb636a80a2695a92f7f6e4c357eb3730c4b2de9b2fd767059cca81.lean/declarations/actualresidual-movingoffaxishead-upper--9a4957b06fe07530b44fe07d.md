# actualResidual_movingOffAxisHead_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:850fe4b6-c128-eab9-b80c-fccf5a45fb23",
  "kind": "theorem",
  "lexical_name": "actualResidual_movingOffAxisHead_upper",
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
  "slug": "actualresidual-movingoffaxishead-upper--9a4957b06fe07530b44fe07d",
  "source": {
    "blob": "cc952fbaf9e8db249e7ba2819c0fc3ff1fdbe0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4957b06fe07530b44fe07d43198fa491542544a682fbad724d04e32fcb0ac7",
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

Occurrence: `result:850fe4b6-c128-eab9-b80c-fccf5a45fb23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_movingOffAxisHead_upper :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      mertensResidual A ≤
        (archimedeanMultiplier 0 -
          (actualOffAxisZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 +
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := (hbound c A hc hA).2
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualBumpMovingHeight A c) hA1
  linarith

/-- At every fixed c greater than one the actual off-axis upper correction is eventually small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisResidualUpper/Variantb21a15fb6ebb636a80a2695a92f7f6e4c357eb3730c4b2de9b2fd767059cca81.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc952fbaf9e8db249e7ba2819c0fc3ff1fdbe0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
