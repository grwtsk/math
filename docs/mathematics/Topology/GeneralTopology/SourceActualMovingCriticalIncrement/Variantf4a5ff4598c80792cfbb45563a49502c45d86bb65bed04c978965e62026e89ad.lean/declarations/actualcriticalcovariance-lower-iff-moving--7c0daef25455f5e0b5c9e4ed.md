# actualCriticalCovariance_lower_iff_moving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:788e2ce1-7000-10f2-07b2-9d78480a0efc",
  "kind": "theorem",
  "lexical_name": "actualCriticalCovariance_lower_iff_moving",
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
  "slug": "actualcriticalcovariance-lower-iff-moving--7c0daef25455f5e0b5c9e4ed",
  "source": {
    "blob": "c218db2ab8027173411f51c506a6f17980c6ee6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c0daef25455f5e0b5c9e4edeefd7524a6c0943208038916a479ee84a47e8644",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788e2ce1-7000-10f2-07b2-9d78480a0efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalCovariance_lower_iff_moving {R : ℝ} (hR : 1 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → -K ≤ actualCriticalErrorCovariance A) ↔
      ∃ K : ℝ, ∀ A : ℝ, R ≤ A → -K ≤ actualMovingCriticalIncrementCovariance A := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + Real.sqrt 7 / 2 * B, fun A hA => ?_⟩
    have h1 : 1 ≤ A := hR.trans hA
    have he := actualCriticalErrorCovariance_eq_moving_increment h1
    have hh := abs_le.mp (actualMovingCriticalHead_abs_le_uniform h1)
    have hk := hK A hA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + Real.sqrt 7 / 2 * B, fun A hA => ?_⟩
    have h1 : 1 ≤ A := hR.trans hA
    have he := actualCriticalErrorCovariance_eq_moving_increment h1
    have hh := abs_le.mp (actualMovingCriticalHead_abs_le_uniform h1)
    have hk := hK A hA
    linarith

end
end FormalResearch.RiemannHypothesis.SourceActualMovingCriticalIncrement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c218db2ab8027173411f51c506a6f17980c6ee6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
