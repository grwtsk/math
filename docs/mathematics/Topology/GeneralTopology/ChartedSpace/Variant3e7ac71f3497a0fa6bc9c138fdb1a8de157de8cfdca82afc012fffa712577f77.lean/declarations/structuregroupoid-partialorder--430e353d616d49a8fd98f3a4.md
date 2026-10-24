# StructureGroupoid.partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5cad810e3400866d7e336b8b4250f36d2d2d6cbf6726e889e4f05c96169f1f9",
  "kind": "instance",
  "lexical_name": "StructureGroupoid.partialOrder",
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
  "slug": "structuregroupoid-partialorder--430e353d616d49a8fd98f3a4",
  "source": {
    "blob": "f73560526c32ca7ceb4c68d3b7b39da3540080d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:430e353d616d49a8fd98f3a4b55b6672763564dee25df679edad01bf74484e25",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5cad810e3400866d7e336b8b4250f36d2d2d6cbf6726e889e4f05c96169f1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance StructureGroupoid.partialOrder : PartialOrder (StructureGroupoid H) :=
  PartialOrder.lift StructureGroupoid.members fun a b h ↦ by
    cases a
    cases b
    dsimp at h
    induction h
    rfl
#align structure_groupoid.partial_order StructureGroupoid.partialOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73560526c32ca7ceb4c68d3b7b39da3540080d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
