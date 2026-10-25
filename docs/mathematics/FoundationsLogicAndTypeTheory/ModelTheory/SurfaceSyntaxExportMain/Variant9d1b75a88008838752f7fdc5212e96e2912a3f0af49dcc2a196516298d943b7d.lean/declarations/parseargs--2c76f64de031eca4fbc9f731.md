# parseArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b11fcd209665ae4cafd2b43cd6f682fec5812b57bd08b890bfe696bcfd3ae84",
  "kind": "def",
  "lexical_name": "parseArgs",
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
  "slug": "parseargs--2c76f64de031eca4fbc9f731",
  "source": {
    "blob": "c256ab903fb1f0009cb7c5f96b3604f4a9f68199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c76f64de031eca4fbc9f73183f4832a78c385620c080ffd48797c4f60389dbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b11fcd209665ae4cafd2b43cd6f682fec5812b57bd08b890bfe696bcfd3ae84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseArgs : List String → Except String Config
  | args => go args {}
where
  go : List String → Config → Except String Config
    | [], config =>
        if config.moduleName.isEmpty then throw "--module is required"
        else if config.repositoryRevision.isEmpty then
          throw "--revision is required"
        else if config.contractHash.isEmpty then
          throw "--contract-hash is required"
        else pure config
    | "--module" :: value :: remaining, config =>
        if config.moduleName.isEmpty then
          go remaining { config with moduleName := value }
        else throw "--module may be supplied only once"
    | "--revision" :: value :: remaining, config =>
        if config.repositoryRevision.isEmpty then
          go remaining { config with repositoryRevision := value }
        else throw "--revision may be supplied only once"
    | "--contract-hash" :: value :: remaining, config =>
        if config.contractHash.isEmpty then
          go remaining { config with contractHash := value }
        else throw "--contract-hash may be supplied only once"
    | option :: _, _ => throw s!"unknown or incomplete option: {option}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c256ab903fb1f0009cb7c5f96b3604f4a9f68199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
