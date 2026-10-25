# applyTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b786d0220cfe9f256e38ddafcd4f0e505a5a91523ea565272270074515e8dcd",
  "kind": "def",
  "lexical_name": "applyTactic",
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
  "slug": "applytactic--b028b876a2791bc9b4102fbe",
  "source": {
    "blob": "08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b028b876a2791bc9b4102fbe34b4d4a81ca391b75ff3c2fce6423baec70ef510",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b786d0220cfe9f256e38ddafcd4f0e505a5a91523ea565272270074515e8dcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyTactic (ts : TacticState) (inGoal : MVarId)
    (outGoals : Array GoalWithMVars) (preMCtx postMCtx : MetavarContext) :
    m TacticState := do
  let (some visibleGoals) :=
        replaceWithArray ts.visibleGoals ⟨inGoal, {}⟩ outGoals
    | throwUnknownGoalError inGoal "applyTactic"
  let ts := { ts with visibleGoals }
  return eraseSolvedGoals ts preMCtx postMCtx

-- Focus the visible goal `goal` and move all other previously visible goals
-- to `invisibleGoals`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
