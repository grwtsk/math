# fast_actual_tail_norm_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6a3f472-e25b-7139-b13a-af8c7e43441c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:827a2130-1965-1570-f02d-8a6c45b8e471",
  "kind": "theorem",
  "lexical_name": "fast_actual_tail_norm_bounds",
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
  "slug": "fast-actual-tail-norm-bounds--cfd0ab06a1ec512c9a0dd3a5",
  "source": {
    "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd0ab06a1ec512c9a0dd3a57c0cb4567699d50d8b6586ad9c569a128340aab8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:827a2130-1965-1570-f02d-8a6c45b8e471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_actual_tail_norm_bounds (X : ℕ) (hX : 4 ≤ X) :
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X (fastEpsilon X)))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log (cutoffSchedule X))).indicator (logResidual X (fastEpsilon X)))‖ ≤
        3 / Real.sqrt (X : ℝ) := by
  constructor
  · rw [logResidual_negative_norm X (fastEpsilon X) (by omega)]
    exact (fast_endpoint_bounds X hX).1
  · exact (logResidual_positive_norm_le X (fastEpsilon X) (by omega) (cutoffSchedule X)
      (fast_schedule_admissible X hX).2.2).trans (fast_endpoint_bounds X hX).2

end
end DampedDivisorScheduleScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f119581b9bc43f929165355d9d7bc846d69140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
