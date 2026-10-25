# discharge?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c221ed41785153654406570d9736a3c275cf7a7cfdf77ede0dc20c4aa5ebe9a",
  "kind": "def",
  "lexical_name": "discharge?",
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
  "slug": "discharge--ef188464232aeda4b349ad29",
  "source": {
    "blob": "d6d48ef371e536bcfb63fdbce623bc73b9d88708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef188464232aeda4b349ad29577eaec3c540ca3f110d6aa34bb8638625041ae8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c221ed41785153654406570d9736a3c275cf7a7cfdf77ede0dc20c4aa5ebe9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def discharge? (numIndices : Nat) (useDecide : Bool) : Simp.Discharge := fun prop => do
  let prop ← instantiateMVars prop
  trace[Meta.Tactic.splitIf] "discharge? {prop}, {prop.notNot?}"
  if useDecide then
    let prop ← instantiateMVars prop
    if !prop.hasFVar && !prop.hasMVar then
      let d ← mkDecide prop
      let r ← withDefault <| whnf d
      if r.isConstOf ``true then
        return some <| mkApp3 (mkConst ``of_decide_eq_true) prop d.appArg! (← mkEqRefl (mkConst ``true))
  (← getLCtx).findDeclRevM? fun localDecl => do
     if localDecl.index ≥ numIndices || localDecl.isAuxDecl then
       return none
     else if (← isDefEq prop localDecl.type) then
       return some localDecl.toExpr
     else match prop.notNot? with
       | none => return none
       | some arg =>
         if (← isDefEq arg localDecl.type) then
           return some (mkApp2 (mkConst ``not_not_intro) arg localDecl.toExpr)
         else
           return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d48ef371e536bcfb63fdbce623bc73b9d88708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
