# addNonRecAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:214829985b12a0a84cd85d13cd91099e85779ee9076e18363331667856d25eee",
  "kind": "def",
  "lexical_name": "addNonRecAux",
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
  "slug": "addnonrecaux--d83d019dc5c01e07d4b5afaa",
  "source": {
    "blob": "8569777490d2b96ac8bda518eb179e7532e512f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d83d019dc5c01e07d4b5afaa645f61e2b448d7db7fe02761e7223bc50d717ae4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:214829985b12a0a84cd85d13cd91099e85779ee9076e18363331667856d25eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addNonRecAux (docCtx : LocalContext × LocalInstances) (preDef : PreDefinition) (compile : Bool)
    (all : List Name) (applyAttrAfterCompilation := true) (cacheProofs := true) (cleanupValue := false)
    (isRecursive := false) : TermElabM Unit :=
  withRef preDef.ref do
    let preDef ← abstractNestedProofs (cache := cacheProofs) preDef
    let preDef ← letToHaveType preDef
    let preDef ← if cleanupValue then letToHaveValue preDef else pure preDef
    let mkDefDecl : TermElabM Declaration :=
      return Declaration.defnDecl {
          name := preDef.declName, levelParams := preDef.levelParams, type := preDef.type, value := preDef.value
          hints := ReducibilityHints.regular (getMaxHeight (← getEnv) preDef.value + 1)
          safety := if preDef.modifiers.isUnsafe then DefinitionSafety.unsafe else DefinitionSafety.safe,
          all }
    let mkThmDecl : TermElabM Declaration := do
      let d := {
        name := preDef.declName, levelParams := preDef.levelParams, type := preDef.type, value := preDef.value, all
      }
      reportTheoremDiag d
      return Declaration.thmDecl d
    let decl ←
      match preDef.kind with
      | DefKind.«theorem» => mkThmDecl
      | DefKind.«opaque»  =>
        pure <| Declaration.opaqueDecl {
          name := preDef.declName, levelParams := preDef.levelParams, type := preDef.type, value := preDef.value
          isUnsafe := preDef.modifiers.isUnsafe, all
        }
      | DefKind.«abbrev»  =>
        pure <| Declaration.defnDecl {
          name := preDef.declName, levelParams := preDef.levelParams, type := preDef.type, value := preDef.value
          hints := ReducibilityHints.«abbrev»
          safety := if preDef.modifiers.isUnsafe then DefinitionSafety.unsafe else DefinitionSafety.safe,
          all }
      | DefKind.def | DefKind.example => mkDefDecl
      | DefKind.«instance» => if ← Meta.isProp preDef.type then mkThmDecl else mkDefDecl
    addDecl decl
    if isRecursive then markAsRecursive preDef.declName
    applyAttributesOf #[preDef] AttributeApplicationTime.afterTypeChecking
    match preDef.modifiers.computeKind with
    -- Tags may have been added by `elabMutualDef` already, but that is not the only caller
    | .meta          => if !isMarkedMeta (← getEnv) preDef.declName then modifyEnv (markMeta · preDef.declName)
    | .noncomputable => if !isNoncomputable (asyncMode := .local) (← getEnv) preDef.declName then modifyEnv (addNoncomputable · preDef.declName)
    | _              => pure ()
    if compile && shouldGenCodeFor preDef then
      compileDecl decl
    if applyAttrAfterCompilation then
      saveEqnAffectingOptions preDef.declName
      enableRealizationsForConst preDef.declName
    addPreDefDocs docCtx preDef
    if applyAttrAfterCompilation then
      applyAttributesOf #[preDef] AttributeApplicationTime.afterCompilation
    addPreDefInfo preDef


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8569777490d2b96ac8bda518eb179e7532e512f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
