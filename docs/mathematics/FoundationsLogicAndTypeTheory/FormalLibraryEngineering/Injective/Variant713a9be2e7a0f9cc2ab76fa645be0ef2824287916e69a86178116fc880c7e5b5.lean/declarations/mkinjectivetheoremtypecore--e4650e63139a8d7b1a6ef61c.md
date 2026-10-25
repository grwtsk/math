# mkInjectiveTheoremTypeCore?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff2fe1b57d57f6b94764619dd939e4c73a3c877b7658e7b3e393201a480c520b",
  "kind": "def",
  "lexical_name": "mkInjectiveTheoremTypeCore?",
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
  "slug": "mkinjectivetheoremtypecore--e4650e63139a8d7b1a6ef61c",
  "source": {
    "blob": "8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4650e63139a8d7b1a6ef61c9a583c7d819c96083674cbcd1e3daeb4b78ad137",
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

Occurrence: `declaration:ff2fe1b57d57f6b94764619dd939e4c73a3c877b7658e7b3e393201a480c520b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInjectiveTheoremTypeCore? (ctorVal : ConstructorVal) (useEq : Bool) : MetaM (Option Expr) := do
  let us := ctorVal.levelParams.map mkLevelParam
  let type ← elimOptParam ctorVal.type
  forallBoundedTelescope type ctorVal.numParams fun params type =>
  forallTelescope type fun args1 resultType => do
    let k (args2 args2New : Array Expr) : MetaM (Option Expr) := do
      let lhs := mkAppN (mkAppN (mkConst ctorVal.name us) params) args1
      let rhs := mkAppN (mkAppN (mkConst ctorVal.name us) params) args2
      let eq ← mkEq lhs rhs
      let eqs ← mkEqs args1 args2
      if let some andEqs := mkAnd? eqs then
        let result ← if useEq then
          mkEq eq andEqs
        else
          mkArrow eq andEqs
        mkForallFVars params (← mkForallFVars args1 (← mkForallFVars args2New result))
      else
        return none
    let rec mkArgs2 (i : Nat) (type : Expr) (args2 args2New : Array Expr) : MetaM (Option Expr) := do
      if h : i < args1.size then
        let .forallE n d b _  ← whnf type | throwError "unexpected constructor type for `{ctorVal.name}`"
        let arg1 := args1[i]
        if occursOrInType (← getLCtx) arg1 resultType then
          mkArgs2 (i + 1) (b.instantiate1 arg1) (args2.push arg1) args2New
        else
          withLocalDecl n (if useEq then BinderInfo.default else BinderInfo.implicit) d fun arg2 =>
            mkArgs2 (i + 1) (b.instantiate1 arg2) (args2.push arg2) (args2New.push arg2)
      else
        k args2 args2New
    if useEq then
      mkArgs2 0 type #[] #[]
    else
      withImplicitBinderInfos (params ++ args1) do
        mkArgs2 0 type #[] #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
