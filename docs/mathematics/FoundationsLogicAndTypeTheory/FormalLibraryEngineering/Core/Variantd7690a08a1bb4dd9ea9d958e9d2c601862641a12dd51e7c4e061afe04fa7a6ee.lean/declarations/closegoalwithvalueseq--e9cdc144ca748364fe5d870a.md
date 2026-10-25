# closeGoalWithValuesEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6028df12fd678e1d23bdc0fc836bbf620588d71b242835853a539f709d630a9b",
  "kind": "def",
  "lexical_name": "closeGoalWithValuesEq",
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
  "slug": "closegoalwithvalueseq--e9cdc144ca748364fe5d870a",
  "source": {
    "blob": "af42767f692c69e2158ac7e9531b5cacc5371092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9cdc144ca748364fe5d870af2424fa7d901691388985dff542fb210f1cef42c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6028df12fd678e1d23bdc0fc836bbf620588d71b242835853a539f709d630a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def closeGoalWithValuesEq (lhs rhs : Expr) : GoalM Unit := do
  let p ← mkEq lhs rhs
  let hp ← mkEqProof lhs rhs
  let d ← mkDecide p
  let pEqFalse := mkApp3 (mkConst ``eq_false_of_decide) p d.appArg! eagerReflBoolFalse
  let falseProof := mkApp4 (mkConst ``Eq.mp [Level.zero]) p (← getFalseExpr) pEqFalse hp
  closeGoal falseProof

/--
Updates the modification time to `gmt` for the parents of `root`.
The modification time is used to decide which terms are considered during e-matching.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af42767f692c69e2158ac7e9531b5cacc5371092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
