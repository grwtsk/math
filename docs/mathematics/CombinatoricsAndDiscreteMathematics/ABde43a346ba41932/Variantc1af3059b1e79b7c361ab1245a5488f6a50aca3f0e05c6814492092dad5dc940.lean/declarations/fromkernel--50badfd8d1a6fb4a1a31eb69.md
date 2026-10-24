# fromKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0afdb2ed68e6b073b7d3c0d7f8c8dcd274c2bb3abdf30ae43f0def50a35a478c",
  "kind": "def",
  "lexical_name": "fromKernel",
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
  "slug": "fromkernel--50badfd8d1a6fb4a1a31eb69",
  "source": {
    "blob": "fb7344001a1d5ad880d100c3af495e8d2017cd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variantc1af3059b1e79b7c361ab1245a5488f6a50aca3f0e05c6814492092dad5dc940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50badfd8d1a6fb4a1a31eb69be27ba322ea9100971a8e1991961b378a003649e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variantc1af3059b1e79b7c361ab1245a5488f6a50aca3f0e05c6814492092dad5dc940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0afdb2ed68e6b073b7d3c0d7f8c8dcd274c2bb3abdf30ae43f0def50a35a478c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromKernel
    (kernelId : StableId)
    (kernel : PositiveKernel Index)
    (entityId : EntityId)
    (conceptId : ConceptId)
    (channels : Finset ChannelId := ∅)
    (ambiguities : Finset Nonclaim := ∅) : KernelCandidate where
  entityId := entityId
  conceptId := conceptId
  kernelId := kernelId
  kernelValue := kernel (.entity entityId) (.concept conceptId)
  contributingChannels := channels
  ambiguities := ambiguities

end MathDiscovery.Discovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variantc1af3059b1e79b7c361ab1245a5488f6a50aca3f0e05c6814492092dad5dc940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variantc1af3059b1e79b7c361ab1245a5488f6a50aca3f0e05c6814492092dad5dc940.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7344001a1d5ad880d100c3af495e8d2017cd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
