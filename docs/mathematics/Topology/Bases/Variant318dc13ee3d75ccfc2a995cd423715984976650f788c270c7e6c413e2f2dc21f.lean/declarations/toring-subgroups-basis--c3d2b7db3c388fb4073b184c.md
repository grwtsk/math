# toRing_subgroups_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed39e57c-029b-5186-8558-e755b2e03f04",
  "kind": "theorem",
  "lexical_name": "toRing_subgroups_basis",
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
  "slug": "toring-subgroups-basis--c3d2b7db3c388fb4073b184c",
  "source": {
    "blob": "2c149838e3b14ebc4d39426e8091b745f9194d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 236,
    "path": "GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d2b7db3c388fb4073b184c5176fece93df0772342addbf836994cfe1de623c",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed39e57c-029b-5186-8558-e755b2e03f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRing_subgroups_basis (hB : SubmodulesRingBasis B) :
    RingSubgroupsBasis fun i => (B i).toAddSubgroup := by
  apply RingSubgroupsBasis.of_comm (fun i => (B i).toAddSubgroup) hB.inter hB.mul
  intro a i
  rcases hB.leftMul a i with ⟨j, hj⟩
  use j
  rintro b (b_in : b ∈ B j)
  exact hj ⟨b, b_in, rfl⟩
#align submodules_ring_basis.to_ring_subgroups_basis SubmodulesRingBasis.toRing_subgroups_basis

/-- The topology associated to a basis of submodules in an algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c149838e3b14ebc4d39426e8091b745f9194d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
