# solveByTactic?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:439103ec388d694261d38be62b242e1e24b9b5b80eaa62a8d54ed34014b7ee8e",
  "kind": "def",
  "lexical_name": "solveByTactic?",
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
  "slug": "solvebytactic--69fae93e7bb0c1763059ce14",
  "source": {
    "blob": "cdd2b980fee1eb11803a5dd134185de9f3ea42a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69fae93e7bb0c1763059ce14ae1f5defea572ce991748124f98b7cde6726ec78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:439103ec388d694261d38be62b242e1e24b9b5b80eaa62a8d54ed34014b7ee8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def solveByTactic? (goalTy : Lean.Expr) (tac : TSyntax `tactic) : TacticM (Option Lean.Expr) := do
  let saved ← saveState
  let g ← mkFreshExprMVar goalTy
  setGoals [g.mvarId!]
  try
    evalTactic tac
    if (← getGoals).isEmpty then
      let pf ← instantiateMVars g
      saved.restore
      return some pf
    saved.restore
    return none
  catch _ =>
    saved.restore
    return none

/-- Build `0 < e` type for reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd2b980fee1eb11803a5dd134185de9f3ea42a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
