# elabSubsingletonInsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd9858d622f6af8a65bd5e018455f030584c5c4d1e06fe6b7cb577ee6501a8d7",
  "kind": "def",
  "lexical_name": "elabSubsingletonInsts",
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
  "slug": "elabsubsingletoninsts--4ae45dba8b7075fe26af2668",
  "source": {
    "blob": "ccaa8606895aad9adadab57339bb5f8d5d16411c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant3f68053c25f001e8b482c37fb909ec09c407dca89e8094f209839296e90f05e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ae45dba8b7075fe26af266896093c6c6f68dfa8d4afde3da834a1db49fc8adb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant3f68053c25f001e8b482c37fb909ec09c407dca89e8094f209839296e90f05e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd9858d622f6af8a65bd5e018455f030584c5c4d1e06fe6b7cb577ee6501a8d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabSubsingletonInsts
    (instTerms? : Option (Array Term)) : TermElabM (Array (Term × AbstractMVarsResult)) := do
  if let some instTerms := instTerms? then
    go instTerms.toList #[]
  else
    return #[]
where
  /-- Main loop for `addSubsingletonInsts`. -/
  go (instTerms : List Term) (insts : Array (Term × AbstractMVarsResult)) :
      TermElabM (Array (Term × AbstractMVarsResult)) := do
    match instTerms with
    | [] => return insts
    | instTerm :: instTerms =>
      let inst ← withNewMCtxDepth <| Term.withoutModifyingElabMetaStateWithInfo do
        withRef instTerm <| Term.withoutErrToSorry do
          let e ← Term.elabTerm instTerm none
          Term.synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
          let e ← instantiateMVars e
          unless (← isClass? (← inferType e)).isSome do
            throwError "Not an instance. Term has type{indentD <| ← inferType e}"
          if e.hasMVar then
            let r ← abstractMVars e
            -- Change all instance arguments corresponding to the mvars to be inst implicit.
            let e' ← forallBoundedTelescope (← inferType r.expr) r.numMVars fun args _ => do
              let newBIs ← args.filterMapM fun arg => do
                if (← isClass? (← inferType arg)).isSome then
                  return some (arg.fvarId!, .instImplicit)
                else
                  return none
              withNewBinderInfos newBIs do
                mkLambdaFVars args (r.expr.beta args)
            pure { r with expr := e' }
          else
            pure { paramNames := #[], mvars := #[], expr := e }
      go instTerms (insts.push (instTerm, inst))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant3f68053c25f001e8b482c37fb909ec09c407dca89e8094f209839296e90f05e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant3f68053c25f001e8b482c37fb909ec09c407dca89e8094f209839296e90f05e3.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccaa8606895aad9adadab57339bb5f8d5d16411c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
