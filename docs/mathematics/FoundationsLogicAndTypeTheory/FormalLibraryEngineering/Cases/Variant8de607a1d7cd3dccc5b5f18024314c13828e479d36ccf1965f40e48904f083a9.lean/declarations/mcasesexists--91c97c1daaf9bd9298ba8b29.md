# mCasesExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54c9b62160dda83d3f35a426501dd8612877906d59a78a474343aabc7d6d9a7b",
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
  "slug": "mcasesexists--91c97c1daaf9bd9298ba8b29",
  "source": {
    "blob": "524d15bda480f08d9854c39f82e667c68cafe466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91c97c1daaf9bd9298ba8b29e5919fc0c5ce01f0c728f6f33e4d74385f4f1c6c",
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

Occurrence: `declaration:54c9b62160dda83d3f35a426501dd8612877906d59a78a474343aabc7d6d9a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–77.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant8de607a1d7cd3dccc5b5f18024314c13828e479d36ccf1965f40e48904f083a9.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524d15bda480f08d9854c39f82e667c68cafe466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
