# lakeCli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c615cea50e34dc469c3eb604218bcc17cb98e1dc1171ca2dea193acad4bfb999",
  "kind": "def",
  "lexical_name": "lakeCli",
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
  "slug": "lakecli--95fdbbada39e7d6fec08b6eb",
  "source": {
    "blob": "b7370c986bdc2e8c39464a90b5767a960e98ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1302,
    "line": 1265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95fdbbada39e7d6fec08b6eb02c45ec346397d403bd8528afdd6681698025f43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c615cea50e34dc469c3eb604218bcc17cb98e1dc1171ca2dea193acad4bfb999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1265–1302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lakeCli : (cmd : String) → CliM PUnit
| "new"                 => lake.new
| "init"                => lake.init
| "build"               => lake.build
| "check-build"         => lake.checkBuild
| "query"               => lake.query
| "query-kind"          => lake.queryKind
| "update" | "upgrade"  => lake.update
| "resolve-deps"        => lake.resolveDeps
| "pack"                => lake.pack
| "unpack"              => lake.unpack
| "upload"              => lake.upload
| "cache"               => lake.cache
| "setup-file"          => lake.setupFile
| "test"                => lake.test
| "check-test"          => lake.checkTest
| "lint"                => lake.lint
| "check-lint"          => lake.checkLint
| "clean"               => lake.clean
| "shake"               => lake.shake
| "script"              => lake.script
| "scripts"             => lake.script.list
| "run"                 => lake.script.run
| "serve"               => lake.serve
| "env"                 => lake.env
| "exe" | "exec"        => lake.exe
| "lean"                => lake.lean
| "translate-config"    => lake.translateConfig
| "reservoir-config"    => lake.reservoirConfig
| "version-tags"        => lake.versionTags
| "self-check"          => lake.selfCheck
| "help"                => lake.help
| cmd                   =>
  if cmd.startsWith "+" then
    throw <| CliError.unexpectedPlus
  else
    throw <| CliError.unknownCommand cmd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean#L1265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7370c986bdc2e8c39464a90b5767a960e98ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
