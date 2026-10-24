# fromKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:398c8e3a78acc5756bf59a46fdf4d92753bd4ea2bd83466a8070270fc3c3816f",
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
  "slug": "fromkernel--62102efbe7a144941bb4ff6f",
  "source": {
    "blob": "9b9332a80066c8a8474f1b849948212539b7770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variant7af343cc9de2e69a609cc17b6a661b633739bde52f67e5576f3d06dea970363b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62102efbe7a144941bb4ff6ff0719107319c26bb65b3c6854c7b70c6af335894",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variant7af343cc9de2e69a609cc17b6a661b633739bde52f67e5576f3d06dea970363b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:398c8e3a78acc5756bf59a46fdf4d92753bd4ea2bd83466a8070270fc3c3816f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variant7af343cc9de2e69a609cc17b6a661b633739bde52f67e5576f3d06dea970363b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ABde43a346ba41932/Variant7af343cc9de2e69a609cc17b6a661b633739bde52f67e5576f3d06dea970363b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9332a80066c8a8474f1b849948212539b7770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
