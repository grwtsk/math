# controlledCover_transition_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0550e94e-34c5-5310-0220-8849bd36b3b4",
  "kind": "theorem",
  "lexical_name": "controlledCover_transition_bounds",
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
  "slug": "controlledcover-transition-bounds--b5ea0d883e62384dfa8052af",
  "source": {
    "blob": "8a6f5451b53faaf00804b52b39a7ebe0aefea395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 394,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5ea0d883e62384dfa8052af95180a85e3cc1b721d9531a17d7a184497bf63e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0550e94e-34c5-5310-0220-8849bd36b3b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlledCover_transition_bounds (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I J : Fin k ↪o Fin n)
    (hI : A ∈ controlledPivotDomain I) (hJ : A ∈ controlledPivotDomain J) :
    ‖pivotTransition A I J‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) ∧
      ‖(pivotTransition A I J)⁻¹‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hδ : 0 < controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  simpa only [controlledPivotThreshold, inv_inv] using
    controlled_transition_operator_bounds A hA I J
      (controlledPivotThreshold k n) hδ hI.le hJ.le

/-- Orthogonal matrices have determinant magnitude one, retaining orientation reversal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6f5451b53faaf00804b52b39a7ebe0aefea395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
