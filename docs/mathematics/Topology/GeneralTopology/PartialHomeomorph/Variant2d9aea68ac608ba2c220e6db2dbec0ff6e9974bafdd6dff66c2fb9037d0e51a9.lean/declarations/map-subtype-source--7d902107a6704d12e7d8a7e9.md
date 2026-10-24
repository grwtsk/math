# map_subtype_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1f4f149-41f4-9632-0bd5-32bf38890910",
  "kind": "theorem",
  "lexical_name": "map_subtype_source",
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
  "slug": "map-subtype-source--7d902107a6704d12e7d8a7e9",
  "source": {
    "blob": "cd07fefc073617e1b552badfad718ee1d041de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1323,
    "line": 1316,
    "path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d902107a6704d12e7d8a7e91cf6d21159121c19f7bfb845f2d3c30355dc03da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f4f149-41f4-9632-0bd5-32bf38890910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1316–1323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subtype_source {x : s} (hxe : (x : X) ∈ e.source) :
    e x ∈ (e.subtypeRestr hs).target := by
  refine ⟨e.map_source hxe, ?_⟩
  rw [s.partialHomeomorphSubtypeCoe_target, mem_preimage, e.leftInvOn hxe]
  exact x.prop

/-- This lemma characterizes the transition functions of an open subset in terms of the transition
functions of the original space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean#L1316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd07fefc073617e1b552badfad718ee1d041de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
