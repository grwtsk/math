# diffGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79268fb2b66c125aec78c5f6dd06b919ad540e52ed0d018094b480d8928f7747",
  "kind": "def",
  "lexical_name": "diffGoals",
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
  "slug": "diffgoals--789b1e135ca14d06ac505eb8",
  "source": {
    "blob": "1ed842f5d83057307e768a18d50c0e232954423e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:789b1e135ca14d06ac505eb8238f4f82434a66482fecce53a395b4afa7ed5b13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79268fb2b66c125aec78c5f6dd06b919ad540e52ed0d018094b480d8928f7747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diffGoals (oldGoal newGoal : MVarId) : BaseM GoalDiff := do
  let oldLCtx := (← oldGoal.getDecl).lctx
  let newLCtx := (← newGoal.getDecl).lctx
  let sameTarget ← newGoal.withContext do
    isGoalDiffDefeqTarget oldGoal newGoal
  return {
    addedFVars := ← getNewFVars newGoal oldLCtx newLCtx
    removedFVars := ← getNewFVars oldGoal newLCtx oldLCtx
    targetChanged := ! sameTarget
    oldGoal, newGoal
  }

namespace GoalDiff

/--
If `diff₁` is the difference between goals `g₁` and `g₂` and `diff₂` is the
difference between `g₂` and `g₃`, then `diff₁.comp diff₂` is the difference
between `g₁` and `g₃`.

We assume that a hypothesis which changed between `g₁` and `g₂` does not
change back, i.e. the hypothesis is still different between `g₁` and `g₃`, and
similar for the targets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed842f5d83057307e768a18d50c0e232954423e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
