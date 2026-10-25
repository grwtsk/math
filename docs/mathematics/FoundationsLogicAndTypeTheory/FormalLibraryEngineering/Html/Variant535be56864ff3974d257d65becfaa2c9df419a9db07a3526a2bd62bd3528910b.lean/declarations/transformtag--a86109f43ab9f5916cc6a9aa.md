# transformTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de05958069253c281b60978b56a68b9fcb7d938a82b9656503d4dbe4f08ed424",
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
  "slug": "transformtag--a86109f43ab9f5916cc6a9aa",
  "source": {
    "blob": "3c64eed7b6eb74ba893823d04f39b0f35c3dcab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a86109f43ab9f5916cc6a9aa16ef104c95f4fe0d35790d3ccb68206558714689",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de05958069253c281b60978b56a68b9fcb7d938a82b9656503d4dbe4f08ed424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transformTag (n m : Ident) (ns : Array Ident) (vs : Array (TSyntax `jsxAttrVal))
    (cs : Array (TSyntax `jsxChild)) : MacroM Term := do
  if n.getId != m.getId then
    Macro.throwErrorAt m s!"expected </{n.getId}>"
  let cs ← cs.mapM fun
    | `(jsxChild| $t:jsxText)    => `(THtml.text $(quote <| getJsxText t))
    | `(jsxChild| { $t })        => return t
    | `(jsxChild| $e:jsxElement) => `(term| $e:jsxElement)
    | _                          => unreachable!
  let vs : Array (TSyntax `term) := vs.map fun
    | `(jsxAttrVal| $s:str) => s
    | `(jsxAttrVal| { $t:term }) => t
    | _ => unreachable!
  let tag := toString n.getId
  -- Uppercase tags are parsed as components
  if tag.get? 0 |>.filter (·.isUpper) |>.isSome then
    `(THtml.component $n { $[$ns:ident := $vs],* } #[ $[$cs],* ])
  -- Lowercase tags are parsed as standard HTML
  else
    let ns := ns.map (quote <| toString ·.getId)
    `(THtml.element $(quote tag) #[ $[($ns, $vs)],* ] #[ $[$cs],* ])


/-- Support for writing HTML trees directly, using XML-like angle bracket syntax. It works very
similarly to [JSX](https://react.dev/learn/writing-markup-with-jsx) in JavaScript. The syntax is
enabled using `open scoped ProofWidgets.Jsx`.

Lowercase tags are interpreted as standard HTML whereas uppercase ones are expected to be
`ProofWidgets.Component`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c64eed7b6eb74ba893823d04f39b0f35c3dcab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
