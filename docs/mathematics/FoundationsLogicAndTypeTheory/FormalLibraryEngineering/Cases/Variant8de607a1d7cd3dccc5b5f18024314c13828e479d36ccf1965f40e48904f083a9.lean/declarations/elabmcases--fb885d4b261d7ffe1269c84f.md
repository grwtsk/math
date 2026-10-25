# elabMCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40e5f73b202676f9cfaf8424e8460ef4f252cf2427aa4b2c4a81db3756803067",
  "kind": "def",
  "lexical_name": "elabMCases",
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
  "slug": "elabmcases--fb885d4b261d7ffe1269c84f",
  "source": {
    "blob": "524d15bda480f08d9854c39f82e667c68cafe466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb885d4b261d7ffe1269c84ff131ffe69ce2df0732c326f13b0dadc4db856489",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40e5f73b202676f9cfaf8424e8460ef4f252cf2427aa4b2c4a81db3756803067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMCases : Tactic
  | `(tactic| mcases $hyp:ident with $pat:mcasesPat) => do
    let pat ← liftMacroM <| MCasesPat.parse pat
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do

    let focus ← goal.focusHypWithInfo hyp
    -- goal : P ⊢ₛ T,
    -- hfocus : P ⊣⊢ₛ Q ∧ H
    let Q := focus.restHyps
    let H := focus.focusHyp
    let goals ← IO.mkRef #[]
    let (_, _new_goal, prf) ← mCasesCore goal.u goal.σs H pat (mCasesAddGoal goal.u goals goal.σs goal.target Q)

    -- Now prf : Q ∧ H ⊢ₛ T. Prepend hfocus.mp, done.
    let prf := focus.rewriteHyps goal prf
    -- check prf
    mvar.assign prf
    replaceMainGoal (← goals.get).toList
  | _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524d15bda480f08d9854c39f82e667c68cafe466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
