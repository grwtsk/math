# evalUnfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fe466fcfd767ddbf7b705240c44a44a5f1c1fe261aa778e55ae777ecdc0eb56",
  "kind": "def",
  "lexical_name": "evalUnfold",
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
  "slug": "evalunfold--fba0cffedcf9d01c50946d85",
  "source": {
    "blob": "fc4be802ed175298ae3096c467352b389b33918a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fba0cffedcf9d01c50946d85a1597460159b970c9c6fc256e54ee68a7ef9bd9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fe466fcfd767ddbf7b705240c44a44a5f1c1fe261aa778e55ae777ecdc0eb56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.unfold] def evalUnfold : Tactic := fun stx => do
  let loc := expandOptLocation stx[2]
  for declNameId in stx[1].getArgs do
    go declNameId loc
where
  go (declNameId : Syntax) (loc : Location) : TacticM Unit := withMainContext <| withRef declNameId do
    let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
    match e with
    | .const declName _ =>
      withLocation loc (unfoldLocalDecl declName) (unfoldTarget declName) (throwTacticEx `unfold · m!"did not unfold '{declName}'")
    | .fvar declFVarId =>
      unless ← declFVarId.isLetVar do
        throwError "Tactic `unfold` failed: Local variable `{Expr.fvar declFVarId}` has no definition"
      withLocation loc (zetaDeltaLocalDecl declFVarId) (zetaDeltaTarget declFVarId) (throwTacticEx `unfold · m!"did not unfold '{e}'")
    | _ => throwTacticEx `unfold (← getMainGoal) m!"expression {e} is not a global or local constant"

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4be802ed175298ae3096c467352b389b33918a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
