# evalUnfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d344a8be03966d702e89f9cecaf4cd139798ef7e8f1b3b285f87ba0b3d962bd",
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
  "slug": "evalunfold--f3ace38bad13ac8f5a0b5ca8",
  "source": {
    "blob": "7bba5cf406714df3d5c314943bdf510c2e5b5477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3ace38bad13ac8f5a0b5ca85f1ee475b8d53abf5ac3f064c428dcb8d60b29b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d344a8be03966d702e89f9cecaf4cd139798ef7e8f1b3b285f87ba0b3d962bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.Conv.unfold] def evalUnfold : Tactic := fun stx => withMainContext do
  for declNameId in stx[1].getArgs do
    withRef declNameId do
      let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
      match e with
      | .const declName _ =>
        applySimpResult (← unfold (← getLhs) declName)
      | .fvar declFVarId =>
        unless ← declFVarId.isLetVar do
          throwError "conv tactic `unfold` failed, local variable `{Expr.fvar declFVarId}` has no definition"
        let lhs ← instantiateMVars (← getLhs)
        changeLhs (← Meta.zetaDeltaFVars lhs #[declFVarId])
      | _ => throwError "conv tactic `unfold` failed, expression {e} is not a global or local constant"

end Lean.Elab.Tactic.Conv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bba5cf406714df3d5c314943bdf510c2e5b5477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
