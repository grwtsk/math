# instLocallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cfc5a102ec853635b6cce53c811c73b0a7cc7a755cc5f5747d0ee5ce03144f7",
  "kind": "instance",
  "lexical_name": "instLocallyConvexSpace",
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
  "slug": "instlocallyconvexspace--8bd4e8d5682c0e12a47311d6",
  "source": {
    "blob": "2633257d7b4f13e712f9261861c86375a97a8964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bd4e8d5682c0e12a47311d6e0e2f109b0eae22bdb8292a809fa974c1d4fa4c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cfc5a102ec853635b6cce53c811c73b0a7cc7a755cc5f5747d0ee5ce03144f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLocallyConvexSpace [NormedSpace ℝ 𝕜₂] [Module ℝ (E →SWOT[σ] F)]
    [IsScalarTower ℝ 𝕜₂ (E →SWOT[σ] F)] :
    LocallyConvexSpace ℝ (E →SWOT[σ] F) :=
  withSeminorms.toLocallyConvexSpace

end Seminorms

section toWOT_continuous

variable [IsTopologicalAddGroup F] [ContinuousConstSMul 𝕜₂ F] [ContinuousSMul 𝕜₁ E]

/-- The weak operator topology is coarser than the bounded convergence topology, i.e. the inclusion
map is continuous. -/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2633257d7b4f13e712f9261861c86375a97a8964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
