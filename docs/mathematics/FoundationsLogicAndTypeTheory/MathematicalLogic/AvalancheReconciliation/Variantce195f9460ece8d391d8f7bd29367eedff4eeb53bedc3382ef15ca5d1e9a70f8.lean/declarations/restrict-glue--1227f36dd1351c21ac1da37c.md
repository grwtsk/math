# restrict_glue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abb08061-3981-e4a6-ff6f-7ea296c2345a",
  "kind": "theorem",
  "lexical_name": "restrict_glue",
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
  "slug": "restrict-glue--1227f36dd1351c21ac1da37c",
  "source": {
    "blob": "f998f116db782e586c560fe444f7aae915b4a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1227f36dd1351c21ac1da37c7551c027b9c2ddac1df1611ff6616b1e9fe1f582",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abb08061-3981-e4a6-ff6f-7ea296c2345a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_glue
    {partition : GlobalAvalanchePartition tree}
    (capability : PartitionGluingCapability partition)
    (sections : CompatiblePartitionLocalBoolSections partition)
    (node : tree.Node)
    (hnode : node ∈ partition.nodes) :
    restrictSignal (tree.region node) (capability.glue sections) =
      sections.value node := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  funext x
  unfold glue restrictSignal
  exact sections.compatible
    (partitionSelectedNode partition x) (partitionSelectedNode_mem partition x)
    node hnode x.1
    (capability.interface_complete
      (partitionSelectedNode partition x) (partitionSelectedNode_mem partition x)
      node hnode x.1 (mem_partitionSelectedNode_region partition x) x.2)

/--
GLT-04: compatible local states have exactly one global realization.  Both
existence and uniqueness use only the explicit cover and interface-completeness
certificate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f998f116db782e586c560fe444f7aae915b4a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
