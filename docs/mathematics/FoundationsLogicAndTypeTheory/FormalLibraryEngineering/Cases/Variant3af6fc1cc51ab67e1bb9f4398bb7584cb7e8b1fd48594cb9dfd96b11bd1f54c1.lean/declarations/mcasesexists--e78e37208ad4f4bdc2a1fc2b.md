# mCasesExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86fd8a4ffb28d63510d1171446d809630882c5b871ae174a6f242a58436257d4",
  "kind": "def",
  "lexical_name": "mCasesExists",
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
  "slug": "mcasesexists--e78e37208ad4f4bdc2a1fc2b",
  "source": {
    "blob": "6cd17f0696d12f4ff120b1fe46df7ad92833b3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e78e37208ad4f4bdc2a1fc2b0604f0bae85c7ead58d18aa16729e35fc2b7e491",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86fd8a4ffb28d63510d1171446d809630882c5b871ae174a6f242a58436257d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mCasesExists (H : Expr) (name : TSyntax ``binderIdent)
  (k : Expr /-name:α-/ → MetaM (α × MGoal × Expr)) : MetaM (α × MGoal × Expr) := do
  let some (α, σs, ψ) := H.consumeMData.app3? ``SPred.exists | throwError "Not an existential quantifier {H}"
  let (name, ref) ← getFreshHypName name
  withLocalDeclD name α fun x => do
    addLocalVarInfo ref (← getLCtx) x α
    let (r, goal, prf /- : goal.toExpr -/) ← k x
    let (Q, _) ← getQH goal
    let u ← getLevel α
    let prf := mkApp6 (mkConst ``Cases.exists [goal.u, u]) σs α Q ψ goal.target (← mkLambdaFVars #[x] prf)
    let goal := { goal with hyps := SPred.mkAnd! goal.u σs Q H }
    return (r, goal, prf)

-- goal is P ⊢ₛ T
-- The caller focuses on hypothesis H, P ⊣⊢ₛ Q ∧ H.
-- scasesCore on H, pat and k builds H ⊢ₛ H' according to pat, then calls k with H'
-- k knows context Q and builds goal Q ∧ H' ⊢ₛ T and a proof of the goal.
-- (k should not also apply H ⊢ₛ H' or unfocus because that does not work with spureCore which needs the see `P'` and not `Q ∧ _`.)
-- then scasesCore builds a proof for Q ∧ H ⊢ₛ T from P' ⊢ₛ T:
--   Q ∧ H ⊢ₛ Q ∧ H' ⊢ₛ P' ⊢ₛ T
-- and finally the caller builds the proof for
--   P ⊢ₛ Q ∧ H ⊢ₛ T
-- by unfocussing.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd17f0696d12f4ff120b1fe46df7ad92833b3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
