# solverAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f627ac2fd31f198ff9ae23aae8e415887338f22396169bec3ae88b75d03410ed",
  "kind": "def",
  "lexical_name": "solverAction",
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
  "slug": "solveraction--b0c694b09e7d447e3f18478a",
  "source": {
    "blob": "ad212d7c8ef8277b4be3650d43738ee98a32cbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant473dc52235a3af72a01b14a25598705da844a4f33b08e2b1f2670e4c28c5bb71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0c694b09e7d447e3f18478ab4f600250c9ad0f88921c34ce147fa2bfcf84753",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant473dc52235a3af72a01b14a25598705da844a4f33b08e2b1f2670e4c28c5bb71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f627ac2fd31f198ff9ae23aae8e415887338f22396169bec3ae88b75d03410ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solverAction (check : GoalM CheckResult) (mkTac : GrindM TGrind) : Action := fun goal kna kp => do
  let saved? ← saveStateIfTracing
  let (result, goal') ← GoalM.run goal check
  match result with
  | .none       => kna goal'
  | .progress   => kp goal'
  | .propagated =>
    let goal' ← GoalM.run' goal' processNewFacts
    if goal'.inconsistent then
      closeWith mkTac
    else if (← getConfig).trace then
      match (← kp goal') with
      | .closed seq =>
        /-
        **Note**: Check whether the progress made by this solver was actually used to close the goal.
        This is not just an optimization, if we include an unnecessary step, we may fail to replay
        the generated script when `cases` steps are pruned using non-chronological backtracking (NCB).
        For example, when executing `finish?`, we may have performed a `cases #<anchor>` step
        that enabled `ring` to propagate a new fact. If this fact is not used in the final proof,
        and the corresponding `cases #<anchor>` step is pruned by NCB, the `ring` step will fail during replay.
        -/
        if (← checkSeqAt saved? goal seq) then
          return .closed seq
        else
          let tac ← mkTac
          return .closed (tac :: seq)
      | r => return r
    else
      kp goal'
  | .closed     => closeWith mkTac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant473dc52235a3af72a01b14a25598705da844a4f33b08e2b1f2670e4c28c5bb71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant473dc52235a3af72a01b14a25598705da844a4f33b08e2b1f2670e4c28c5bb71.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad212d7c8ef8277b4be3650d43738ee98a32cbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
