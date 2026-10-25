# instanceStub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:523358fcb41559605c7edf0b0cc781461cab47d3f0fc458e317451c224b2c10e",
  "kind": "def",
  "lexical_name": "instanceStub",
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
  "slug": "instancestub--d8d7193d085c2e5cc73fa155",
  "source": {
    "blob": "2b480dd006405f80640df5ba74b92bf07fb2758a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8d7193d085c2e5cc73fa155a28d9bd1d31a5cb7965612c492356ff7961cc1ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:523358fcb41559605c7edf0b0cc781461cab47d3f0fc458e317451c224b2c10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[hole_code_action] partial def instanceStub : HoleCodeAction := fun params snap ctx info => do
  let some ty := info.expectedType? | return #[]
  let .const name _ := (← info.runMetaM ctx (whnf ty)).getAppFn | return #[]
  unless isStructure snap.env name do return #[]
  let eager := {
    title := "Generate a skeleton for the structure under construction."
    kind? := "quickfix"
    isPreferred? := true
  }
  let doc ← readDoc
  pure #[{
    eager
    lazy? := some do
      let useWhere := do
        let _ :: (stx, _) :: _ ← findStack? snap.stx info.stx | none
        guard (stx.getKind == ``Parser.Command.declValSimple)
        stx[0].getPos?
      let holePos := useWhere.getD info.stx.getPos?.get!
      let (indent, isStart) := findIndentAndIsStart doc.meta.text.source holePos
      let indent := "\n".pushn ' ' indent
      let mut str := if useWhere.isSome then "where" else "{"
      let mut first := useWhere.isNone && isStart
      for field in collectFields snap.env name #[] do
        if first then
          str := str ++ " "
          first := false
        else
          str := str ++ indent ++ "  "
        let field := toString field
        str := str ++ s!"{field} := {holeKindToHoleString info.elaborator field}"
      if useWhere.isNone then
        if isStart then
          str := str ++ " }"
        else
          str := str ++ indent ++ "}"
      pure { eager with
        edit? := some <| .ofTextEdit doc.versionedIdentifier {
          range := doc.meta.text.utf8RangeToLspRange ⟨holePos, info.stx.getTailPos?.get!⟩
          newText := str
        }
      }
  }]
where
  /-- Returns the fields of a structure, unfolding parent structures. -/
  collectFields (env : Environment) (structName : Name) (fields : Array Name) : Array Name :=
    (getStructureFields env structName).foldl (init := fields) fun fields field =>
      match isSubobjectField? env structName field with
      | some substructName => collectFields env substructName fields
      | none => fields.push field

/-- Returns the explicit arguments given a type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b480dd006405f80640df5ba74b92bf07fb2758a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
