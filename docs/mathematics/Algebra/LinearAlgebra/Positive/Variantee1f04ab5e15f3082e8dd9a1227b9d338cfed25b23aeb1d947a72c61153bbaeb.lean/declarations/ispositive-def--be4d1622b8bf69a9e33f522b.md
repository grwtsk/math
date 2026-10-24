# isPositive_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85cb8be3-65a7-b733-c6c2-64364ddc8f93",
  "kind": "theorem",
  "lexical_name": "isPositive_def",
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
  "slug": "ispositive-def--be4d1622b8bf69a9e33f522b",
  "source": {
    "blob": "f37e9c645a3ccad5dc236a779b41cb385e3d9a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 284,
    "path": "GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be4d1622b8bf69a9e33f522b69d0871b5a111f41fd04aa5659b059ae9f4c7597",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85cb8be3-65a7-b733-c6c2-64364ddc8f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPositive_def {T : E →L[𝕜] E} :
    T.IsPositive ↔ T.IsSymmetric ∧ ∀ x, 0 ≤ T.reApplyInnerSelf x := Iff.rfl

/-- In a complete space, a continuous linear endomorphism `T` is **positive** if it is
symmetric and `∀ x, 0 ≤ re ⟪T x, x⟫`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f37e9c645a3ccad5dc236a779b41cb385e3d9a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
