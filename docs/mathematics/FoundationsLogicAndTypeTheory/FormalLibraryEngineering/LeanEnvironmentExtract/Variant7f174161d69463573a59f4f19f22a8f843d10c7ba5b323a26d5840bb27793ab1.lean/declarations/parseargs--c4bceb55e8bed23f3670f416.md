# parseArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10ab74b0dc894d520d332520be57751a3bc895fc14fd2b848efc1c0ed03c2378",
  "kind": "def",
  "lexical_name": "parseArgs",
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
  "slug": "parseargs--c4bceb55e8bed23f3670f416",
  "source": {
    "blob": "86869a4613b4c00c1e1a7057adc4a6ec4e586e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant7f174161d69463573a59f4f19f22a8f843d10c7ba5b323a26d5840bb27793ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4bceb55e8bed23f3670f4163fe92858bfa317ccb2f378ac1a0ff782a9a5f3d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant7f174161d69463573a59f4f19f22a8f843d10c7ba5b323a26d5840bb27793ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10ab74b0dc894d520d332520be57751a3bc895fc14fd2b848efc1c0ed03c2378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def parseArgs (args : List String) (config : CliConfig := {}) : IO CliConfig := do
  match args with
  | [] => return config
  | "--module" :: value :: tail =>
      parseArgs tail { config with modules := config.modules.push (parseModuleName value) }
  | "--source-root" :: value :: tail =>
      parseArgs tail { config with sourceRoot := some ⟨value⟩ }
  | "--diagnostic" :: tail =>
      parseArgs tail { config with failOnModuleError := false }
  | "--help" :: _ =>
      IO.println "usage: surface_lean_env_extract [--module Module.Name]* [--source-root PATH] [--diagnostic]"
      IO.Process.exit 0
  | unknown :: _ =>
      throw <| IO.userError s!"unknown argument: {unknown}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant7f174161d69463573a59f4f19f22a8f843d10c7ba5b323a26d5840bb27793ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant7f174161d69463573a59f4f19f22a8f843d10c7ba5b323a26d5840bb27793ab1.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86869a4613b4c00c1e1a7057adc4a6ec4e586e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
