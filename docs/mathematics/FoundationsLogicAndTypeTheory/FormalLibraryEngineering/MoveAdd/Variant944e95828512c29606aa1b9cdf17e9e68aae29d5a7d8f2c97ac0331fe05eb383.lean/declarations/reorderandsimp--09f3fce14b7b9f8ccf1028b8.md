# reorderAndSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bf0050c058055dbbd765bf11b3f739c2854798792c455a5960f0bc7f82ae5e9",
  "kind": "def",
  "lexical_name": "reorderAndSimp",
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
  "slug": "reorderandsimp--09f3fce14b7b9f8ccf1028b8",
  "source": {
    "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09f3fce14b7b9f8ccf1028b866b789e8a94c285f941e4e16e875ddcf63ff9a20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bf0050c058055dbbd765bf11b3f739c2854798792c455a5960f0bc7f82ae5e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reorderAndSimp (mv : MVarId) (instr : List (Expr × Bool)) :
    MetaM (List MVarId) := mv.withContext do
  let permExpr ← permuteExpr op (← mv.getType'') instr
  -- generate the implication `permutedMv → mv = permutedMv → mv`
  let eqmpr ← mkAppM ``Eq.mpr #[← mkFreshExprMVar (← mkEq (← mv.getType) permExpr)]
  let twoGoals ← mv.apply eqmpr
  guard (twoGoals.length == 2) <|>
    throwError m!"There should only be 2 goals, instead of {twoGoals.length}"
  -- `permGoal` is the single goal `mv_permuted`, possibly more operations will be permuted later on
  let permGoal ← twoGoals.filterM fun v => return !(← v.isAssigned)
  match ← (simpGoal (permGoal[1]!) (← moveOperSimpCtx)) with
    | (some x, _) => throwError m!"'move_oper' could not solve {indentD x.2}"
    | (none, _) => return permGoal

/-- `unifyMovements` takes as input
* an array of `Expr × Bool × Syntax`, as in the output of `parseArrows`,
* the `Name` `op` of a binary operation,
* an `Expr`ession `tgt`.
It unifies each `Expr`ession appearing as a first factor of the array with the atoms
for the operation `op` in the expression `tgt`, returning
* the lists of pairs of a matched subexpression with the corresponding `Bool`ean;
* a pair of a list of error messages and the corresponding list of Syntax terms where the error
  should be thrown;
* an array of debugging messages.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
