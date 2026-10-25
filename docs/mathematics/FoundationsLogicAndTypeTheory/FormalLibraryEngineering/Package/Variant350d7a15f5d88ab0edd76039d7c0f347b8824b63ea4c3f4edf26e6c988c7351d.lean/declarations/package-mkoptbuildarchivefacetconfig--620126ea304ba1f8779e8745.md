# Package.mkOptBuildArchiveFacetConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2dc23573fc52d8e8e17e7802d494b9b66b945ece0f4935f8e46f8b061ea4e8e",
  "kind": "def",
  "lexical_name": "Package.mkOptBuildArchiveFacetConfig",
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
  "slug": "package-mkoptbuildarchivefacetconfig--620126ea304ba1f8779e8745",
  "source": {
    "blob": "2caa3cef1558ea0017f409a3ac168c469e287f71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:620126ea304ba1f8779e87455faf1b333ca9108d05666043fcaedfc8340becd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2dc23573fc52d8e8e17e7802d494b9b66b945ece0f4935f8e46f8b061ea4e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Package.mkOptBuildArchiveFacetConfig
  {facet : Name} (archiveFile : Package → FilePath)
  (getUrl : Package → JobM String) (headers : Array String := #[])
  [FamilyDef FacetOut facet Bool]
: PackageFacetConfig facet := mkFacetJobConfig fun pkg =>
  withRegisterJob s!"{pkg.baseName}:{Name.eraseHead facet}" (optional := true) <| Job.async do
  try
    let url ← getUrl pkg
    pkg.fetchBuildArchive url (archiveFile pkg) headers
    return true
  catch _ =>
    updateAction .fetch
    return false

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2caa3cef1558ea0017f409a3ac168c469e287f71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
