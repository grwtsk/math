# elabCheckAssertions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:766880ae6230400d80cacedd713744cbb11511d1606dbd7b9efcc063d4a2d2ec",
  "kind": "def",
  "lexical_name": "elabCheckAssertions",
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
  "slug": "elabcheckassertions--7975b65b63b68fb2eb788c08",
  "source": {
    "blob": "12564b0e556d6598ee1cbc1d639336686b020920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7975b65b63b68fb2eb788c081816fabc40e6032705018e33a8a2009854543214",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:766880ae6230400d80cacedd713744cbb11511d1606dbd7b9efcc063d4a2d2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCheckAssertions : CommandElab := fun stx => do
  let tk := stx[1]
  let env ← getEnv
  let entries := getSortedAssertExists env
  if entries.isEmpty && tk.isNone then logInfo "No assertions made." else
  let allMods := env.allImportedModuleNames
  let mut msgs : Array MessageData := #[m!""]
  let mut outcome := m!""
  let mut allExist? := true
  for d in entries do
    let type := if d.isDecl then "declaration" else "module"
    let cond := if d.isDecl then env.contains d.givenName else allMods.contains d.givenName
    outcome := if cond then m!"{checkEmoji}" else m!"{crossEmoji}"
    allExist? := allExist? && cond
    if tk.isNone || !cond then
      msgs := msgs.push m!"{outcome} '{d.givenName}' ({type}) asserted in '{d.modName}'."
  msgs := msgs.push m!"---"
    |>.push m!"{checkEmoji} means the declaration or import exists."
    |>.push m!"{crossEmoji} means the declaration or import does not exist."
  let msg := MessageData.joinSep msgs.toList "\n"
  if allExist? && tk.isNone then
    logInfo msg
  if !allExist? then
    logWarning msg

end Lean.Elab.Command

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12564b0e556d6598ee1cbc1d639336686b020920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
