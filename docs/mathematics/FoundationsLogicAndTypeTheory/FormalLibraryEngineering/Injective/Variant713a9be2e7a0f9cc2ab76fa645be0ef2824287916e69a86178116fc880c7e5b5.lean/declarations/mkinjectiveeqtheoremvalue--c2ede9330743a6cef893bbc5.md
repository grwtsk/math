# mkInjectiveEqTheoremValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:737990df2a87f74aef970f8a722e78ad0b023b829d86cdc7c4352ed1b6379551",
  "kind": "def",
  "lexical_name": "mkInjectiveEqTheoremValue",
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
  "slug": "mkinjectiveeqtheoremvalue--c2ede9330743a6cef893bbc5",
  "source": {
    "blob": "8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ede9330743a6cef893bbc5cd3e1a06a3c224e1cda3a4630e485d540b969ea6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:737990df2a87f74aef970f8a722e78ad0b023b829d86cdc7c4352ed1b6379551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInjectiveEqTheoremValue (ctorVal : ConstructorVal) (targetType : Expr) : MetaM Expr := do
  forallTelescopeReducing targetType fun xs type => do
    let mvar ← mkFreshExprSyntheticOpaqueMVar type
    let [mvarId₁, mvarId₂] ← mvar.mvarId!.apply (mkConst ``Eq.propIntro)
      | throwError "unexpected number of subgoals when proving injective theorem for constructor `{ctorVal.name}`"
    let injPrf := mkConst (mkInjectiveTheoremNameFor ctorVal.name) (ctorVal.levelParams.map mkLevelParam)
    let injPrf := mkAppN injPrf xs
    mvarId₁.assign injPrf
    let mut mvarId₂ := mvarId₂
    while true do
      let t ← mvarId₂.getType
      let some (conj, body) := t.arrow?  | break
      match_expr conj with
      | And lhs rhs =>
        let [mvarId₂'] ← mvarId₂.applyN (mkApp3 (mkConst `Lean.injEq_helper) lhs rhs body) 1
            | throwError "unexpected number of goals after applying `Lean.and_imp`"
        mvarId₂ := mvarId₂'
      | _ => pure ()
      (_, mvarId₂) ← introSubstEq mvarId₂
    try mvarId₂.refl catch _ => throwError (injTheoremFailureHeader ctorVal.name)
    mkLambdaFVars xs mvar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
