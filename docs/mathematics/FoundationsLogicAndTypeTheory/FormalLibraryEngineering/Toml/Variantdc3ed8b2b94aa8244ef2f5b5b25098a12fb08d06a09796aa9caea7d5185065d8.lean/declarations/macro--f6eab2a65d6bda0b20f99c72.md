# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:162cb061f27b762749ba95539bda5afda6d172357c29e8fc2a0cecde3a7d9ea3",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--f6eab2a65d6bda0b20f99c72",
  "source": {
    "blob": "e7c71c1266d3671365b3125ef307aba06b7e8a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantdc3ed8b2b94aa8244ef2f5b5b25098a12fb08d06a09796aa9caea7d5185065d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6eab2a65d6bda0b20f99c72aaf53601a48651825e12f07268acb56aaab0363f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantdc3ed8b2b94aa8244ef2f5b5b25098a12fb08d06a09796aa9caea7d5185065d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:162cb061f27b762749ba95539bda5afda6d172357c29e8fc2a0cecde3a7d9ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro "gen_toml_encoders%" : command => do
  let cmds := #[]
  -- Targets
  let cmds ← genToToml cmds ``LeanConfig
  let cmds ← genToToml cmds ``LeanLibConfig
    (exclude := #[`nativeFacets])
  let cmds ← genToToml cmds ``LeanExeConfig
    (exclude := #[`nativeFacets])
  let cmds ← genToToml cmds ``InputFileConfig
  let cmds ← genToToml cmds ``InputDirConfig
  -- Package
  let cmds ← genToToml cmds ``WorkspaceConfig
  let cmds ← genToToml cmds ``PackageConfig
  return ⟨mkNullNode cmds⟩

gen_toml_encoders%

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantdc3ed8b2b94aa8244ef2f5b5b25098a12fb08d06a09796aa9caea7d5185065d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantdc3ed8b2b94aa8244ef2f5b5b25098a12fb08d06a09796aa9caea7d5185065d8.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7c71c1266d3671365b3125ef307aba06b7e8a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
