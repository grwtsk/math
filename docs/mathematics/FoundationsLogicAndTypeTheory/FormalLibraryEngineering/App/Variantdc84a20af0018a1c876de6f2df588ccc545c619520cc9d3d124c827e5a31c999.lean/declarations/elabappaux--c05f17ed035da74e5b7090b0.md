# elabAppAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b69aad66097ce56725466515495822c5eb51f6f4920ea0503dc9e0223e9cb7da",
  "kind": "def",
  "lexical_name": "elabAppAux",
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
  "slug": "elabappaux--c05f17ed035da74e5b7090b0",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2236,
    "line": 2210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c05f17ed035da74e5b7090b0645e4ffbf7bad4c5bd139bec2e4db7a02238c327",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b69aad66097ce56725466515495822c5eb51f6f4920ea0503dc9e0223e9cb7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2210–2236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabAppAux (f : Syntax) (namedArgs : Array NamedArg) (args : Array Arg) (ellipsis : Bool) (expectedType? : Option Expr) : TermElabM Expr := do
  let candidates ← elabAppFn f [] namedArgs args expectedType? (explicit := false) (ellipsis := ellipsis) (overloaded := false) #[]
  if h : candidates.size = 1 then
    have : 0 < candidates.size := by rw [h]; decide
    applyResult candidates[0]
  else
    let successes ← getSuccesses candidates
    if h : successes.size = 1 then
      have : 0 < successes.size := by rw [h]; decide
      applyResult successes[0]
    else if successes.size > 1 then
      let msgs : Array MessageData ← successes.mapM fun success => do
        match success with
        | .ok e s => withMCtx s.meta.meta.mctx <| withEnv s.meta.core.env do addMessageContext m!"{e} : {← inferType e}"
        | _       => unreachable!
      throwErrorAt f "Ambiguous term{indentD f}\nPossible interpretations:{toMessageList msgs}"
    else
      withRef f <| mergeFailures candidates

/--
  We annotate recursive applications with their `Syntax` node to make sure we can produce error messages with
  correct position information at `WF` and `Structural`.
-/
-- TODO: It is overkill to store the whole `Syntax` object, and we have to make sure we erase it later.
-- We should store only the position information in the future.
-- Recall that we will need to have a compact way of storing position information in the future anyway, if we
-- want to support debugging information
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L2210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
