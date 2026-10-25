# symInit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:283d3ba3e653efc9cfe8d0ea8ecbb04970a8a5f1c62e80f683c7ce44cd7d4de5",
  "kind": "def",
  "lexical_name": "symInit",
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
  "slug": "syminit--ceb9b635b98ed3ac89a96a64",
  "source": {
    "blob": "1dea7390768d06489ea60851555582d4c326bdbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceb9b635b98ed3ac89a96a64b22489b8acd34ea2d910718992a0db3c2e5b4f54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:283d3ba3e653efc9cfe8d0ea8ecbb04970a8a5f1c62e80f683c7ce44cd7d4de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def symInit (goal : Goal) : GrindM (List TGrind × Goal) := do
  let mut seq : List TGrind := []
  let mut goal := goal
  -- Introduce hypotheses, if any
  let hygienic := tactic.hygienic.get (← getOptions)
  if let .goal _ goalNew ← Goal.intros goal #[] hygienic then
    goal ← Goal.internalizeAll goalNew
    seq := seq ++ [← `(grind| intros)]
  -- Apply proof by contradiction if the target is not already `False`
  let target ← goal.mvarId.getType
  unless target.isFalse do
    let mvarId ← if (← isProp target) then pure goal.mvarId else goal.mvarId.exfalso
    if let some mvarId ← mvarId.byContra? then
      -- `byContra?` produces `⊢ ¬target → False`, introduce the negated hypothesis
      let (_, mvarId) ← mvarId.intro1
      goal ← Goal.internalizeAll { goal with mvarId }
      seq := seq ++ [← `(grind| by_contra)]
  return (seq, goal)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dea7390768d06489ea60851555582d4c326bdbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
