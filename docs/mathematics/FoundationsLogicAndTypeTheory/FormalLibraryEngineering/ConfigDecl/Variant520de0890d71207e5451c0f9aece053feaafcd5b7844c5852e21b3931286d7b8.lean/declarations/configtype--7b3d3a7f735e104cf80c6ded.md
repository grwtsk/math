# ConfigType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f364bbf57f3c5272b686f56c9e23eac1147c14a0b9288107efdb4eb82a1c05f2",
  "kind": "abbrev",
  "lexical_name": "ConfigType",
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
  "slug": "configtype--7b3d3a7f735e104cf80c6ded",
  "source": {
    "blob": "dae9df410bc30da419aee16c92512a1e8fe0d02d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigDecl/Variant520de0890d71207e5451c0f9aece053feaafcd5b7844c5852e21b3931286d7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b3d3a7f735e104cf80c6ded028f9957d9b9a03759d0649e5d1fb0e2ba9cd6e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigDecl/Variant520de0890d71207e5451c0f9aece053feaafcd5b7844c5852e21b3931286d7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f364bbf57f3c5272b686f56c9e23eac1147c14a0b9288107efdb4eb82a1c05f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev ConfigType (kind : Name) (pkgName name : Name) : Type :=
  match kind with
  | LeanLib.configKind => LeanLibConfig name
  | LeanExe.configKind => LeanExeConfig name
  | ExternLib.configKind => ExternLibConfig pkgName name
  | .anonymous => OpaqueTargetConfig pkgName name
  | InputFile.configKind => InputFileConfig name
  | InputDir.configKind => InputDirConfig name
  | _ => Empty

/-- Forward declared `ConfigTarget` to work around recursion issues (e.g., with `Package`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigDecl/Variant520de0890d71207e5451c0f9aece053feaafcd5b7844c5852e21b3931286d7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigDecl/Variant520de0890d71207e5451c0f9aece053feaafcd5b7844c5852e21b3931286d7b8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae9df410bc30da419aee16c92512a1e8fe0d02d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
