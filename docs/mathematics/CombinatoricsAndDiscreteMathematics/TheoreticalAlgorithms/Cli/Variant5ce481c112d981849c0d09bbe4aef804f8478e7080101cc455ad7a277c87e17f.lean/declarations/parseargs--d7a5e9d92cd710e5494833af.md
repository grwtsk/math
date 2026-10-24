# parseArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c26cf2115796b242797f50836fb4c0f13650add8cdda57742871c869a585dae0",
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
  "slug": "parseargs--d7a5e9d92cd710e5494833af",
  "source": {
    "blob": "34ee0222b65774f893bbf4d5787cf82b7705f0c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant5ce481c112d981849c0d09bbe4aef804f8478e7080101cc455ad7a277c87e17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7a5e9d92cd710e5494833af69661099998fdf3764be3156188462135264055d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant5ce481c112d981849c0d09bbe4aef804f8478e7080101cc455ad7a277c87e17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c26cf2115796b242797f50836fb4c0f13650add8cdda57742871c869a585dae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def parseArgs (args : List String) (config : CliConfig := {}) : IO CliConfig := do
  match args with
  | [] => return config
  | "--project-root" :: value :: tail =>
      parseArgs tail { config with projectRoot := ⟨value⟩ }
  | "--module-list" :: value :: tail =>
      parseArgs tail { config with moduleList := ⟨value⟩ }
  | "--output" :: value :: tail =>
      parseArgs tail { config with output := ⟨value⟩ }
  | "--module" :: value :: tail =>
      parseArgs tail { config with modules := config.modules.push (parseModuleName value) }
  | "--help" :: _ =>
      IO.println "usage: surface_lean_source_trace [--project-root PATH] [--module-list FILE] [--module NAME]* [--output FILE]"
      IO.Process.exit 0
  | option :: _ => throw <| IO.userError s!"unknown argument: {option}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant5ce481c112d981849c0d09bbe4aef804f8478e7080101cc455ad7a277c87e17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant5ce481c112d981849c0d09bbe4aef804f8478e7080101cc455ad7a277c87e17f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ee0222b65774f893bbf4d5787cf82b7705f0c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
