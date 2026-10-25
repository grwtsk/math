# evalHaveSilent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:365a68a3e2c42f190bf35f41456d0e06f67484f1a0f6660d51281f949c37b0e3",
  "kind": "def",
  "lexical_name": "evalHaveSilent",
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
  "slug": "evalhavesilent--f32a26eab3a4118d4ffcf040",
  "source": {
    "blob": "0a855b203e35161a3590a903805f2f6f9257b058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea29ddb65a5f79acddf38a1fe48d425f31b7318b4a6340b5134fb7f94c5b342d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f32a26eab3a4118d4ffcf0401b7a52e0e1dea770e446c0ae93a038f31ba387b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea29ddb65a5f79acddf38a1fe48d425f31b7318b4a6340b5134fb7f94c5b342d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:365a68a3e2c42f190bf35f41456d0e06f67484f1a0f6660d51281f949c37b0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic Parser.Tactic.Grind.haveSilent] def evalHaveSilent : GrindTactic := fun stx => withMainContext do
  let `(grind| have $[$id?:ident]? : $prop:term) := stx | throwUnsupportedSyntax
  let id := if let some id := id? then id.getId else `this
  let id := if id.hasMacroScopes then id else markGrindName id
  let prop ← elabTerm prop none
  let mvar ← mkFreshExprMVar prop
  let mvarId := mvar.mvarId!
  let goal :: goals ← getGoals | throwNoGoalsToBeSolved
  let goalNew := { goal with mvarId }
  setGoals [goalNew]
  if let some goal ← liftGrindM <| solve goalNew then
    let params := (← read).params
    let result ← liftGrindM do mkResult params (some goal)
    throwError "`finish` failed\n{← result.toMessageData}"
  let v ← instantiateMVars mvar
  let mvarId ← goal.mvarId.assert id prop v
  let goal := { goal with mvarId }
  setGoals (goal :: goals)
  liftAction <| Action.intros 0

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea29ddb65a5f79acddf38a1fe48d425f31b7318b4a6340b5134fb7f94c5b342d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantea29ddb65a5f79acddf38a1fe48d425f31b7318b4a6340b5134fb7f94c5b342d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a855b203e35161a3590a903805f2f6f9257b058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
