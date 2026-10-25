# find?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97cec88913fcf898f606f4f5d943bdef968ae78d2d5fdfcb01d3320121ed8680",
  "kind": "def",
  "lexical_name": "find?",
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
  "slug": "find--e6a23dd90e0d0d6ec8c3dd88",
  "source": {
    "blob": "8a962e9c4b3da96e3aa33a5ae8794b9942a63b58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6a23dd90e0d0d6ec8c3dd881a266f196ab705ad7f355c9f55082ea83edc7c6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97cec88913fcf898f606f4f5d943bdef968ae78d2d5fdfcb01d3320121ed8680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def find? [Inhabited α] (ext : MapDeclarationExtension α) (env : Environment) (declName : Name)
    (asyncMode := ext.toEnvExtension.asyncMode) (level := OLeanLevel.exported) : Option α :=
  match env.getModuleIdxFor? declName with
  | some modIdx =>
    match (ext.getModuleEntries (level := level) env modIdx).binSearch (declName, default) (fun a b => Name.quickLt a.1 b.1) with
    | some e => some e.2
    | none   => none
  | none => (ext.getState (asyncMode := asyncMode) (asyncDecl := declName) env).find? declName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a962e9c4b3da96e3aa33a5ae8794b9942a63b58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
