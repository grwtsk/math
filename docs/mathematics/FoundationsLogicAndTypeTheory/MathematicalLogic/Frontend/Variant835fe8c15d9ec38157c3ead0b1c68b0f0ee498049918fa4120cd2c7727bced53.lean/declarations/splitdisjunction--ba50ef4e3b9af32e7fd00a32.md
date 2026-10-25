# splitDisjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46dfadaf69a1a10b8a9f1ff3f5528aa26940ea52af654598d55a12f3c6075c8d",
  "kind": "def",
  "lexical_name": "splitDisjunction",
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
  "slug": "splitdisjunction--ba50ef4e3b9af32e7fd00a32",
  "source": {
    "blob": "3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba50ef4e3b9af32e7fd00a32a3596a5f9dbd59b2c3f8e779c2c25f19341b2ac5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46dfadaf69a1a10b8a9f1ff3f5528aa26940ea52af654598d55a12f3c6075c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def splitDisjunction (m : MetaProblem) : OmegaM Expr := do
  match m.disjunctions with
    | [] => throwError "omega could not prove the goal:\n{← formatErrorMessage m.problem}"
    | h :: t => do
      let hType ← whnfD (← inferType h)
      trace[omega] "Case splitting on {hType}"
      let_expr Or hType₁ hType₂ := hType | throwError "Unexpected disjunction {hType}"
      let p?₁ ← withoutModifyingState do withLocalDeclD `h₁ hType₁ fun h₁ => do
        withTraceNode `omega (msg := fun _ => do pure m!"Assuming fact:{indentExpr hType₁}") do
        let m₁ := { m with facts := [h₁], disjunctions := t }
        let (m₁, n) ← m₁.processFacts
        if 0 < n then
          let p₁ ← omegaImpl m₁
          let p₁ ← mkLambdaFVars #[h₁] p₁
          return some p₁
        else
          return none
      if let some p₁ := p?₁ then
         withLocalDeclD `h₂ hType₂ fun h₂ => do
          withTraceNode `omega (msg := fun _ => do pure m!"Assuming fact:{indentExpr hType₂}") do
          let m₂ := { m with facts := [h₂], disjunctions := t }
          let p₂ ← omegaImpl m₂
          let p₂ ← mkLambdaFVars #[h₂] p₂
          return mkApp6 (mkConst ``Or.elim) hType₁ hType₂ (mkConst ``False) h p₁ p₂
      else
        trace[omega] "No new facts found."
        splitDisjunction { m with disjunctions := t }

/-- Implementation of the `omega` algorithm, and handling disjunctions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
