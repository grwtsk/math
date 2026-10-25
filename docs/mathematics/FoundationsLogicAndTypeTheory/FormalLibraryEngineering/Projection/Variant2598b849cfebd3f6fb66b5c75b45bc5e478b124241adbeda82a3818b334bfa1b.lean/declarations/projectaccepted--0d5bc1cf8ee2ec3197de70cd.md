# projectAccepted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efea64571d174eba3c4e8cc95828791875d75bb0060e5a9942a1c51a8a7e1928",
  "kind": "def",
  "lexical_name": "projectAccepted",
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
  "slug": "projectaccepted--0d5bc1cf8ee2ec3197de70cd",
  "source": {
    "blob": "33baae54f9249c1ff274b28d69b9e68a484a8b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variant2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d5bc1cf8ee2ec3197de70cd27e6bf3977863671d33f71c4966251e49fdb86b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variant2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efea64571d174eba3c4e8cc95828791875d75bb0060e5a9942a1c51a8a7e1928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def projectAccepted
    {Payload : Type u} {View : Type v}
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) :
    PresentationModel Payload View :=
  let targetExists := model.nodes.any (fun node ↦
    node.hostCode == publication.targetHostCode)
  let updated := model.nodes.map (fun node ↦
    if node.hostCode = publication.targetHostCode then
      node.withPublication adapter publication.incoming
    else node)
  let nodes := if targetExists then updated else
    updated ++ [{
      stableNodeId := publication.targetHostCode
      hostCode := publication.targetHostCode
      admitted := publication.incoming
      view := adapter.render publication.incoming.value
    }]
  { nodes := nodes
    published := some publication.incoming
    sourceSnapshotHash := model.sourceSnapshotHash }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variant2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variant2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33baae54f9249c1ff274b28d69b9e68a484a8b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
