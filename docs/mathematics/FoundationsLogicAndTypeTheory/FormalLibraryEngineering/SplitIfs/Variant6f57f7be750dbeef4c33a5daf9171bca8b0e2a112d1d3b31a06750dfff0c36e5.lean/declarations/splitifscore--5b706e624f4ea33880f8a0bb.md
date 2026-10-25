# splitIfsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56fc5483d36a7adfdd9112d87f9e83f00c62f0a48b36c38cea3e462dd763f144",
  "kind": "def",
  "lexical_name": "splitIfsCore",
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
  "slug": "splitifscore--5b706e624f4ea33880f8a0bb",
  "source": {
    "blob": "8c8b839bbfd7cfb7da0e54a10e752ca91f35a017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b706e624f4ea33880f8a0bb22e0090e2528de52641021fcf5f26a3edbcc3473",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56fc5483d36a7adfdd9112d87f9e83f00c62f0a48b36c38cea3e462dd763f144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def splitIfsCore
    (loc : Location)
    (hNames : IO.Ref (List (TSyntax `Lean.binderIdent))) :
    List Expr → TacticM Unit := fun done ↦ withMainContext do
  let some (_,cond) ← findIfCondAt loc
      | Meta.throwTacticEx `split_ifs (← getMainGoal) "no if-then-else conditions to split"

  -- If `cond` is `¬p` then use `p` instead.
  let cond := if cond.isAppOf `Not then cond.getAppArgs[0]! else cond

  if done.contains cond then return ()
  let no_split ← valueKnown cond
  if no_split then
    andThenOnSubgoals (reduceIfsAt loc) (splitIfsCore loc hNames (cond::done) <|> pure ())
  else do
    let hName ← getNextName hNames
    andThenOnSubgoals (splitIf1 cond hName loc) ((splitIfsCore loc hNames (cond::done)) <|>
      pure ())

/-- Splits all if-then-else-expressions into multiple goals.
Given a goal of the form `g (if p then x else y)`, `split_ifs` will produce
two goals: `p ⊢ g x` and `¬p ⊢ g y`.
If there are multiple ite-expressions, then `split_ifs` will split them all,
starting with a top-most one whose condition does not contain another
ite-expression.
`split_ifs at *` splits all ite-expressions in all hypotheses as well as the goal.
`split_ifs with h₁ h₂ h₃` overrides the default names for the hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8b839bbfd7cfb7da0e54a10e752ca91f35a017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
