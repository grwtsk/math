# ModuleSetup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:976f7116525d87e9f5fc7668878fc5e6cc62b38556c9bf188271a40f2fc5a54d",
  "kind": "structure",
  "lexical_name": "ModuleSetup",
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
  "slug": "modulesetup--4d1a0cf629dddb5e85117ff0",
  "source": {
    "blob": "fb9fbd413e65ea6c1eded3dcab8a8200be827994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setup/Varianteff05a30636e084ecf7c52e4019a1f5497d48b5b023b73f0e979abde91d419a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d1a0cf629dddb5e85117ff0532cf0748140527764ae21c8fd1bd862a70d60bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setup/Varianteff05a30636e084ecf7c52e4019a1f5497d48b5b023b73f0e979abde91d419a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:976f7116525d87e9f5fc7668878fc5e6cc62b38556c9bf188271a40f2fc5a54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ModuleSetup where
  /-- The name of the module. -/
  name : Name
  /-- The package to which the module belongs (if any). -/
  package? : Option PkgId := none
  /--
  Whether the module, by default, participates in the module system.
  Even if {lean}`false`, a module can still choose to participate by using
  {lit}`module` in its header.
  -/
  isModule : Bool := false
  /--
  The module's direct imports.
  If {lean}`none`, uses the imports from the module header.
  -/
  imports? : Option (Array Import) := none
  /-- Pre-resolved artifacts of transitively imported modules. -/
  importArts : NameMap ImportArtifacts := {}
  /-- Dynamic libraries to load with the module. -/
  dynlibs : Array System.FilePath := #[]
  /-- Plugins to initialize with the module. -/
  plugins : Array Plugin := #[]
  /-- Additional options for the module. -/
  options : LeanOptions := {}
  deriving Repr, Inhabited, ToJson, FromJson

/-- Load a {lean}`ModuleSetup` from a JSON file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setup/Varianteff05a30636e084ecf7c52e4019a1f5497d48b5b023b73f0e979abde91d419a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setup/Varianteff05a30636e084ecf7c52e4019a1f5497d48b5b023b73f0e979abde91d419a5.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9fbd413e65ea6c1eded3dcab8a8200be827994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
