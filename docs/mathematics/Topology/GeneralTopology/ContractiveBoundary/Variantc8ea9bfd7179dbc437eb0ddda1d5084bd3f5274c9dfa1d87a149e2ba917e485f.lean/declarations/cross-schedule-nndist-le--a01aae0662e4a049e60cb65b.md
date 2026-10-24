# cross_schedule_nndist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccd8aad7-f04e-5230-df01-f8ea408507d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22816a4d-7265-2d2a-36c2-59d2e28eb1cc",
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
  "slug": "cross-schedule-nndist-le--a01aae0662e4a049e60cb65b",
  "source": {
    "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01aae0662e4a049e60cb65b498605bae3111b943d67afd9e2e1f8bfb006669b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22816a4d-7265-2d2a-36c2-59d2e28eb1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–313.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b6e751df667391795201d5e96ded7ef2fbc6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
