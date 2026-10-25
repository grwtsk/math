# expandWhereStructInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a47c9d7c8c2ea41f5aabf08c07de4c64631ca6daaf28057ec79abad17497e445",
  "kind": "def",
  "lexical_name": "expandWhereStructInst",
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
  "slug": "expandwherestructinst--3aa40cba00b52d6dcb4c71bc",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aa40cba00b52d6dcb4c71bc2749257a6969764b597b006408aefe5deca238b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a47c9d7c8c2ea41f5aabf08c07de4c64631ca6daaf28057ec79abad17497e445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def expandWhereStructInst : Macro := fun whereStx => do
  let `(Parser.Command.whereStructInst| where%$whereTk $[$structInstFields];* $[$whereDecls?:whereDecls]?) := whereStx
    | Macro.throwUnsupported

  let startOfStructureTkInfo : SourceInfo :=
    match whereTk.getPos? with
    | some pos => .synthetic pos ⟨pos.byteIdx + 1⟩ true
    | none => .none
  -- Position the closing `}` at the end of the trailing whitespace of `where $[$_:letDecl];*`.
  -- We need an accurate range of the generated structure instance in the generated `TermInfo`
  -- so that we can determine the expected type in structure field completion.
  let structureStxTailInfo :=
    whereStx[1].getTailInfo?
    <|> whereStx[0].getTailInfo?
  let endOfStructureTkInfo : SourceInfo :=
    match structureStxTailInfo with
    | some (SourceInfo.original _ _ trailing _) =>
      let tokenPos := trailing.stopPos.prev trailing.str
      let tokenEndPos := trailing.stopPos
      .synthetic tokenPos tokenEndPos true
    | _ => .none

  let body ← `(structInst| { $structInstFields,* })
  let body := body.raw.setInfo <|
    match startOfStructureTkInfo.getPos?, endOfStructureTkInfo.getTailPos? with
    | some startPos, some endPos => .synthetic startPos endPos true
    | _, _ => .none
  match whereDecls? with
  | some whereDecls => expandWhereDecls whereDecls body
  | none => return body

/-
Recall that
```
def declValSimple    := leading_parser " :=\n" >> termParser >> Termination.suffix >> optional Term.whereDecls
def declValEqns      := leading_parser Term.matchAltsWhereDecls
def declVal          := declValSimple <|> declValEqns <|> Term.whereDecls
```

The `Termination.suffix` is ignored here, and extracted in `declValToTerminationHint`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
