# ExtractConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98db16ece10de5ce40b05c168a5f7abcf1bb92fc55c6e0eb574117da2b9b003b",
  "kind": "structure",
  "lexical_name": "ExtractConfig",
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
  "slug": "extractconfig--5fe60a5e08eb9110d1692c60",
  "source": {
    "blob": "ed27ad02d199e3d5ad55d1adc2e1aabfbf687103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractConfig/Variant6beca391881bc296aad1841a78c2758eb94e49e5d8b210fa17917ff61161275a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fe60a5e08eb9110d1692c60839805c95f7626db16c24c4a593c2a52e1736855",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractConfig/Variant6beca391881bc296aad1841a78c2758eb94e49e5d8b210fa17917ff61161275a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98db16ece10de5ce40b05c168a5f7abcf1bb92fc55c6e0eb574117da2b9b003b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtractConfig where
  configId : ExtractorConfigId
  discovery : DiscoveryMode
  scope : ExtractionScope
  includeValues : Bool := true
  includeTheoremProofs : Bool := true
  includeImportedBodies : Bool := false
  sourceEnrichment : SourceEnrichmentMode := .compiledRanges
  attributePlugins : Array Lean.Name := #[]
  trustPolicy : StableId
  failOnUnsupportedExtension : Bool := false
  failOnMissingSource : Bool := false
  failOnUnknownOwner : Bool := true
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractConfig/Variant6beca391881bc296aad1841a78c2758eb94e49e5d8b210fa17917ff61161275a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractConfig/Variant6beca391881bc296aad1841a78c2758eb94e49e5d8b210fa17917ff61161275a.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed27ad02d199e3d5ad55d1adc2e1aabfbf687103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
