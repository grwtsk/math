# extractIntervalFromIntervalRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d801727ddaaace09887f3b07cf21f67b41482e2aec33adbba9503f930dca34",
  "kind": "def",
  "lexical_name": "extractIntervalFromIntervalRat",
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
  "slug": "extractintervalfromintervalrat--7c2a13b2c39022042bb37ae3",
  "source": {
    "blob": "35cc34a5c46fe85c18fc2fea04bd9ca1753fed55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c2a13b2c39022042bb37ae3b966671d866083d1217d388d2b5f177e1c48fa68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d801727ddaaace09887f3b07cf21f67b41482e2aec33adbba9503f930dca34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def extractIntervalFromIntervalRat (memTy : Lean.Expr) (x : Lean.Expr) : MetaM (Option VarIntervalInfo) := do
  match_expr memTy with
  | Membership.mem _ _ _ interval xExpr =>
    if ← isDefEq xExpr x then
      let intervalTy ← inferType interval
      if intervalTy.isConstOf ``IntervalRat then
        -- Try to extract lo and hi from the IntervalRat structure
        -- For now, we'll assume the interval is already in the right form
        let xTy ← inferType x
        let varName ← do
          match x with
          | .fvar fv => pure (← fv.getDecl).userName
          | _ => pure `x
        let loExpr ← mkAppM ``IntervalRat.lo #[interval]
        let hiExpr ← mkAppM ``IntervalRat.hi #[interval]
        return some {
          varName := varName
          varType := xTy
          intervalRat := interval
          loExpr := loExpr
          hiExpr := hiExpr
          lo := 0  -- Placeholder - we don't need these for non-Set.Icc
          hi := 1  -- Placeholder
        }
      return none
    else return none
  | _ => return none

/-- Recursively parse a multivariate bound goal, collecting variables and intervals.
    This processes all quantifiers within nested withLocalDeclD scopes so that
    fvars remain valid for mkLambdaFVars. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cc34a5c46fe85c18fc2fea04bd9ca1753fed55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
