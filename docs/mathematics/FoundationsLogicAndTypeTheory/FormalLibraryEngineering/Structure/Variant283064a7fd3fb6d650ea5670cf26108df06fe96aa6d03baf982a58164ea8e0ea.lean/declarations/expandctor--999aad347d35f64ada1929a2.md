# expandCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41dcb8c877779621aee50b86525617f57c2eaf31e30215ac7bb8a3d73128bf52",
  "kind": "def",
  "lexical_name": "expandCtor",
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
  "slug": "expandctor--999aad347d35f64ada1929a2",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 235,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:999aad347d35f64ada1929a2b80b3426f0cdf7b50242912b1a8cbac4f549aa88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41dcb8c877779621aee50b86525617f57c2eaf31e30215ac7bb8a3d73128bf52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def expandCtor (structStx : Syntax) (structModifiers : Modifiers) (structDeclName : Name)
    (forcePrivate : Bool) : TermElabM CtorView := do
  let useDefault := do
    let visibility := if forcePrivate then .private else .regular
    let modifiers := { (default : Modifiers) with visibility }
    let declName := structDeclName ++ defaultCtorName
    let declName ← applyVisibility modifiers declName
    let ref := structStx[1].mkSynthetic
    addDeclarationRangesFromSyntax declName ref
    if structModifiers.isMeta then
      modifyEnv (markMeta · declName)
    pure { ref, declId := ref, modifiers, declName }
  if structStx[4].isNone then
    useDefault
  else
    let optCtor := structStx[4][1]
    if optCtor.isNone then
      useDefault
    else
      let ctor := optCtor[0]
      withRef ctor do
      let modifiersStx := ctor[0]
      let ctorModifiers ← elabModifiers modifiersStx
      checkValidCtorModifier ctorModifiers
      if ctorModifiers.isPrivate && structModifiers.isPrivate then
        let hint ← mkDeletePrivateFieldHint modifiersStx ctor "constructor"
        throwError m!"Constructor cannot be marked `private` because it is already in a `private` structure" ++ hint
      if ctorModifiers.isProtected && structModifiers.isPrivate then
        throwError "Constructor cannot be `protected` because this structure is `private`"
      if !ctorModifiers.isPrivate && forcePrivate then
        let hint ← do
          let .original .. := ctor.getHeadInfo | pure .nil
          let spanSuggestion? :=
            if modifiersStx[2].getRange?.isSome then
              some (modifiersStx[2], "private")
            -- Place `private` after the doc comment, or else before other modifiers, or else before the identifier
            else if let some pos := modifiersStx[0].getTrailingTailPos? <|> modifiersStx.getPos? <|> ctor[1].getPos? then
              some (Syntax.ofRange ⟨pos, pos⟩, "private ")
            else none
          let some (span?, suggestion) := spanSuggestion? | pure .nil
          let previewSpan? := dropLeadingDeclModifiersDocstring ctor
          MessageData.hint m!"Mark constructor as `private`" #[{
            suggestion, span?, previewSpan?, toCodeActionTitle? := some fun _ => "Mark constructor private"
          }]
        throwError m!"Constructor must be `private` because one or more of this structure's fields are `private`" ++ hint
      let name := ctor[1].getId
      let declName := structDeclName ++ name
      let declName ← applyVisibility ctorModifiers declName
      -- `binders` is type parameter binder overrides; this will be validated when the constructor is created in `Structure.mkCtor`.
      let binders := ctor[2]
      addDeclarationRangesFromSyntax declName ctor[1]
      if structModifiers.isMeta then
        modifyEnv (markMeta · declName)
      pure { ref := ctor[1], declId := ctor[1], modifiers := ctorModifiers, declName, binders }

/--
```
def structParent := leading_parser optional (atomic (ident >> " : ")) >> termParser
def «extends»    := leading_parser " extends " >> sepBy1 structParent ", "
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
