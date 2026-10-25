# elabSubsingletonInsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad03d6f75a34f2e028279e56226284195ff05a91f93cb3f58c889931079fa64",
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
  "slug": "elabsubsingletoninsts--9a664e9ce48c44386a609804",
  "source": {
    "blob": "c5d461075f406acd1e452bde439c00ac00d6ef70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a664e9ce48c44386a6098040d25f92c06472b48cb6999c5f3fb6bb48a632243",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad03d6f75a34f2e028279e56226284195ff05a91f93cb3f58c889931079fa64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–186.

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
            pure { paramNames := #[], numMVars := 0, expr := e }
      go instTerms (insts.push (instTerm, inst))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d461075f406acd1e452bde439c00ac00d6ef70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
