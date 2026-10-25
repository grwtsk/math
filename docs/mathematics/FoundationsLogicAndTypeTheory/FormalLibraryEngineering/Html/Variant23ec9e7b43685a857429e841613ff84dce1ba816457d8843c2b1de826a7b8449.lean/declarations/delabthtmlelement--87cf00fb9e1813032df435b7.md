# delabTHtmlElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c507627d8ad211c303a522241da06a8c1ac78c584e662a6fc64670d0cc17366a",
  "kind": "def",
  "lexical_name": "delabTHtmlElement",
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
  "slug": "delabthtmlelement--87cf00fb9e1813032df435b7",
  "source": {
    "blob": "c832b8ab4b2ddbf1bd5a7b02bb9846db88981249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87cf00fb9e1813032df435b761eefb886aa5aa5cb15c178f88a2d740b61cf0fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c507627d8ad211c303a522241da06a8c1ac78c584e662a6fc64670d0cc17366a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabTHtmlElement : Delab := do
  let e ← getExpr
  -- `THtml.element tag attrs children`
  let #[tag, _, _] := e.getAppArgs | failure

  let .lit (.strVal s) := tag | failure
  let tag := mkIdent s

  let attrs ← withAppFn (withAppArg delab)
  let `(term| #[ $[($as:str, $vs)],* ] ) := attrs | failure
  let attrs : Array (TSyntax `jsxAttr) ← as.zip vs |>.mapM fun (a, v) => do
    let attr := mkIdent a.getString
    `(jsxAttr| $attr:ident={ $v })

  let children ← withAppArg delab
  let `(term| #[ $cs,* ]) := children | failure
  let cs : Array (TSyntax `jsxChild) ← (@id (TSyntaxArray `term) cs).mapM fun c => do
    if let some s := c.raw.isStrLit? then
      let txt := mkNode `jsxText #[mkAtom s]
      `(jsxChild| $txt:jsxText)
    -- hack.
    else if c.raw[0].getKind == ``ProofWidgets.Jsx.«jsxElement<__>_</_>» then
      `(jsxChild| $(⟨c.raw⟩):jsxElement)
    else
      `(jsxChild| { $c })
  `(term| < $tag $[$attrs]* > $[$cs]* </ $tag >)

end Jsx
end ProofWidgets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c832b8ab4b2ddbf1bd5a7b02bb9846db88981249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
