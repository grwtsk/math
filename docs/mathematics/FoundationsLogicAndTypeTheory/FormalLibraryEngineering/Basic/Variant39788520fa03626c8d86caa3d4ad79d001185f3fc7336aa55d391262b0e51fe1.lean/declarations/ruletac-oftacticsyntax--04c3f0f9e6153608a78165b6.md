# RuleTac.ofTacticSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a9084f5bcc1300937e8dde45e0c07be95d72d1aac2390f4214bbf9ea536a2b7",
  "kind": "def",
  "lexical_name": "RuleTac.ofTacticSyntax",
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
  "slug": "ruletac-oftacticsyntax--04c3f0f9e6153608a78165b6",
  "source": {
    "blob": "e2602a02380e2ce7b8264c5890867fa981306b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant39788520fa03626c8d86caa3d4ad79d001185f3fc7336aa55d391262b0e51fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04c3f0f9e6153608a78165b65a644e620b98e8fa4403fbdee6fedbbc2ce612d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant39788520fa03626c8d86caa3d4ad79d001185f3fc7336aa55d391262b0e51fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a9084f5bcc1300937e8dde45e0c07be95d72d1aac2390f4214bbf9ea536a2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RuleTac.ofTacticSyntax (t : RuleTacInput → MetaM Syntax.Tactic) : RuleTac :=
  RuleTac.ofSingleRuleTac λ input => do
    let stx ← t input
    let preState ← saveState
    let postGoals ← Lean.Elab.Tactic.run input.goal (evalTactic stx) |>.run'
    let postState ← saveState
    let postGoals := postGoals.toArray
    let step := {
      preGoal := input.goal
      tacticBuilders := #[return .unstructured stx]
      preState, postState, postGoals
    }
    let postGoals ← postGoals.mapM (mvarIdToSubgoal input.goal ·)
    return (postGoals, some #[step], none)

/--
A tactic generator is a special sort of rule tactic, intended for use with
generative machine learning methods. It generates zero or more tactics
(represented as strings) that could be applied to the goal, plus a success
probability for each tactic. When Aesop executes a tactic generator, it executes
each of the tactics and, if the tactic succeeds, adds a rule application for it.
The tactic's success probability (which must be between 0 and 1, inclusive)
becomes the success probability of the rule application. A `TacGen` rule
succeeds if at least one of its suggested tactics succeeds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant39788520fa03626c8d86caa3d4ad79d001185f3fc7336aa55d391262b0e51fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant39788520fa03626c8d86caa3d4ad79d001185f3fc7336aa55d391262b0e51fe1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2602a02380e2ce7b8264c5890867fa981306b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
