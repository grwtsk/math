# ExtractConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10b390a51ea371372e8d40ee86dac9f6d19f58b4d07e8a2e4e88f010dd5c7c8a",
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
  "slug": "extractconfig--9b3754e7ed6ed6cf614b5435",
  "source": {
    "blob": "57af18d08e9361d2254ba2fe5e1ce033cebbc819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7eb25a2f3acd3e6c/Varianta564512b1cdd824dcf32281d4a28937a36a6942dc9d9290ce88512d9edb688c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b3754e7ed6ed6cf614b5435e905e09c7341ef946fa14aa9dd8f23570ec9bd58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7eb25a2f3acd3e6c/Varianta564512b1cdd824dcf32281d4a28937a36a6942dc9d9290ce88512d9edb688c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10b390a51ea371372e8d40ee86dac9f6d19f58b4d07e8a2e4e88f010dd5c7c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

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

end MathDiscovery.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7eb25a2f3acd3e6c/Varianta564512b1cdd824dcf32281d4a28937a36a6942dc9d9290ce88512d9edb688c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7eb25a2f3acd3e6c/Varianta564512b1cdd824dcf32281d4a28937a36a6942dc9d9290ce88512d9edb688c3.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57af18d08e9361d2254ba2fe5e1ce033cebbc819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
