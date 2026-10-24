# perturbed_cross_schedule_nndist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e024a50-b2e5-973e-b24c-7448fd6fc8dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efdce05c-4175-fad8-f1b6-7e71fd60b6e6",
  "kind": "theorem",
  "lexical_name": "perturbed_cross_schedule_nndist_le",
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
  "slug": "perturbed-cross-schedule-nndist-le--00a1c997d0e6fe945b3ee03f",
  "source": {
    "blob": "b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a1c997d0e6fe945b3ee03fbce875fbd8fe93ecefbcb71f2fba5ca919981c75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efdce05c-4175-fad8-f1b6-7e71fd60b6e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perturbed_cross_schedule_nndist_le
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (left : PerturbedBoundaryCertificate exact)
    (right : PerturbedBoundaryCertificate exact)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin)
    (depth : ℕ) :
    nndist
        (iteratePerturbed
          left leftSchedule depth leftInitial)
        (iteratePerturbed
          right rightSchedule depth rightInitial) ≤
      exact.contraction ^ depth *
          (nndist leftInitial exact.boundary +
            nndist rightInitial exact.boundary) +
        weightedPerturbationTail
          left leftSchedule depth +
        weightedPerturbationTail
          right rightSchedule depth := by
  calc
    nndist
        (iteratePerturbed
          left leftSchedule depth leftInitial)
        (iteratePerturbed
          right rightSchedule depth rightInitial) ≤
      nndist
          (iteratePerturbed
            left leftSchedule depth leftInitial)
          exact.boundary +
        nndist
          (iteratePerturbed
            right rightSchedule depth rightInitial)
          exact.boundary := by
            simpa [nndist_comm exact.boundary] using
              (nndist_triangle
                (iteratePerturbed
                  left leftSchedule depth leftInitial)
                exact.boundary
                (iteratePerturbed
                  right rightSchedule depth rightInitial))
    _ ≤
      left.transportedError leftSchedule depth
          (nndist leftInitial exact.boundary) +
        right.transportedError rightSchedule depth
          (nndist rightInitial exact.boundary) :=
      add_le_add
        (left.iterate_error_le
          leftSchedule left_mem depth)
        (right.iterate_error_le
          rightSchedule right_mem depth)
    _ =
      exact.contraction ^ depth *
          (nndist leftInitial exact.boundary +
            nndist rightInitial exact.boundary) +
        weightedPerturbationTail
          left leftSchedule depth +
        weightedPerturbationTail
          right rightSchedule depth := by
      rw [transportedError_eq_geometric_add_tail,
        transportedError_eq_geometric_add_tail]
      ring

/-! ## Outcome certificates -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
