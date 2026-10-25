# getModuleRefs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6c7e4ec6d5318bfc5ff6f51b5d05f77e8b54e6a5d135e8f82ad2458d64ab989",
  "kind": "def",
  "lexical_name": "getModuleRefs?",
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
  "slug": "getmodulerefs--e764036a50dfff84f0e88888",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 699,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e764036a50dfff84f0e888889bbfe29d21073870e83e97c39a214ea4b7d4c4b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6c7e4ec6d5318bfc5ff6f51b5d05f77e8b54e6a5d135e8f82ad2458d64ab989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getModuleRefs? (self : References) (mod : Name) : Option (DocumentUri × Lsp.ModuleRefs × Lsp.Decls) := do
  if let some worker := self.workers[mod]? then
    if worker.hasRefs then
      return (worker.moduleUri, worker.refs, worker.decls)
  if let some ilean := self.ileans[mod]? then
    return (ilean.moduleUri, ilean.refs, ilean.decls)
  none

/--
Gets the direct imports of `mod`.
The current imports in a file worker take precedence over those in .ilean files.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
