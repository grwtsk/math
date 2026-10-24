# updateParentNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c040ab8d255a39338292ae4d3a3e1ab7214931d6b9e8ec4305435a0451da77fd",
  "kind": "def",
  "lexical_name": "updateParentNames",
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
  "slug": "updateparentnames--b7557d46f97dab8721e759b7",
  "source": {
    "blob": "2b1e2541862ca82038a889c8cd41b3ea2e137489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 872,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7557d46f97dab8721e759b727659cc953aa867a280d170585197b050d4703ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c040ab8d255a39338292ae4d3a3e1ab7214931d6b9e8ec4305435a0451da77fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    partial def updateParentNames (c : Cmd) : Cmd :=
      loop c #[]
    where
      loop (c : Cmd) (parentNames : Array String) : Cmd :=
        let subCmdParentNames := parentNames.push c.meta.name
        let subCmds := c.subCmds.map (loop · subCmdParentNames)
        .init { c.meta with parentNames := parentNames } c.run subCmds c.extension?

    /--
    Creates a new command. Adds a `-h, --help` and a `--version` flag if `«meta»` designates a version.
    Updates the `parentNames` of all subcommands.
    - `«meta»`:     Non-recursive meta-data.
    - `run`:        Handler to run when the command is called and flags/arguments have been successfully processed.
    - `subCmds`:    Subcommands.
    - `extension?`: Extension of the Cli library.
    -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e2541862ca82038a889c8cd41b3ea2e137489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
