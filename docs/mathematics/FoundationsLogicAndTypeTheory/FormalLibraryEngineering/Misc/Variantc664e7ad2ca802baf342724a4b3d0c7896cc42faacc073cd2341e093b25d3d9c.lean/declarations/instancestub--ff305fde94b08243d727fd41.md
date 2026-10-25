# instanceStub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44489864ef65aaa5edfa61c06c179698bed3f7778011257f4a607f5172836f95",
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
  "slug": "instancestub--ff305fde94b08243d727fd41",
  "source": {
    "blob": "62050408732ce4dbc7901666dd94ccca99bb38cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff305fde94b08243d727fd415b4799114783d9f81e0b9767c75d7c6168bf2757",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44489864ef65aaa5edfa61c06c179698bed3f7778011257f4a607f5172836f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[hole_code_action] partial def instanceStub : HoleCodeAction := fun _ snap ctx info => do
  let some ty := info.expectedType? | return #[]
  let .const name _ := (← info.runMetaM ctx (whnf ty)).getAppFn | return #[]
  unless isStructure snap.env name do return #[]
  let doc ← readDoc
  let fields := collectFields snap.env name #[] []
  let only := !fields.any fun (_, auto) => auto
  let mkAutofix minimal :=
    let eager := {
      title := s!"\
        Generate a {if only then "" else if minimal then "(minimal) " else "(maximal) "}\
        skeleton for the structure under construction."
      kind? := "quickfix"
      isPreferred? := minimal
    }
    let lazy? := some do
      let useWhere := do
        let _ :: (stx, _) :: _ ← findStack? snap.stx info.stx | none
        guard (stx.getKind == ``Parser.Command.declValSimple)
        stx[0].getPos?
      let holePos := useWhere.getD info.stx.getPos?.get!
      let (indent, isStart) := findIndentAndIsStart doc.meta.text.source holePos
      let indent := "\n".pushn ' ' indent
      let mut str := if useWhere.isSome then "where" else "{"
      let mut first := useWhere.isNone && isStart
      for (field, auto) in fields do
        if minimal && auto then continue
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
    { eager, lazy? }
  pure <| if only then #[mkAutofix true] else #[mkAutofix true, mkAutofix false]
where
  /-- Returns true if this field is an autoParam or optParam, or if it is given an optional value
  in a child struct. -/
  isAutofillable (env : Environment) (fieldInfo : StructureFieldInfo) (stack : List Name) : Bool :=
    fieldInfo.autoParam?.isSome || env.contains (mkDefaultFnOfProjFn fieldInfo.projFn)
      || stack.any fun struct => env.contains (mkDefaultFnOfProjFn (struct ++ fieldInfo.fieldName))

  /-- Returns the fields of a structure, unfolding parent structures. -/
  collectFields (env : Environment) (structName : Name)
      (fields : Array (Name × Bool)) (stack : List Name) : Array (Name × Bool) :=
    (getStructureFields env structName).foldl (init := fields) fun fields field =>
      if let some fieldInfo := getFieldInfo? env structName field then
        if let some substructName := fieldInfo.subobject? then
          collectFields env substructName fields (structName :: stack)
        else
          fields.push (field, isAutofillable env fieldInfo stack)
      else fields

/-- Returns the explicit arguments given a type. The second argument of this
    function is an accumulator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62050408732ce4dbc7901666dd94ccca99bb38cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
