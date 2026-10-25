# rwLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:283860d0f82a69da231fb8ae03d2f7a04cab18eb41139c0f2c23e8b2777d0f6a",
  "kind": "def",
  "lexical_name": "rwLemma",
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
  "slug": "rwlemma--3cc775dfe65beb0c24d627f5",
  "source": {
    "blob": "e0d86f61ca1a7111d24b5d146d08047fbfc15bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cc775dfe65beb0c24d627f5ebccfc06fbae3d404a95549b63d20bad09a452b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:283860d0f82a69da231fb8ae03d2f7a04cab18eb41139c0f2c23e8b2777d0f6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rwLemma (ctx : MetavarContext) (goal : MVarId) (target : Expr) (side : SideConditions := .solveByElim)
    (lem : Expr ⊕ Name) (symm : Bool) (weight : Nat) : MetaM (Option RewriteResult) :=
  withMCtx ctx do
    let some expr ← (match lem with
    | .inl hyp => pure (some hyp)
    | .inr lem => some <$> mkConstWithFreshMVarLevels lem <|> pure none)
      | return none
    trace[Tactic.rewrites] m!"considering {if symm then "← " else ""}{expr}"
    let some result ← some <$> goal.rewrite target expr symm <|> pure none
      | return none
    if result.mvarIds.isEmpty then
      let mctx ← getMCtx
      let rfl? ← dischargableWithRfl? mctx result.eNew
      return some { expr, symm, weight, result, mctx, rfl? }
    else
      -- There are side conditions, which we try to discharge using local hypotheses.
      let discharge ←
        match side with
        | .none => pure false
        | .assumption => ((fun _ => true) <$> result.mvarIds.mapM fun m => m.assumption) <|> pure false
        | .solveByElim => (solveByElim result.mvarIds >>= fun _ => pure true) <|> pure false
      match discharge with
      | false =>
        return none
      | true =>
        -- If we succeed, we need to reconstruct the expression to report that we rewrote by.
        let some expr := rewriteResultLemma result | return none
        let expr ← instantiateMVars expr
        let (expr, symm) := if expr.isAppOfArity ``Eq.symm 4 then
            (expr.getArg! 3, true)
          else
            (expr, false)
        let mctx ← getMCtx
        let rfl? ← dischargableWithRfl? mctx result.eNew
        return some { expr, symm, weight, result, mctx, rfl? }

/--
Find keys which match the expression, or some subexpression.

Note that repeated subexpressions will be visited each time they appear,
making this operation potentially very expensive.
It would be good to solve this problem!

Implementation: we reverse the results from `getMatch`,
so that we return lemmas matching larger subexpressions first,
and amongst those we return more specific lemmas first.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d86f61ca1a7111d24b5d146d08047fbfc15bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
