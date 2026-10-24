# fromKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f028fd0a1371c3f3a29c03e582ea4deca7a9c5315f870bc80cfa1d74d292a4e",
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
  "slug": "fromkernel--f2edad5a0863910ca0f6f80a",
  "source": {
    "blob": "741dd8b4c60692e4def9d3abc10a70e9641fc740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FromKernel/Variant710825f8246cb641e5a3168e2196663d8f39bdf7dba6dcf599376688e69dee07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2edad5a0863910ca0f6f80ad0c89646ba6edc40f3d19937ab346ab8a10b4caf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FromKernel/Variant710825f8246cb641e5a3168e2196663d8f39bdf7dba6dcf599376688e69dee07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f028fd0a1371c3f3a29c03e582ea4deca7a9c5315f870bc80cfa1d74d292a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

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

end Mathematics.Discovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FromKernel/Variant710825f8246cb641e5a3168e2196663d8f39bdf7dba6dcf599376688e69dee07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FromKernel/Variant710825f8246cb641e5a3168e2196663d8f39bdf7dba6dcf599376688e69dee07.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741dd8b4c60692e4def9d3abc10a70e9641fc740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
