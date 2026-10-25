# singleGoalAtInsertPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a21fe17c9a85b33020cf589ddb0175584f77287a609109a91153c9659ff6b30",
  "kind": "def",
  "lexical_name": "singleGoalAtInsertPos",
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
  "slug": "singlegoalatinsertpos--a8a0707c9a90155204ae0bc1",
  "source": {
    "blob": "b0d73bf2c2b38247568abdd58ea6fba9dbf2595c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a0707c9a90155204ae0bc1ac8613c179e61746c26219696930afe6b7c7e04c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a21fe17c9a85b33020cf589ddb0175584f77287a609109a91153c9659ff6b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def singleGoalAtInsertPos (tree : InfoTree) (fileMap : FileMap) (c : Candidate) : Bool :=
  let hoverPos := match c.kind with
    | .unsolvedGoal _ insertPos => insertPos
    | .sorryTactic              => c.ref.getPos?.getD 0
  match tree.goalsAt? fileMap hoverPos with
  | [r] =>
    let targetGoals := match c.kind with
      | .unsolvedGoal tacticSeq _ =>
        if tacticSeq.getPos?.isSome then r.tacticInfo.goalsAfter
        else r.tacticInfo.goalsBefore
      | .sorryTactic => r.tacticInfo.goalsBefore
    targetGoals.length == 1
  | _ => false

/--
The auto-`try?` post-elaboration hook.

Plugged into the linter machinery (`addLinter`) because that's a convenient post-command-
elab entry point with infotree access. The feature itself is *not* a linter: it does not
bail on `messages.hasErrors`, since the triggers we care about (empty `by`, unsolved
goals, `sorry`) all produce errors or warnings of their own.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d73bf2c2b38247568abdd58ea6fba9dbf2595c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
