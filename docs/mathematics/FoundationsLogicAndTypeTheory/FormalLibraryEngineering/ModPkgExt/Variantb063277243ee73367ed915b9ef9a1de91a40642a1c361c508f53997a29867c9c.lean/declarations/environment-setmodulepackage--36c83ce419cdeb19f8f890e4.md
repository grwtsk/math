# Environment.setModulePackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e01c0c71bf4a73de293e6c1b8fe05c1f13f00bda7673ac505c1afd83cef6eb9",
  "kind": "def",
  "lexical_name": "Environment.setModulePackage",
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
  "slug": "environment-setmodulepackage--36c83ce419cdeb19f8f890e4",
  "source": {
    "blob": "86a2686e37d4a681f100e9c84bc49ee56cf2ca8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36c83ce419cdeb19f8f890e4a4f7eb1d65c7114ef7093748ee10492ce3d5b70e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e01c0c71bf4a73de293e6c1b8fe05c1f13f00bda7673ac505c1afd83cef6eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def Environment.setModulePackage (pkg? : Option PkgId) (env : Environment) : Environment :=
  modPkgExt.setState env pkg?

/--
Returns the standard base of the native symbol for the compiled constant {lean}`declName`.

For many constants, this is the full symbol. However, initializers have an additional prefix
(i.e., {lit}`_init_`) and boxed functions have an additional suffix
(see {name}`mkMangledBoxedName`). Furthermore, some constants do not use this stem at all
(e.g., {lit}`main` and definitions with {lit}`@[export]`).
-/
@[export lean_get_symbol_stem]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86a2686e37d4a681f100e9c84bc49ee56cf2ca8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
