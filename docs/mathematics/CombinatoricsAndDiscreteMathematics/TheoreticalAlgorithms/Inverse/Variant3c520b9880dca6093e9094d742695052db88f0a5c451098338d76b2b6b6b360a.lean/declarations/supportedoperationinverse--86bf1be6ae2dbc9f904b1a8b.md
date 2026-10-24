# SupportedOperationInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:535866b5c2338ac81ab5304c3a04a055bfe87cb24687530fd2f1487fa072e2d3",
  "kind": "structure",
  "lexical_name": "SupportedOperationInverse",
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
  "slug": "supportedoperationinverse--86bf1be6ae2dbc9f904b1a8b",
  "source": {
    "blob": "5ddecc442f59b1132fe728c13c44b5deca58917a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86bf1be6ae2dbc9f904b1a8bd38380426f67686fcaf79756325aea0cb9f1a8c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:535866b5c2338ac81ab5304c3a04a055bfe87cb24687530fd2f1487fa072e2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SupportedOperationInverse where
  resolved : ResolvedSurgeryOperation
  inversePairs : List TypedInverseEditPair
  beforeSource : CanonicalBytes
  afterSource : CanonicalBytes
  forwardObservations : List GuardObservation
  inverseObservations : List GuardObservation
  forwardEditsMatch : inversePairs.map TypedInverseEditPair.forward =
    resolved.compiledEdits
  inverseEditsOrdered : CompiledEditsOrdered
    (inversePairs.map TypedInverseEditPair.inverse)
  inverseEditsNonoverlapping : CompiledEditsNonoverlapping
    (inversePairs.map TypedInverseEditPair.inverse)
  forwardAppliesExactly :
    applyObservedEditSequence beforeSource forwardObservations
      resolved.compiledEdits = some afterSource
  inverseAppliesExactly :
    applyObservedEditSequence afterSource inverseObservations
      (inversePairs.map TypedInverseEditPair.inverse) = some beforeSource

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ddecc442f59b1132fe728c13c44b5deca58917a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
