# cross_schedule_nndist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ed41ac-9454-c5ca-d7a5-798775c25397",
  "kind": "theorem",
  "lexical_name": "cross_schedule_nndist_le",
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
  "slug": "cross-schedule-nndist-le--c10b0d9852af56ff9b72863f",
  "source": {
    "blob": "8413c15ae6222c14a390a411d8de296a689aa784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10b0d9852af56ff9b72863fbb99b07feee38a7f4471ac5ce863d41d863171a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ed41ac-9454-c5ca-d7a5-798775c25397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cross_schedule_nndist_le
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ certificate.basin)
    (right_mem : rightInitial ∈ certificate.basin) :
    ∀ depth,
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial) ≤
        certificate.contraction ^ depth *
          (nndist leftInitial certificate.boundary +
            nndist rightInitial certificate.boundary) := by
  intro depth
  calc
    nndist
        (iterateSchedule
          certificate.step leftSchedule depth leftInitial)
        (iterateSchedule
          certificate.step rightSchedule depth rightInitial) ≤
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          certificate.boundary +
        nndist
          certificate.boundary
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial) :=
      nndist_triangle _ _ _
    _ =
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          certificate.boundary +
        nndist
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial)
          certificate.boundary := by
            rw [nndist_comm certificate.boundary]
    _ ≤
      certificate.contraction ^ depth *
          nndist leftInitial certificate.boundary +
        certificate.contraction ^ depth *
          nndist rightInitial certificate.boundary :=
      add_le_add
        (certificate.nndist_to_boundary_le_pow
          leftSchedule left_mem depth)
        (certificate.nndist_to_boundary_le_pow
          rightSchedule right_mem depth)
    _ =
      certificate.contraction ^ depth *
        (nndist leftInitial certificate.boundary +
          nndist rightInitial certificate.boundary) := by
      rw [mul_add]

/-- Schedule-independent asymptotic determinism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8413c15ae6222c14a390a411d8de296a689aa784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
