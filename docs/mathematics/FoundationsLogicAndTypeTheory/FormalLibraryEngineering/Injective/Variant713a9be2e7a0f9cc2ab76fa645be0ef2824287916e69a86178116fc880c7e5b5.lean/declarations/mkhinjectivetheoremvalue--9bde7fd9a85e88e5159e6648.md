# mkHInjectiveTheoremValue?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a903569ac067595916c8b902754d57245174a27905345ffb75c60d885d786ca",
  "kind": "def",
  "lexical_name": "mkHInjectiveTheoremValue?",
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
  "slug": "mkhinjectivetheoremvalue--9bde7fd9a85e88e5159e6648",
  "source": {
    "blob": "8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bde7fd9a85e88e5159e6648cdd6de562935b309d21f01c3918b9a9f93dfd7ef",
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

Occurrence: `declaration:3a903569ac067595916c8b902754d57245174a27905345ffb75c60d885d786ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkHInjectiveTheoremValue? (ctorVal : ConstructorVal) (typeInfo : MkHInjTypeResult) : MetaM (Option Expr) := do
  forallTelescopeReducing typeInfo.thmType fun xs type => do
    let noConfusionName := ctorVal.induct.str "noConfusion"
    let noConfusion := mkConst noConfusionName (0 :: typeInfo.us)
    let noConfusion := mkApp noConfusion type
    let n := xs.size - ctorVal.numParams - typeInfo.numIndices - 1
    let eqs := xs[n...*].toArray
    let eqExprs ← eqs.mapM fun x => do
      match_expr (← inferType x) with
      | Eq _ lhs rhs => return (lhs, rhs)
      | HEq _ lhs _ rhs => return (lhs, rhs)
      | _ => failedToGenHInj ctorVal
    let (args₁, args₂) := eqExprs.unzip
    let noConfusion := mkAppN (mkAppN (mkAppN noConfusion args₁) args₂) eqs
    let .forallE _ d _ _ ← whnf (← inferType noConfusion) | failedToGenHInj ctorVal
    let mvar ← mkFreshExprSyntheticOpaqueMVar d
    let noConfusion := mkApp noConfusion mvar
    let mvarId := mvar.mvarId!
    let (_, mvarId) ← mvarId.intros
    splitAndAssumption mvarId ctorVal.name
    let result ← instantiateMVars noConfusion
    mkLambdaFVars xs result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
