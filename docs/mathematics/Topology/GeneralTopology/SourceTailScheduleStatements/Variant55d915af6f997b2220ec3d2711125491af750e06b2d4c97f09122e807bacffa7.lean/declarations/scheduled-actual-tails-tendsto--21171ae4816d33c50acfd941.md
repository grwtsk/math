# scheduled_actual_tails_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "249ad25a1db6ffb5c88edb6013f3d2e6010a30e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cef9ad5-7868-cdb1-a2b9-ea9308ab9601",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:758329f6-3cd4-018b-09d9-65ca0dec041f",
  "kind": "theorem",
  "lexical_name": "scheduled_actual_tails_tendsto",
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
  "slug": "scheduled-actual-tails-tendsto--21171ae4816d33c50acfd941",
  "source": {
    "blob": "249ad25a1db6ffb5c88edb6013f3d2e6010a30e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21171ae4816d33c50acfd941056fbee85a6cd39399774442aab2b63efd0406b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:758329f6-3cd4-018b-09d9-65ca0dec041f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scheduled_actual_tails_tendsto :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) := by
  constructor
  · exact squeeze_zero' (Eventually.of_forall (fun X => norm_nonneg _))
      (eventually_atTop.mpr ⟨2, fun X hX => (scheduled_endpoint_bounds X hX).1⟩)
      explicit_tail_bounds_tendsto.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨2, fun X hX => (scheduled_endpoint_bounds X hX).2⟩)
      explicit_tail_bounds_tendsto.2

/-- The same actual inward-offset schedule tends to zero along all natural cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249ad25a1db6ffb5c88edb6013f3d2e6010a30e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
