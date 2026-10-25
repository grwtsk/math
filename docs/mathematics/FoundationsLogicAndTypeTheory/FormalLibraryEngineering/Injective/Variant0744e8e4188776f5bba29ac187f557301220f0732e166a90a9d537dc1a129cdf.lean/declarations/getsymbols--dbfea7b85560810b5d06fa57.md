# getSymbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1df89f07a3c1b4c7b477e548a7f7895b64f2cc13399482143b6cc16b390b79a",
  "kind": "def",
  "lexical_name": "getSymbols",
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
  "slug": "getsymbols--dbfea7b85560810b5d06fa57",
  "source": {
    "blob": "b4440309bbafd766f5807dad318fe99ba0c4712f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbfea7b85560810b5d06fa57c8c45e638a03db34aca0ed7d87f874ef446d5119",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1df89f07a3c1b4c7b477e548a7f7895b64f2cc13399482143b6cc16b390b79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def getSymbols (proof : Expr) (hasUniverses : Bool) : MetaM (List HeadIndex) := do
  let type ← inferType proof
  forallTelescope type fun xs type => do
    unless type.isAppOfArity ``Function.Injective 3 do
      throwError "invalid `[grind inj]` theorem, resulting type is not of the form `Function.Injective <fun>`{indentExpr type}"
    if xs.isEmpty && hasUniverses then
      throwError "invalid `[grind inj]` theorem, theorem has universe levels, but no hypotheses{indentExpr type}"
    let f := type.appArg!.eta
    let cs ← collectFnNames f
    if cs.isEmpty then
      throwError "invalid `[grind inj]` theorem, injective function must use at least one constant function symbol{indentExpr f}"
    return cs.toList.map (.const ·)
where
  collectFnNames (f : Expr) : MetaM NameSet := do
    if let .const declName _ := f then
      return { declName }
    else
      Prod.snd <$> (go f |>.run {})

  go (e : Expr) : StateRefT NameSet MetaM Unit := do
    if e.isApp then e.withApp fun f args => do
      if let .const declName _ := f then
        modify (·.insert declName)
      let kinds ← NormalizePattern.getPatternArgKinds f args.size
      for h : i in *...args.size do
        let arg  := args[i]
        let kind := kinds[i]?.getD .relevant
        if kind matches .relevant | .typeFormer then
          go arg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant0744e8e4188776f5bba29ac187f557301220f0732e166a90a9d537dc1a129cdf.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4440309bbafd766f5807dad318fe99ba0c4712f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
