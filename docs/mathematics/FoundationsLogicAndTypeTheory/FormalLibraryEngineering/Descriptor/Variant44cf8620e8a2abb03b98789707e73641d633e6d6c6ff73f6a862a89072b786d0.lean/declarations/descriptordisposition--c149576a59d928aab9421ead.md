# DescriptorDisposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffe25d3e023f8a2a863eefae85c1052f9d8da955a9ba6467cb261ac8867819a0",
  "kind": "inductive",
  "lexical_name": "DescriptorDisposition",
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
  "slug": "descriptordisposition--c149576a59d928aab9421ead",
  "source": {
    "blob": "d03dc23735b2e6152c20834ebdeb83afaf978e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descriptor/Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c149576a59d928aab9421ead0e67285d6efcb3d4f8cfbc5debe678c659971f01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descriptor/Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffe25d3e023f8a2a863eefae85c1052f9d8da955a9ba6467cb261ac8867819a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DescriptorDisposition
  | knownPoint (pointId : ElementId)
  | projectLocalName (pointId : ElementId)
  | contextualModifier
  | representationIdentifier (representationId : RepresentationId)
  | operationalInstruction
  | authorityClassification
  | boundaryOrProhibition
  | candidatePoint (candidateId : ElementId)
  | opaqueLabel
  | unresolvedObligation (obligationId : StableId)
  deriving DecidableEq, Repr, Inhabited

/-- One exact descriptor occurrence and its accountable meaning status. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descriptor/Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descriptor/Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d03dc23735b2e6152c20834ebdeb83afaf978e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
