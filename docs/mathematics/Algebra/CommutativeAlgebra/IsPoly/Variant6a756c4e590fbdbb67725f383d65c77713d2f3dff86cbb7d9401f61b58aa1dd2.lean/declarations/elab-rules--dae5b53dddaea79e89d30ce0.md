# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b394af9c7d383739b5ae6fae701b1231f48e83f2fdcf3f6faf5cc1ca71d31018",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--dae5b53dddaea79e89d30ce0",
  "source": {
    "blob": "06c3a48d961f5fe5edab2d399be3bfecd4087a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 446,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dae5b53dddaea79e89d30ce09cf7b39838ff4b887f25320328c2e39c0b5c00fc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b394af9c7d383739b5ae6fae701b1231f48e83f2fdcf3f6faf5cc1ca71d31018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic | `(tactic| ghost_calc $[$ids']*) => do
  let ids ← ids'.mapM getLocalOrIntro
  withMainContext do
  let idsS ← ids.mapM (fun id => Elab.Term.exprToSyntax (.fvar id))
  let some (α, lhs, rhs) := (← getMainTarget'').eq?
    | throwError "ghost_calc expecting target to be an equality"
  let (``WittVector, #[_, R]) := α.getAppFnArgs
    | throwError "ghost_calc expecting target to be an equality of `WittVector`s"
  let instR ← Meta.synthInstance (← Meta.mkAppM ``CommRing #[R])
  unless instR.isFVar do
    throwError "{← Meta.inferType instR} instance is not local"
  let f ← Meta.mkLambdaFVars (#[R, instR] ++ ids.map .fvar) lhs
  let g ← Meta.mkLambdaFVars (#[R, instR] ++ ids.map .fvar) rhs
  let fS ← Elab.Term.exprToSyntax f
  let gS ← Elab.Term.exprToSyntax g
  match idsS with
    | #[x] => evalTactic (← `(tactic| refine IsPoly.ext (f := $fS) (g := $gS) ?_ ?_ ?_ _ $x))
    | #[x, y] => evalTactic (← `(tactic| refine IsPoly₂.ext (f := $fS) (g := $gS) ?_ ?_ ?_ _ $x $y))
    | _ => throwError "ghost_calc takes either one or two arguments"
  let nm ← withMainContext <|
    if let .fvar fvarId := (R : Expr) then
      fvarId.getUserName
    else
      Meta.getUnusedUserName `R
  evalTactic <| ← `(tactic| iterate 2 infer_instance)
  let R := mkIdent nm
  evalTactic <| ← `(tactic| clear! $R)
  evalTactic <| ← `(tactic| intro $(mkIdent nm):ident $(mkIdent (.str nm "_inst")):ident $ids'*)

end Tactic

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c3a48d961f5fe5edab2d399be3bfecd4087a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
