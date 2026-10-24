# perturbed_cross_schedule_nndist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045de383-ff72-be06-c497-2dc8c161936b",
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
  "slug": "perturbed-cross-schedule-nndist-le--43a2c44a4b07cd6d00b53949",
  "source": {
    "blob": "10f819265c84a34dc39dc2a62368933b285f3f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a2c44a4b07cd6d00b53949a12609a7991a8452e5cc81675a0b26366075cd22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045de383-ff72-be06-c497-2dc8c161936b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–135.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f819265c84a34dc39dc2a62368933b285f3f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
