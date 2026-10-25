# tryNormalizeGoalToIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0697fa95c8f5c5c7b12586665be963e53896d46c7eada950556ab9e60685a953",
  "kind": "def",
  "lexical_name": "tryNormalizeGoalToIcc",
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
  "slug": "trynormalizegoaltoicc--69aeb72649034091a3c96479",
  "source": {
    "blob": "a9fd6950affa10170ae75eb4fc46bfa889ec284e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69aeb72649034091a3c9647997096257b41cfcd7dd3319f491085f3a037ac5e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0697fa95c8f5c5c7b12586665be963e53896d46c7eada950556ab9e60685a953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryNormalizeGoalToIcc : TacticM Bool := do
  let goal ← getMainGoal
  if ← goalNeedsIccWrapper (← goal.getType) then
    try
      evalTactic (← `(tactic|
        first
        | refine (forall_arrow_of_Icc ?_)
        | refine (forall_arrow_of_Icc_rev ?_)
        | refine (forall_and_of_Icc ?_)
        | refine (forall_and_of_Icc_rev ?_)
      ))
      return true
    catch _ => return false
  else
    return false

/-! ## rpow Normalization Helpers -/

/-- Normalize `x ^ (1/2)` into `sqrt x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fd6950affa10170ae75eb4fc46bfa889ec284e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
