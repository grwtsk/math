# Lean.Elab.Tactic.applyCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e39e4c23e6bd1ab85e79594d628ee644f936ffd2f5deff82ca30be567f53736",
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
  "slug": "lean-elab-tactic-applycongr--83ef1015a3bc6775aa12693c",
  "source": {
    "blob": "e3a185cdb102635431af91017f14fc8fc32ffc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variant526c6b9bbb6092c25663042ab8b4ed1066591e3a0e83d494b61742e3de37b2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83ef1015a3bc6775aa12693c72d0a64a76cc8f57fc12d8c73ed3bcbcd49e5e58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variant526c6b9bbb6092c25663042ab8b4ed1066591e3a0e83d494b61742e3de37b2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e39e4c23e6bd1ab85e79594d628ee644f936ffd2f5deff82ca30be567f53736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

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
      congrTheorems.mapM (fun congrTheorem => liftM <| Prod.fst <$> mkFun congrTheorem.theoremName)
  if congrTheoremExprs == [] then
    throwError "No matching congr lemmas found"
  -- For every lemma:
  liftMetaTactic <| fun mainGoal => congrTheoremExprs.firstM (fun congrTheoremExpr => do
    let newGoals ← mainGoal.apply congrTheoremExpr { newGoals := .nonDependentOnly }
    newGoals.mapM fun newGoal => Prod.snd <$> newGoal.intros)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variant526c6b9bbb6092c25663042ab8b4ed1066591e3a0e83d494b61742e3de37b2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyCongr/Variant526c6b9bbb6092c25663042ab8b4ed1066591e3a0e83d494b61742e3de37b2d9.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a185cdb102635431af91017f14fc8fc32ffc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
