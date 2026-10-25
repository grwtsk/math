# IntervalProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:515be061f21d73e38e4591450096b09584b3e5c3cb05eb81000fc5902daf615b",
  "kind": "structure",
  "lexical_name": "IntervalProfile",
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
  "slug": "intervalprofile--779c787f8ad059aad61f379e",
  "source": {
    "blob": "1ec904fa0bb808c97070a7e985a87de6341fe1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:779c787f8ad059aad61f379e5615c78d6f3956c54507e692a20bae4c7c00b9d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:515be061f21d73e38e4591450096b09584b3e5c3cb05eb81000fc5902daf615b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntervalProfile
    (Input : Type uInput) (Witness : Type uWitness) where
  version : ArtifactRef .intervalProfile
  sourceTheorem : ArtifactRef .theoremArtifact
  domainVersion : ArtifactRef .domainPredicate
  lowerVersion : ArtifactRef .endpointFunction
  upperVersion : ArtifactRef .endpointFunction
  assumptionSet : ArtifactRef .assumptionSet
  orientation : IntervalOrientation
  sourceNotation : String
  domain : Input → Prop
  lower : Input → Witness
  upper : Input → Witness
  lowerMode : BoundaryMode
  upperMode : BoundaryMode
  witnessQualifies : Witness → Prop
  order : Witness → Witness → Prop

namespace BoundaryMode

/-- Interpret a lower endpoint according to its declared boundary mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ec904fa0bb808c97070a7e985a87de6341fe1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
