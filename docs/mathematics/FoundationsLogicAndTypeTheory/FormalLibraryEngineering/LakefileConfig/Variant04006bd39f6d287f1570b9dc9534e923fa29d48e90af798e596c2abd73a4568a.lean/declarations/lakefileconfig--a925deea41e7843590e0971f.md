# LakefileConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0589378c2f684317d62e7f445a1c6477c7e74cdae7e0b423078784af1fdd4949",
  "kind": "structure",
  "lexical_name": "LakefileConfig",
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
  "slug": "lakefileconfig--a925deea41e7843590e0971f",
  "source": {
    "blob": "175e036cac621a9f149e05ade819dd95290d47d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LakefileConfig/Variant04006bd39f6d287f1570b9dc9534e923fa29d48e90af798e596c2abd73a4568a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a925deea41e7843590e0971f8c48bbbce7412a98b5ca75426b9d5ee2944d7380",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LakefileConfig/Variant04006bd39f6d287f1570b9dc9534e923fa29d48e90af798e596c2abd73a4568a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0589378c2f684317d62e7f445a1c6477c7e74cdae7e0b423078784af1fdd4949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure LakefileConfig where
  /-- The package deceleration of the configuration file. -/
  pkgDecl : PackageDecl
  /-- Depdency configurations in the order declared by the configuration file.  -/
  depConfigs : Array Dependency := #[]
  /-- Facet configurations in the order declared by the configuration file. -/
  facetDecls : Array FacetDecl := {}
  /-- Target configurations in the order declared by the configuration file. -/
  targetDecls : Array (PConfigDecl pkgDecl.keyName) := #[]
  /-- Name-declaration map of target configurations declared in the configuration file. -/
  targetDeclMap : DNameMap (NConfigDecl pkgDecl.keyName) :=
    targetDecls.foldl (fun m d => m.insert d.name (.mk d rfl)) {}
  /-- The names of targets declared via {lit}`@[default_target]`. -/
  defaultTargets : Array Name := #[]
  /-- Scripts declared in the configuration file. -/
  scripts : NameMap Script := {}
  /-- The names of the scripts declared via {lit}`@[default_script]`. -/
  defaultScripts : Array Script := #[]
  /-- {lit}`post_update` hooks in the order declared by the configuration file.. -/
  postUpdateHooks : Array (OpaquePostUpdateHook pkgDecl.keyName) := #[]
  /--
  The name of the configuration file's test driver.

  It is either  declared via {lit}`@[test_driver]` or derived from {lean}`PackageConfig.testDriver`.
  -/
  testDriver : String := pkgDecl.config.testDriver
  /--
  The name of the configuration file's test driver.

  It is either declared via {lit}`@[lint_driver]` or derived from {lean}`PackageConfig.lintDriver`.
  -/
  lintDriver : String := pkgDecl.config.lintDriver
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LakefileConfig/Variant04006bd39f6d287f1570b9dc9534e923fa29d48e90af798e596c2abd73a4568a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LakefileConfig/Variant04006bd39f6d287f1570b9dc9534e923fa29d48e90af798e596c2abd73a4568a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175e036cac621a9f149e05ade819dd95290d47d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
