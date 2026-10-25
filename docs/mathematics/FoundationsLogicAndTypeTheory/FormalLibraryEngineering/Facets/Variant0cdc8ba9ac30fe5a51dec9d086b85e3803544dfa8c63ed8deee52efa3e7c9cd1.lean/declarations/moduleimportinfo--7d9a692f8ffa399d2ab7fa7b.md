# ModuleImportInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10b935443f2b28fb318a8b83658486720bbe0225d2da2bd82e4ddee56d4667b6",
  "kind": "structure",
  "lexical_name": "ModuleImportInfo",
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
  "slug": "moduleimportinfo--7d9a692f8ffa399d2ab7fa7b",
  "source": {
    "blob": "e758d6506c9cec68257393cdc16f79dc2dc4a86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d9a692f8ffa399d2ab7fa7beca3703f500b2d04cc46d86e2915363dc208863a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10b935443f2b28fb318a8b83658486720bbe0225d2da2bd82e4ddee56d4667b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure ModuleImportInfo where
  /-- Artifacts directly needed for the imports of the module. -/
  directArts : NameMap ImportArtifacts
  /-- The trace produced by mixing the traces of `directArts` with their transitive imports. -/
  trace : BuildTrace
  /-- Transitive import trace for an `import` of the module with the module system enabled. -/
  transTrace : BuildTrace
  /-- Transitive import trace for a `meta import` of the module. -/
  metaTransTrace : BuildTrace
  /-- Transitive import trace for an `import all` of the module. -/
  allTransTrace : BuildTrace
  /-- Transitive import trace for an `import` of the module without the module system enabled. -/
  legacyTransTrace : BuildTrace
  deriving Inhabited

/-- **For internal use only.** Information about the imports of this module. -/
builtin_facet importInfo : Module => ModuleImportInfo

/-- Information useful to importers of a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e758d6506c9cec68257393cdc16f79dc2dc4a86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
