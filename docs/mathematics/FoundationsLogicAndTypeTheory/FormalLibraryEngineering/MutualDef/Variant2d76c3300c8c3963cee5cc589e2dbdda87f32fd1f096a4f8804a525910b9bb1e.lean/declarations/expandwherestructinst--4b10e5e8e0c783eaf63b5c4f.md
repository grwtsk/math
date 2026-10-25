# expandWhereStructInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dc538d1e40f9453c9001e7aa88a80ca589c3f47c520eb2442834f9a9c605ddf",
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
  "slug": "expandwherestructinst--4b10e5e8e0c783eaf63b5c4f",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b10e5e8e0c783eaf63b5c4f6d0a8f49ebc84d81f7703f091ea11a56bf54c6da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dc538d1e40f9453c9001e7aa88a80ca589c3f47c520eb2442834f9a9c605ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–419.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
