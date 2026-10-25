# delabHtmlElement'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8939ba636f8c1fe6968f483db7f85a4e037257bb9a6d8bf5f74b9de325856a1b",
  "kind": "def",
  "lexical_name": "delabHtmlElement'",
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
  "slug": "delabhtmlelement--e688bd73d154686e28f60f92",
  "source": {
    "blob": "076df38623e4a54b7d938614c177a72a5607d29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variantd571bdb223a3fc981b86b7b74e294f3c990256c9a058f5076156f01dbb7349a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e688bd73d154686e28f60f92a3dc1263ea06599462a44ec28fcad81109b6dd6e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variantd571bdb223a3fc981b86b7b74e294f3c990256c9a058f5076156f01dbb7349a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8939ba636f8c1fe6968f483db7f85a4e037257bb9a6d8bf5f74b9de325856a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def delabHtmlElement' : DelabM (TSyntax `proofWidgetsJsxElement) := do
  let_expr Html.element tag _attrs _children := ← getExpr | failure

  let .lit (.strVal s) := tag | failure
  let tag ← withNaryArg 0 <| annotateTermLikeInfo <| mkIdent <| .mkSimple s

  let attrs ← withNaryArg 1 <|
    try
      delabArrayLiteral <| withAnnotateTermLikeInfo do
        let_expr Prod.mk _ _ a _ := ← getExpr | failure
        let .lit (.strVal a) := a | failure
        let attr ← withNaryArg 2 <| annotateTermLikeInfo <| mkIdent <| .mkSimple a
        withNaryArg 3 do
          let v ← getExpr
          -- If the attribute's value is a string literal,
          -- use `attr="val"` syntax.
          -- TODO: also do this for `.ofComponent`.
          -- WN: not sure if matching a string literal is possible with `let_expr`.
          match v with
          | .app (.const ``Json.str _) (.lit (.strVal v)) =>
            -- TODO: this annotation doesn't seem to work in infoview
            let val ← annotateTermLikeInfo <| Syntax.mkStrLit v
            `(proofWidgetsJsxAttr| $attr:ident=$val:str)
          | _ =>
            let val ← delab
            `(proofWidgetsJsxAttr| $attr:ident={ $val })
    catch _ =>
      let vs ← delab
      return #[← `(proofWidgetsJsxAttr| {... $vs })]

  let children ← withAppArg delabJsxChildren
  if children.isEmpty then
    `(proofWidgetsJsxElement| < $tag $[$attrs]* />)
  else
    `(proofWidgetsJsxElement| < $tag $[$attrs]* > $[$children]* </ $tag >)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variantd571bdb223a3fc981b86b7b74e294f3c990256c9a058f5076156f01dbb7349a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variantd571bdb223a3fc981b86b7b74e294f3c990256c9a058f5076156f01dbb7349a3.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `076df38623e4a54b7d938614c177a72a5607d29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
