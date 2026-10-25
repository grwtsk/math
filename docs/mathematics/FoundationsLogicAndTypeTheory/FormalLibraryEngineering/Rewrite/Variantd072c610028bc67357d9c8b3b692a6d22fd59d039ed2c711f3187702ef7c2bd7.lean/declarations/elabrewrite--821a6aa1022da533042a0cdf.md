# elabRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0b531d634e6823beac1c164a614eb6ce78a730ca972ec1033e435f8b43000b0",
  "kind": "def",
  "lexical_name": "elabRewrite",
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
  "slug": "elabrewrite--821a6aa1022da533042a0cdf",
  "source": {
    "blob": "1b3cfa8902e2f3e11457f1b8e71f6a088f72432d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:821a6aa1022da533042a0cdf3b111cba12bd80a900ff16c06fc491a983f349a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0b531d634e6823beac1c164a614eb6ce78a730ca972ec1033e435f8b43000b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabRewrite (mvarId : MVarId) (e : Expr) (stx : Syntax)
    (symm : Bool := false) (config := { : Rewrite.Config }) : TacticM RewriteResult := do
  let mvarCounterSaved := (← getMCtx).mvarCounter
  let thm ← elabTerm stx none true
  if thm.hasSyntheticSorry then
    throwAbortTactic
  unless ← occursCheck mvarId thm do
    throwErrorAt stx "Occurs check failed: Expression{indentExpr thm}\ncontains the goal {Expr.mvar mvarId}"
  let r ← withInstancesTypeCheckNote e do
    mvarId.rewrite e thm symm (config := config)
  let mctx ← getMCtx
  let mvarIds := r.mvarIds.filter fun mvarId => (mctx.getDecl mvarId |>.index) >= mvarCounterSaved

  return { r with mvarIds }

/--
Makes new goals be synthetic opaque, to be done once elaboration of the rewrite theorem is complete.

Workaround note: we are only doing this for proof goals, not data goals,
since there are many downstream cases of tactic proofs that later assign data goals by unification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3cfa8902e2f3e11457f1b8e71f6a088f72432d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
