# updateBinderNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f6f613e21ebc9d6c280c1a277e22558949c7915c027e1c97f86c01cbcfd3b85",
  "kind": "def",
  "lexical_name": "updateBinderNames",
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
  "slug": "updatebindernames--d4bcabf0338fca69ba91ffd4",
  "source": {
    "blob": "5df8765a9589b3fe299e04390e2285ffe5a90043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1436,
    "line": 1402,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4bcabf0338fca69ba91ffd4d73a9f70e2d34a684688110da60836e2f4e2917a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f6f613e21ebc9d6c280c1a277e22558949c7915c027e1c97f86c01cbcfd3b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1402–1436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateBinderNames (e : Expr) (binderNames? : List (Option Name)) : Expr :=
  match e, binderNames? with
  | Expr.forallE n d b bi, newN? :: binderNames? =>
    let b := updateBinderNames b binderNames?
    let n := newN?.getD n
    Expr.forallE n d b bi
  | Expr.lam n d b bi, newN? :: binderNames? =>
    let b := updateBinderNames b binderNames?
    let n := newN?.getD n
    Expr.lam n d b bi
  | e, _ => e

/--
Instantiates the loose bound variables in `e` using the `subst` array,
where a loose `Expr.bvar i` at "binding depth" `d` is instantiated with `subst[i - d]` if `0 <= i - d < subst.size`,
and otherwise it is replaced with `Expr.bvar (i - subst.size)`; non-loose bound variables are not touched.

If we imagine all expressions as being able to refer to the infinite list of loose bound variables ..., 3, 2, 1, 0 in that order,
then conceptually `instantiate` is instantiating the last `n` of these and reindexing the remaining ones.
Warning: `instantiate` uses the de Bruijn indexing to index the `subst` array, which might be the reverse order from what you might expect.
See also `Lean.Expr.instantiateRev`.

**Terminology.** The "binding depth" of a subexpression is the number of bound variables available to that subexpression
by virtue of being in the bodies of `Expr.forallE`, `Expr.lam`, and `Expr.letE` expressions.
A bound variable `Expr.bvar i` is "loose" if its de Bruijn index `i` is not less than its binding depth.)

**About instantiation.** Instantiation isn't mere substitution.
When an expression from `subst` is being instantiated, its internal loose bound variables have their de Bruijn indices incremented
by the binding depth of the replaced loose bound variable.
This is necessary for the substituted expression to still refer to the correct binders after instantiation.
Similarly, the reason loose bound variables not instantiated using `subst` have their de Bruijn indices decremented like `Expr.bvar (i - subst.size)`
is that `instantiate` can be used to eliminate binding expressions internal to a larger expression,
and this adjustment keeps these bound variables referring to the same binders.
-/
@[extern "lean_expr_instantiate"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean#L1402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5df8765a9589b3fe299e04390e2285ffe5a90043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
