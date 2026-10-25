# mkExprMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:258713f8545c52405992fa0b769cda8f5457abb2e1e0b331371581fdf743ac6f",
  "kind": "def",
  "lexical_name": "mkExprMatcher",
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
  "slug": "mkexprmatcher--bc8eace86606bffd610c4801",
  "source": {
    "blob": "72e9eb1e0540644c31b831b52b9a8558bb2fcfd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc8eace86606bffd610c48017aaa5ee3802a2dea78b2357b894780914b79a806",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:258713f8545c52405992fa0b769cda8f5457abb2e1e0b331371581fdf743ac6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkExprMatcher (stx : Term) (boundNames : HashSet Name) :
    OptionT TermElabM (List Name × Term) := do
  let stx'? ← liftM <| (liftMacroM <| expandMacro? stx : TermElabM (Option Syntax))
  match stx'? with
  | some stx' => mkExprMatcher ⟨stx'⟩ boundNames
  | none =>
    match stx with
    | `(_) => return ([], ← `(pure))
    | `($n:ident) =>
      if boundNames.contains n.getId then
        return ([], ← ``(matchVar $(quote n.getId)))
      else
        processFn n #[]
    | `($f:ident $args*) => processFn f args
    | `(term| $n:num) => return ([], ← ``(natLitMatcher $n))
    | `(($stx)) =>
      if Term.hasCDot stx then
        failure
      else
        mkExprMatcher stx boundNames
    | _ =>
      trace[notation3] "mkExprMatcher can't handle {stx}"
      failure
where
  processFn (f : Term) (args : TSyntaxArray `term) : OptionT TermElabM (List Name × Term) := do
    let (name?, matchf, arity, idxs) ← getExplicitArgIndices f
    unless args.size ≤ idxs.size do
      trace[notation3] "Function {f} has been given more explicit arguments than expected"
      failure
    let mut matchers := #[]
    for i in idxs, arg in args do
      let (_, matcher) ← mkExprMatcher arg boundNames
      matchers := matchers.push <| ← `(($(quote i), $matcher))
    -- `arity'` is the number of arguments (including trailing implicits) given these
    -- explicit arguments. This reflects how the function would be elaborated.
    let arity' := if _ : args.size < idxs.size then idxs[args.size] else arity
    let key? := name?.map (`app ++ ·)
    return (key?.toList, ← ``(fnArgMatcher $(quote arity') $matchf #[$matchers,*]))

/-- Matcher for processing `scoped` syntax. Assumes the expression to be matched
against is in the `lit` variable.

Runs `smatcher`, extracts the resulting `scopeId` variable, processes this value
(which must be a lambda) to produce a binder, and loops. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e9eb1e0540644c31b831b52b9a8558bb2fcfd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
