# Lean.Elab.Tactic.applyCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:194c4eded8ed840471b6b75d05ad7b7c79652525141a32b37c5847c297e156ce",
  "kind": "def",
  "lexical_name": "Lean.Elab.Tactic.applyCongr",
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
  "slug": "lean-elab-tactic-applycongr--bc7d43f9acf05efbf1edb66c",
  "source": {
    "blob": "1bce43153761cea6037cc4a7a5b73c3744abc762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variantc28fc53c3ba9d4173f38472233bba505b79b88541a935c4decce7c57926e3435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc7d43f9acf05efbf1edb66caf45ea3a1457bb1fc801861aa9fad6ae0945c74f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variantc28fc53c3ba9d4173f38472233bba505b79b88541a935c4decce7c57926e3435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:194c4eded8ed840471b6b75d05ad7b7c79652525141a32b37c5847c297e156ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Elab.Tactic.applyCongr (q : Option Expr) : TacticM Unit := do
  let const lhsFun _ ← (getAppFn ∘ cleanupAnnotations) <$> instantiateMVars (← getLhs) |
    throwError "Left-hand side must be an application of a constant."
  let congrTheoremExprs ←
    match q with
    -- If the user specified a lemma, use that one,
    | some e =>
      pure [e]
    -- otherwise, look up everything tagged `@[congr]`
    | none =>
      let congrTheorems ←
        (fun congrTheoremMap => congrTheoremMap.get lhsFun) <$> getSimpCongrTheorems
      congrTheorems.mapM (fun congrTheorem =>
        liftM <| mkConstWithFreshMVarLevels congrTheorem.theoremName)
  if congrTheoremExprs == [] then
    throwError "No matching congr lemmas found"
  -- For every lemma:
  liftMetaTactic fun mainGoal => congrTheoremExprs.firstM (fun congrTheoremExpr => do
    let newGoals ← mainGoal.apply congrTheoremExpr { newGoals := .nonDependentOnly }
    newGoals.mapM fun newGoal => Prod.snd <$> newGoal.intros)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variantc28fc53c3ba9d4173f38472233bba505b79b88541a935c4decce7c57926e3435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variantc28fc53c3ba9d4173f38472233bba505b79b88541a935c4decce7c57926e3435.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bce43153761cea6037cc4a7a5b73c3744abc762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
