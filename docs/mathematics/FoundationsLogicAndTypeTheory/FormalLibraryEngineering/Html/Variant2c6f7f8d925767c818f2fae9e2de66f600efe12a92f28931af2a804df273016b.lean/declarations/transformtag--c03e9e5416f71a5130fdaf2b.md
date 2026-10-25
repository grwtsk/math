# transformTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff01bcb4a3ce3c853898edeeea49c70c2013bff1a21e5ffb0f347003c0c1c456",
  "kind": "def",
  "lexical_name": "transformTag",
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
  "slug": "transformtag--c03e9e5416f71a5130fdaf2b",
  "source": {
    "blob": "9b8a3e5eb85df601a7ddc6deba5c70d411014ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c03e9e5416f71a5130fdaf2ba1c821de29b361943bcb0246718346bb18cc17ea",
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

Occurrence: `declaration:ff01bcb4a3ce3c853898edeeea49c70c2013bff1a21e5ffb0f347003c0c1c456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transformTag (tk : Syntax) (n m : Ident) (vs : Array (TSyntax `proofWidgetsJsxAttr))
    (cs : Array (TSyntax `proofWidgetsJsxChild)) : MacroM Term := do
  let nId := n.getId.eraseMacroScopes
  let mId := m.getId.eraseMacroScopes
  if nId != mId then
    Macro.throwErrorAt m s!"expected </{nId}>"

  let trailingWs (stx : Syntax) :=
    if let .original _ _ trailing _ := stx.getTailInfo then
      trailing.toString
    else ""

  -- Whitespace appearing before the current child.
  let mut wsBefore := trailingWs tk
  -- This loop transforms (for example) `` `(proofWidgetsJsxChild*| {a} text {...cs} {d})``
  -- into ``children ← `(term| #[a, Html.text " text "] ++ cs ++ #[d])``.
  let mut csArrs := #[]
  let mut csArr := #[]
  for c in cs do
    match c with
    | `(proofWidgetsJsxChild| $t:jsxText) =>
      csArr ← csArr.push <$> `(Html.text $(quote <| wsBefore ++ getJsxText t))
      wsBefore := ""
    | `(proofWidgetsJsxChild| { $t }%$tk) =>
      csArr := csArr.push t
      wsBefore := trailingWs tk
    | `(proofWidgetsJsxChild| $e:proofWidgetsJsxElement) =>
      csArr ← csArr.push <$> `(term| $e:proofWidgetsJsxElement)
      wsBefore := trailingWs e
    | `(proofWidgetsJsxChild| {... $t }%$tk) =>
      if !csArr.isEmpty then
        csArrs ← csArrs.push <$> `(term| #[$csArr,*])
      csArr := #[]
      csArrs := csArrs.push t
      wsBefore := trailingWs tk
    | stx => Macro.throwErrorAt stx "unknown syntax"
  if !csArr.isEmpty then
    csArrs ← csArrs.push <$> `(term| #[$csArr,*])
  let children ← joinArrays csArrs

  let vs : Array ((Ident × Term) ⊕ Term) ← vs.mapM fun
    | `(proofWidgetsJsxAttr| $attr:ident = $s:str)      => Sum.inl <$> pure (attr, s)
    | `(proofWidgetsJsxAttr| $attr:ident = { $t:term }) => Sum.inl <$> pure (attr, t)
    | `(proofWidgetsJsxAttr| {... $t:term })            => Sum.inr <$> pure t
    | stx                                   => Macro.throwErrorAt stx "unknown syntax"
  let tag := toString nId

  -- Uppercase tags are parsed as components
  if String.Pos.Raw.get? tag 0 |>.filter (·.isUpper) |>.isSome then
    let withs : Array Term ← vs.filterMapM fun
      | .inr e => return some e
      | .inl _ => return none
    let vs ← vs.filterMapM fun
      | .inl (attr, val) => return some <|
        ← `(Term.structInstField| $attr:ident := $val)
      | .inr _ => return none
    let props ← match withs, vs with
      | #[w], #[] => pure w
      | _, _ => `({ $withs,* with $vs:structInstField,* })
    `(Html.ofComponent $n $props $children)
  -- Lowercase tags are parsed as standard HTML
  else
    let vs ← joinArrays <| ← foldInlsM vs (fun vs' => do
      let vs' ← vs'.mapM (fun (k, v) =>
        `(term| ($(quote <| toString k.getId), ($v : Json))))
      `(term| #[$vs',*]))
    `(Html.element $(quote tag) $vs $children)

/-- Support for writing HTML trees directly, using XML-like angle bracket syntax. It works very
similarly to [JSX](https://react.dev/learn/writing-markup-with-jsx) in JavaScript. The syntax is
enabled using `open scoped ProofWidgets.Jsx`.

Lowercase tags are interpreted as standard HTML
whereas uppercase ones are expected to be `ProofWidgets.Component`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant2c6f7f8d925767c818f2fae9e2de66f600efe12a92f28931af2a804df273016b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b8a3e5eb85df601a7ddc6deba5c70d411014ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
