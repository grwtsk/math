# mkBodyForStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82d039b8be02a09d108f8bdbe9c9742bdb6d97e63d4d3eb17fe44b654a6fe616",
  "kind": "def",
  "lexical_name": "mkBodyForStruct",
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
  "slug": "mkbodyforstruct--434add1e23ab0fe1964ee552",
  "source": {
    "blob": "bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:434add1e23ab0fe1964ee552d96bf021ee421bc474557db7e51f887349a2c0bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82d039b8be02a09d108f8bdbe9c9742bdb6d97e63d4d3eb17fe44b654a6fe616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBodyForStruct (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  let ctorVal ← getConstInfoCtor indVal.ctors.head!
  let fieldNames := getStructureFields (← getEnv) indVal.name
  let numParams  := indVal.numParams
  let target     := mkIdent header.targetNames[0]!
  forallTelescopeReducing ctorVal.type fun xs _ => do
    let mut fields ← `(Format.nil)
    if xs.size != numParams + fieldNames.size then
      throwError "'deriving Repr' failed, unexpected number of fields in structure"
    for h : i in *...fieldNames.size do
      let fieldName := fieldNames[i]
      let fieldNameLit := Syntax.mkStrLit (toString fieldName)
      let x := xs[numParams + i]!
      if i != 0 then
        fields ← `($fields ++ "," ++ Format.line)
      if (← isType x <||> isProof x) then
        fields ← `($fields ++ $fieldNameLit ++ " := " ++ "_")
      else
        let indent := Syntax.mkNumLit <| toString ((toString fieldName |>.chars.length) + " := ".lengthAssumingAscii)
        fields ← `($fields ++ $fieldNameLit ++ " := " ++ (Format.group (Format.nest $indent (repr ($target.$(mkIdent fieldName):ident)))))
    `(Format.bracket "{ " $fields:term " }")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
