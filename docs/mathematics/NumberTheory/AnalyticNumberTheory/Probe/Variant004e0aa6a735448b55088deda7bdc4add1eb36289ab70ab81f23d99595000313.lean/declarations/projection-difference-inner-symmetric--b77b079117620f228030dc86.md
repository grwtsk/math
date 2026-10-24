# projection_difference_inner_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9b7289e-5205-a59f-e18a-63c04a0b36a7",
  "kind": "theorem",
  "lexical_name": "projection_difference_inner_symmetric",
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
  "slug": "projection-difference-inner-symmetric--b77b079117620f228030dc86",
  "source": {
    "blob": "1b36a5d739e9eaa7ad5067d0514b83b4557697ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77b079117620f228030dc8644d71c326e11265f4996aeb7e245c11a96a5c81f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9b7289e-5205-a59f-e18a-63c04a0b36a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projection_difference_inner_symmetric (j : ℕ) (x y : H) :
    ⟪projectionDifference V j x, y⟫_ℂ = ⟪x, projectionDifference V j y⟫_ℂ := by
  simp only [projectionDifference, sub_apply, inner_sub_left,
    inner_sub_right, Submodule.inner_starProjection_left_eq_right]

/-- One nested orthogonal increment costs exactly its increase in squared fit norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b36a5d739e9eaa7ad5067d0514b83b4557697ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
