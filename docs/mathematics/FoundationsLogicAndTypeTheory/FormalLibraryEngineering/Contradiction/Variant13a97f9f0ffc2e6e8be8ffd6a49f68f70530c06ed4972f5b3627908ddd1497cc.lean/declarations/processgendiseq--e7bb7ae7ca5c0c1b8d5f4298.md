# processGenDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d09e2926f9aa7a6bad5226b585890846f66c0fbc2b8e2f244ac039c5422b21f6",
  "kind": "def",
  "lexical_name": "processGenDiseq",
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
  "slug": "processgendiseq--e7bb7ae7ca5c0c1b8d5f4298",
  "source": {
    "blob": "db6543db78507c677c443e56d1aa8ff48922a74d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7bb7ae7ca5c0c1b8d5f4298b046efea5a2f582862f5d6a93b059944cda7440f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d09e2926f9aa7a6bad5226b585890846f66c0fbc2b8e2f244ac039c5422b21f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def processGenDiseq (mvarId : MVarId) (localDecl : LocalDecl) : MetaM Bool := do
  assert! isGenDiseq localDecl.type
  let val? ← withNewMCtxDepth do
    let (args, _, _) ← forallMetaTelescope localDecl.type
    let mask  := mkGenDiseqMask localDecl.type
    for arg in args, useRefl in mask do
      if useRefl then
        /- Remark: we should not try to use `refl` for equalities that have forward dependencies because
           they correspond to constructor fields. We did not use to have this extra test, and this method failed
           to close the following goal.
           ```
            ...
            ns' : NEList String
            h' : NEList.notUno ns' = true
            : ∀ (ns : NEList String) (h : NEList.notUno ns = true), Value.lam (Lambda.mk ns' h') = Value.lam (Lambda.mk ns h) → False
            ⊢ h_1 l a = h_2 v

           ```
         -/
        if let some (_, lhs, _) ← matchEq? (← inferType arg) then
          unless (← isDefEq arg (← mkEqRefl lhs)) do
            return none
        if let some (_, lhs, _,  _) ← matchHEq? (← inferType arg) then
          unless (← isDefEq arg (← mkHEqRefl lhs)) do
            return none
    let falseProof ← instantiateMVars (mkAppN localDecl.toExpr args)
    if (← hasAssignableMVar falseProof) then
      return none
    return some (← mkFalseElim (← mvarId.getType) falseProof)
  if let some val := val? then
    mvarId.assign val
    return true
  else
    return false

/--
Return `true` if goal `mvarId` has contradictory hypotheses.
See `MVarId.contradiction` for the list of tests performed by this method.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6543db78507c677c443e56d1aa8ff48922a74d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
