# controlledCover_normalization_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f66b962-abf1-eea2-e9f7-4f9dfe0e0a9a",
  "kind": "theorem",
  "lexical_name": "controlledCover_normalization_bound",
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
  "slug": "controlledcover-normalization-bound--ca3640dd393815af17f70cc3",
  "source": {
    "blob": "39a1323678eebe9b22c248e8e9cd3363449bba12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 225,
    "path": "GRWTSK/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3640dd393815af17f70cc3f5ce0a012f7f893c57a12fa32fd2a0379e97574b",
  "verification": {
    "reference": "docs/verification/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f66b962-abf1-eea2-e9f7-4f9dfe0e0a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlledCover_normalization_bound (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I : Fin k ↪o Fin n)
    (hI : A ∈ controlledPivotDomain I) :
    ‖pivotNormalize A I‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hδ : 0 < controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  have h := (controlled_pivot_operator_bounds A hA I
    (controlledPivotThreshold k n) hδ hI.le).2.2
  simpa only [controlledPivotThreshold, inv_inv] using h

/-- Both transition directions on an overlap have the same explicit dimension budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a1323678eebe9b22c248e8e9cd3363449bba12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
