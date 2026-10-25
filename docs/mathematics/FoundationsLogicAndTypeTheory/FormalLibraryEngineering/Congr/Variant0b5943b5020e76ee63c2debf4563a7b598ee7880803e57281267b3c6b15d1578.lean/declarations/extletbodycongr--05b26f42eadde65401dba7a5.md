# extLetBodyCongr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f13f281f0bb11e161ce6ad142edb2e9b529daf8759d76915c9f335a0685efc6",
  "kind": "def",
  "lexical_name": "extLetBodyCongr?",
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
  "slug": "extletbodycongr--05b26f42eadde65401dba7a5",
  "source": {
    "blob": "acba6fb6336dcf42ef0bedba9358f8cb08f221c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05b26f42eadde65401dba7a544de3f93b8ae0095168ac125452acae3ad209c1d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f13f281f0bb11e161ce6ad142edb2e9b529daf8759d76915c9f335a0685efc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extLetBodyCongr? (mvarId : MVarId) (lhs rhs : Expr) : MetaM (Option MVarId) := do
  match lhs with
  | .letE n t v b _ =>
    let u₁ ← getLevel t
    let f := mkLambda n .default t b
    unless (← isTypeCorrect f) do
      throwError "failed to abstract let-expression, result is not type correct"
    let (β, u₂, f') ← withLocalDeclD n t fun a => do
      let type ← inferType (mkApp f a)
      let β ← mkLambdaFVars #[a] type
      let u₂ ← getLevel type
      let rhsBody ← mkFreshExprMVar type
      let f' ← mkLambdaFVars #[a] rhsBody
      let rhs' := mkLet n t v f'.bindingBody!
      unless (← isDefEq rhs rhs') do
        throwError "failed to go inside let-declaration, type error"
      return (β, u₂, f')
    let (arg, mvarId') ← withLocalDeclD n t fun x => do
      let eqLhs := f.beta #[x]
      let eqRhs := f'.beta #[x]
      let mvarNew ← mkFreshExprSyntheticOpaqueMVar (← mkEq eqLhs eqRhs)
      let arg ← mkLambdaFVars #[x] mvarNew
      return (arg, mvarNew.mvarId!)
    let val := mkApp6 (mkConst ``let_body_congr [u₁, u₂]) t β f f' v arg
    mvarId.assign val
    return some (← markAsConvGoal mvarId')
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acba6fb6336dcf42ef0bedba9358f8cb08f221c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
