# mCasesAddGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5c5efda1bea8efe145fa0ca22ff04f52aa1c8ab14b224698ab3edcfe59c3c26",
  "kind": "def",
  "lexical_name": "mCasesAddGoal",
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
  "slug": "mcasesaddgoal--78f04016ae86f09b492ea1be",
  "source": {
    "blob": "524d15bda480f08d9854c39f82e667c68cafe466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78f04016ae86f09b492ea1be430ce053ae20918fc3100844ae09475b33fe7354",
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

Occurrence: `declaration:e5c5efda1bea8efe145fa0ca22ff04f52aa1c8ab14b224698ab3edcfe59c3c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mCasesAddGoal (u : Level) (goals : IO.Ref (Array MVarId)) (σs : Expr) (T : Expr) (Q : Expr) (H : Expr) : MetaM (Unit × MGoal × Expr) := do
  let (P, hand) := SPred.mkAnd u σs Q H
  -- hand : Q ∧ H ⊣⊢ₛ P
  -- Need to produce a proof that P ⊢ₛ T and return res
  let goal : MGoal := { u := u, σs := σs, hyps := P, target := T }
  let m ← mkFreshExprSyntheticOpaqueMVar goal.toExpr
  goals.modify (·.push m.mvarId!)
  let prf := mkApp7 (mkConst ``Cases.add_goal [u]) σs P Q H T hand m
  let goal := { goal with hyps := SPred.mkAnd! u σs Q H }
  return ((), goal, prf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524d15bda480f08d9854c39f82e667c68cafe466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
