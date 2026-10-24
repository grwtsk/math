# toFullCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:248d7396db58ebeadfa144015b6fae6925a31270df7892332110e2c89ee009b6",
  "kind": "def",
  "lexical_name": "toFullCmd",
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
  "slug": "tofullcmd--a1af37bdd00b5215a60cd587",
  "source": {
    "blob": "2b1e2541862ca82038a889c8cd41b3ea2e137489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 968,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1af37bdd00b5215a60cd58719be27ba0af89836ed74945ea80c00fb9a9ca5dd",
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

Occurrence: `declaration:248d7396db58ebeadfa144015b6fae6925a31270df7892332110e2c89ee009b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 968–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    partial def toFullCmd (c : ExtendableCmd) (original : Cli.Cmd) : Cli.Cmd := Id.run do
      let extensions := collectExtensions original
      let mut extensionIndex : Std.TreeMap String (Option Extension) := ∅
      for ⟨fullName, extension?⟩ in extensions do
        extensionIndex := extensionIndex.insert fullName extension?
      let rec loop (c : ExtendableCmd) : Cli.Cmd :=
        let extension? := do extensionIndex.get? (← c.originalFullName?) |> Option.join
        let subCmds := c.subCmds.map loop
        .init c.meta c.run subCmds extension?
      loop c |>.updateParentNames |> prependOriginalParentNames
    where
      collectExtensions (currentCmd : Cli.Cmd) : Array (String × Option Extension) := Id.run do
        let mut extensions := #[(currentCmd.meta.fullName, currentCmd.extension?)]
        for subCmd in currentCmd.subCmds do
          extensions := extensions ++ collectExtensions subCmd
        return extensions
      prependOriginalParentNames (currentCmd : Cli.Cmd) : Cli.Cmd := Id.run do
        let parentNames := original.meta.parentNames ++ currentCmd.meta.parentNames
        let «meta» := { currentCmd.meta with parentNames := parentNames }
        let subCmds := currentCmd.subCmds.map prependOriginalParentNames
        currentCmd.update («meta» := «meta») (subCmds := subCmds)

    /-- Converts `c` back into `Cli.Cmd` while retaining none of the extensions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante325b55b12eca6a94bd44d591c10f019b7ba130c33d0c3c6680ba392c26654d7.lean#L968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e2541862ca82038a889c8cd41b3ea2e137489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
