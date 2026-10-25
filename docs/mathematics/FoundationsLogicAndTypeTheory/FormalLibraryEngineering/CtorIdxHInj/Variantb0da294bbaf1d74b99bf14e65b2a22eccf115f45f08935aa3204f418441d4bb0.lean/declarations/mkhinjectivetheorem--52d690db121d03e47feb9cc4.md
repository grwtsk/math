# mkHInjectiveTheorem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9c1daca365b80f90172477035f97579546ed3b045a195c01a84a57bd14c87a0",
  "kind": "def",
  "lexical_name": "mkHInjectiveTheorem?",
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
  "slug": "mkhinjectivetheorem--52d690db121d03e47feb9cc4",
  "source": {
    "blob": "c53ba4279a49677b211874cf914a38c839b0c971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdxHInj/Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d690db121d03e47feb9cc4b03e8efc99037503003ef0aecccd49ebe83864b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdxHInj/Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9c1daca365b80f90172477035f97579546ed3b045a195c01a84a57bd14c87a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkHInjectiveTheorem? (thmName : Name) (indVal : InductiveVal) : MetaM TheoremVal := do
  let us := indVal.levelParams.map mkLevelParam
  let thmType ←
    forallBoundedTelescope indVal.type (indVal.numParams + indVal.numIndices) fun xs1 _ => do
    forallBoundedTelescope indVal.type (indVal.numParams + indVal.numIndices) fun xs2 _ => do
    withImplicitBinderInfos xs1 do
    withImplicitBinderInfos xs2 do
    withPrimedNames xs2 do
    withLocalDeclD `x  (mkAppN (mkConst indVal.name us) xs1) fun x1 => do
    withLocalDeclD `x' (mkAppN (mkConst indVal.name us) xs2) fun x2 => do
      let ctorIdxApp1 := mkAppN (mkConst (mkCtorIdxName indVal.name) us) (xs1.push x1)
      let ctorIdxApp2 := mkAppN (mkConst (mkCtorIdxName indVal.name) us) (xs2.push x2)
      let mut thmType ← mkEq ctorIdxApp1 ctorIdxApp2
      for a1 in (xs1.push x1).reverse, a2 in (xs2.push x2).reverse do
        if (← isProof a1) then
          continue
        let name := (← a1.fvarId!.getUserName).appendAfter "_eq"
        let eq ← mkEqHEq a1 a2
        thmType := mkForall name .default eq thmType
      mkForallFVars (xs1.push x1 ++ xs2.push x2) thmType

  let thmVal ← mkFreshExprSyntheticOpaqueMVar thmType
  let mut mvarId := thmVal.mvarId!
  mvarId := (← mvarId.introN (2 * (indVal.numParams + indVal.numIndices + 1))).2
  repeatIntroSubstRefl mvarId
  let thmVal ← instantiateMVars thmVal
  return { name := thmName, levelParams := indVal.levelParams, type := thmType, value := thmVal }
where
  repeatIntroSubstRefl (mvarId : MVarId) : MetaM Unit := do
    let type ← mvarId.getType
    if type.isForall then
      let (h, mvarId) ← mvarId.intro1
      let (h, mvarId) ← heqToEq mvarId h
      let (_, mvarId) ← substEq mvarId h
      repeatIntroSubstRefl mvarId
    else
      mvarId.refl


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdxHInj/Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdxHInj/Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53ba4279a49677b211874cf914a38c839b0c971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
