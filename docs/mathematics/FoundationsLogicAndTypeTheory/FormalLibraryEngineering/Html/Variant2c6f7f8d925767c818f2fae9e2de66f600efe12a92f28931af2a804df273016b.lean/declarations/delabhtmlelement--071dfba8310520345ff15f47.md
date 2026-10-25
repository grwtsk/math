# delabHtmlElement'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3e591f55c30450ce0eeb166681b5e1d777ff56b89d9e69aea9d4842d3e1eed",
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
  "slug": "delabhtmlelement--071dfba8310520345ff15f47",
  "source": {
    "blob": "9b8a3e5eb85df601a7ddc6deba5c70d411014ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:071dfba8310520345ff15f4783c85dc3b0ab044a590e140cf246a816b7d75dc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3e591f55c30450ce0eeb166681b5e1d777ff56b89d9e69aea9d4842d3e1eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–230.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b8a3e5eb85df601a7ddc6deba5c70d411014ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
