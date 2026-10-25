# cleanupCasts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb4beceda075211dfe9286ae343bbe34594f4474992ca2a5df1291371f4df807",
  "kind": "def",
  "lexical_name": "cleanupCasts",
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
  "slug": "cleanupcasts--1b2ddda21d145b20bf2302e8",
  "source": {
    "blob": "e4dc03eb2cfa05a889ed6ca7220294b6cc436019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 518,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b2ddda21d145b20bf2302e83b0a0024a66128618e5688dcaa59da3053199838",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb4beceda075211dfe9286ae343bbe34594f4474992ca2a5df1291371f4df807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cleanupCasts (e : Expr) : MetaM Expr :=
  transform (input := e) (skipConstInApp := true) (pre := fun e =>
    -- since the `pre` method returns a result instead of calling itself recursively,
    -- the tracing creates many parallel nodes instead of nesting them
    -- unfortunately, there does not seem to be a way to nest the trace nodes
    -- within the bounds of the `Lean.Meta.transform` API
    withTraceNode traceClsClean (fun
      | .ok (.visit e') => pure m!"{e} => visit {e'}"
      | .ok (.continue e'?) => pure m!"{e} => continue {e'?.getD e}"
      | .ok (.done e') => pure m!"{e} => done {e'}"
      | .error _ => pure m!"{e} => ??") <| do
    let .mdata mdata e := e | return .continue
    if mdata != castMData then return .continue
    trace[Tactic.depRewrite.cleanupCasts] "found potential cast{indentExpr e}"
    unless e.isAppOfArity ``Eq.rec 6 do
      trace[Tactic.depRewrite.cleanupCasts]
        "cast candidate{indentExpr e}\nis not {.ofConstName ``Eq.rec} application"
      return .visit e
    e.withApp fun _ args => do
      let lhs := args[1]!
      let rhs := args[4]!
      let refl := args[3]!
      unless ← withNewMCtxDepth <| isDefEq lhs rhs do
        trace[Tactic.depRewrite.cleanupCasts]
          "lhs{indentExpr lhs}\nis not definitionally equal to rhs{indentExpr rhs}"
        return .continue
      unless ← withNewMCtxDepth <| isDefEq e refl do
        trace[Tactic.depRewrite.cleanupCasts]
          "refl-cast expression{indentExpr e} is not definitionally equal to{indentExpr refl}"
        return .continue
      return .visit refl)

open Parser Elab Tactic

/--
`rewrite!` is like `rewrite`,
but can also insert casts to adjust types that depend on the LHS of a rewrite.
It is available as an ordinary tactic and a `conv` tactic.

The sort of casts that are inserted is controlled by the `castMode` configuration option.
By default, only proof terms are casted;
by proof irrelevance, this adds no observable complexity.

With `rewrite! +letAbs (castMode := .all)`, casts are inserted whenever necessary.
This means that the 'motive is not type correct' error never occurs,
at the expense of creating potentially complicated terms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4dc03eb2cfa05a889ed6ca7220294b6cc436019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
