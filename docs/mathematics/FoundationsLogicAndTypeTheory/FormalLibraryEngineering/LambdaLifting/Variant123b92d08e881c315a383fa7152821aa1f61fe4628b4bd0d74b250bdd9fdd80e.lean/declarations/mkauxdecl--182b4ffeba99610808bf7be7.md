# mkAuxDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7869fba013ceddaacb9554b58395d69b7b14784c2464c018d4814b458f33fd5",
  "kind": "def",
  "lexical_name": "mkAuxDecl",
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
  "slug": "mkauxdecl--182b4ffeba99610808bf7be7",
  "source": {
    "blob": "f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:182b4ffeba99610808bf7be779ef59718d3b13632a6be5dc856500f089e700bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7869fba013ceddaacb9554b58395d69b7b14784c2464c018d4814b458f33fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxDecl (closure : Array (Param .pure)) (decl : FunDecl .pure) : LiftM (LetDecl .pure) := do
  let nameNew ← mkAuxDeclName
  let inlineAttr? ← if (← read).inheritInlineAttrs then pure (← read).mainDecl.inlineAttr? else pure none
  let auxDecl ← go nameNew (← read).mainDecl.safe inlineAttr? |>.run' {}
  let us := auxDecl.levelParams.map mkLevelParam
  let auxDeclName ← match (← cacheAuxDecl auxDecl) with
  | .new =>
    auxDecl.save
    modify fun { decls, .. } => { decls := decls.push auxDecl }
    pure auxDecl.name
  | .alreadyCached declName =>
    auxDecl.erase
    pure declName
  let value := .const auxDeclName us (closure.map (.fvar ·.fvarId))
  replaceFunDecl decl value
where
  go (nameNew : Name) (safe : Bool) (inlineAttr? : Option InlineAttributeKind) : InternalizeM .pure (Decl .pure):= do
    let params := (← closure.mapM internalizeParam) ++ (← decl.params.mapM internalizeParam)
    let code ← internalizeCode decl.value
    let type ← code.inferType
    let type ← mkForallParams params type
    let value := .code code
    let decl := { name := nameNew, levelParams := [], params, type, value, safe, inlineAttr?, recursive := false : Decl .pure }
    return decl.setLevelParams

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
