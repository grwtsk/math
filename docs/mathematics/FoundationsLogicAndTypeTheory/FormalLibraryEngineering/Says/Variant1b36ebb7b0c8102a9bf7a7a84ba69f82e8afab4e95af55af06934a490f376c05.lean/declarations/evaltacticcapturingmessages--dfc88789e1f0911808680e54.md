# evalTacticCapturingMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23d296a708472fe6a531cad4b76950de5e0133bf889c96a5486be5cb2877d0e3",
  "kind": "def",
  "lexical_name": "evalTacticCapturingMessages",
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
  "slug": "evaltacticcapturingmessages--dfc88789e1f0911808680e54",
  "source": {
    "blob": "25c2997fa05cd76fd65a3b93c8d2dc592aa3876d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc88789e1f0911808680e54a8adb11760b9d3075c884de6a9c6396dbf92000f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23d296a708472fe6a531cad4b76950de5e0133bf889c96a5486be5cb2877d0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalTacticCapturingMessages (tac : TSyntax `tactic) (only : Message → Bool := fun _ => true) :
    TacticM (List Message) := do
  let mut msgs ← modifyGetThe Core.State fun st => (st.messages, { st with messages := {} })
  try
    evalTactic tac
    let (capture, leave) := (← getThe Core.State).messages.toList.partition only
    msgs := leave.foldl (·.add) msgs
    return capture
  catch e =>
    msgs := msgs ++ (← getThe Core.State).messages
    throw e
  finally
    modifyThe Core.State fun st => { st with messages := msgs }

/--
Run `evalTactic`, capturing any new info messages.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c2997fa05cd76fd65a3b93c8d2dc592aa3876d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
