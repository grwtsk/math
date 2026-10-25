# elabGuardMsgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae775833d6c9abc78a2ad9c3d6d72e0646803f1dd394751d3c2bed56857fed0c",
  "kind": "def",
  "lexical_name": "elabGuardMsgs",
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
  "slug": "elabguardmsgs--6fadeca4b267675d1e4c86ca",
  "source": {
    "blob": "d354ed3bbd4686ff922ab9a5da574a61f3fc0067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fadeca4b267675d1e4c86ca0c0d7e7fce0040722f81a656ac618b5e40a9fce1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae775833d6c9abc78a2ad9c3d6d72e0646803f1dd394751d3c2bed56857fed0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Lean.guardMsgsCmd] def elabGuardMsgs : CommandElab
  | `(command| $[$dc?:docComment]? #guard_msgs%$tk $(spec?)? in $cmd) => do
    let expected : String := (← dc?.mapM (getDocStringText ·)).getD ""
        |>.trimAscii |>.copy |> removeTrailingWhitespaceMarker
    let { whitespace, ordering, filterFn, reportPositions, substring } ← parseGuardMsgsSpec spec?
    let msgs ← runAndCollectMessages cmd
    let mut toCheck : MessageLog := MessageLog.empty
    let mut toPassthrough : MessageLog := MessageLog.empty
    for msg in msgs.toList do
      if msg.isSilent then
        continue
      match filterFn msg with
      | .check       => toCheck := toCheck.add msg
      | .drop        => pure ()
      | .pass => toPassthrough := toPassthrough.add msg
    let map ← getFileMap
    let reportPos? :=
      if reportPositions then
        tk.getPos?.map (map.toPosition · |>.line)
      else none
    let strings ← toCheck.toList.mapM (messageToString · reportPos?)
    let strings := ordering.apply strings
    let res := "---\n".intercalate strings |>.trimAscii |>.copy
    let passed := if substring then
      -- Substring mode: check that expected appears within res (after whitespace normalization)
      (whitespace.apply res).contains (whitespace.apply expected)
    else
      -- Exact mode: check equality (after whitespace normalization)
      whitespace.apply expected == whitespace.apply res
    if passed then
      -- Passed. Only put toPassthrough messages back on the message log
      modify fun st => { st with messages := toPassthrough }
    else
      -- Failed. Put all the messages back on the message log and add an error
      modify fun st => { st with messages := msgs }
      let feedback :=
        if guard_msgs.diff.get (← getOptions) then
          let diff := Diff.diff (expected.split '\n').toStringArray (res.split '\n').toStringArray
          Diff.linesToString diff
        else res
      logErrorAt tk m!"❌️ Docstring on `#guard_msgs` does not match generated message:\n\n{feedback}"
      pushInfoLeaf (.ofCustomInfo { stx := ← getRef, value := Dynamic.mk (GuardMsgFailure.mk res) })
  | _ => throwUnsupportedSyntax

open CodeAction Server RequestM in
/-- A code action which will update the doc comment on a `#guard_msgs` invocation. -/
@[builtin_command_code_action guardMsgsCmd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d354ed3bbd4686ff922ab9a5da574a61f3fc0067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
