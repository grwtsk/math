# RawExtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe679429585fb85bc65a1ab3d2a0419e9660f1accfd900c94195dd543450d46d",
  "kind": "structure",
  "lexical_name": "RawExtraction",
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
  "slug": "rawextraction--a30c8728302717e3642e3e4b",
  "source": {
    "blob": "7753cd3cdd33e8501a9b074a5b9bd3b70dadda06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA69dd8c3813fd89b/Variante07faebf54fa66213d1bc16cea2d66a4eecd6eadaebb9c885f86022dc4b51ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a30c8728302717e3642e3e4b5cbaf61dad6c6263b195d28197cff6800362cc79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA69dd8c3813fd89b/Variante07faebf54fa66213d1bc16cea2d66a4eecd6eadaebb9c885f86022dc4b51ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe679429585fb85bc65a1ab3d2a0419e9660f1accfd900c94195dd543450d46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawExtraction where
  schemaVersion : Nat
  extractorVersion : String
  adapterVersion : String
  checkerVersion : String
  scope : String
  selectedModules : Array String
  modules : Array RawModuleShard
  diagnostics : Array String
  deriving ToJson

end MathematicsLeanEnvironmentExtract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA69dd8c3813fd89b/Variante07faebf54fa66213d1bc16cea2d66a4eecd6eadaebb9c885f86022dc4b51ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AA69dd8c3813fd89b/Variante07faebf54fa66213d1bc16cea2d66a4eecd6eadaebb9c885f86022dc4b51ad0.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7753cd3cdd33e8501a9b074a5b9bd3b70dadda06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
