# GenerationRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d024fd530fdbec126938a80ca6142581f2e4d0b9836b620e5a456642dd558b0",
  "kind": "structure",
  "lexical_name": "GenerationRelation",
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
  "slug": "generationrelation--3ccbd2a1307b84f0d2b8f56f",
  "source": {
    "blob": "cfbea354b06f6330d2aacaea9a11f57d350d0098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE4b9c9bb5cf022eb/Variantc5c730ac224be5ef04692703bbf6e4411be05904b16554f771cd838484a4630d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ccbd2a1307b84f0d2b8f56fdf8fee40a0c22d7225bcb01342339c404d722097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE4b9c9bb5cf022eb/Variantc5c730ac224be5ef04692703bbf6e4411be05904b16554f771cd838484a4630d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d024fd530fdbec126938a80ca6142581f2e4d0b9836b620e5a456642dd558b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GenerationRelation where
  relationId : StableId
  sourceDeclarationId : DeclarationId
  sourceDeclaration : Lean.Name
  targetDeclarationId : DeclarationId
  targetDeclaration : Lean.Name
  kind : GenerationKind
  authority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

namespace DependencyEdge

end DependencyEdge

end MathDiscovery.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE4b9c9bb5cf022eb/Variantc5c730ac224be5ef04692703bbf6e4411be05904b16554f771cd838484a4630d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE4b9c9bb5cf022eb/Variantc5c730ac224be5ef04692703bbf6e4411be05904b16554f771cd838484a4630d.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfbea354b06f6330d2aacaea9a11f57d350d0098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
