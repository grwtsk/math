# parserNodeKind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61278e0942c34ef047888136152f808bd97855fbf34eab015419172448f3e2d3",
  "kind": "def",
  "lexical_name": "parserNodeKind?",
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
  "slug": "parsernodekind--1727087e962975fef68ec80d",
  "source": {
    "blob": "468bd8aa0f202d4227220ab93afaac0cd7abe3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1727087e962975fef68ec80d8d9f33effbdfb3ab4556322d3e1fa7728fe7da1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61278e0942c34ef047888136152f808bd97855fbf34eab015419172448f3e2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parserNodeKind? (e : Expr) : MetaM (Option Name) := do
  let reduceEval? e : MetaM (Option Name) := do
    try pure <| some (← reduceEval e) catch _ => pure none
  let e ← whnfCore e
  if e matches Expr.lam .. | Expr.letE .. then
    lambdaLetTelescope (preserveNondepLet := false) e fun _ e => parserNodeKind? e
  else if e.isAppOfArity ``leadingNode 3 || e.isAppOfArity ``trailingNode 4 || e.isAppOfArity ``node 2 then
    reduceEval? (e.getArg! 0)
  else if e.isAppOfArity ``withAntiquot 2 then
    parserNodeKind? (e.getArg! 1)
  else forallTelescope (← inferType e.getAppFn) fun params _ => do
    let lctx ← getLCtx
    -- if there is exactly one parameter of type `Parser`, search there
    if let #[(_, i)] := params.zipIdx.filter (lctx.getFVar! ·.1 |>.type.isConstOf ``Parser) then
      parserNodeKind? (e.getArg! i)
    else
      return none

section
open Meta

variable {α} (ctx : Context α) (builtin : Bool) (force : Bool) in
/--
  Translate an expression of type `Parser` into one of type `tyName`, tagging intermediary constants with
  `ctx.combinatorAttr`. If `force` is `false`, refuse to do so for imported constants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468bd8aa0f202d4227220ab93afaac0cd7abe3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
