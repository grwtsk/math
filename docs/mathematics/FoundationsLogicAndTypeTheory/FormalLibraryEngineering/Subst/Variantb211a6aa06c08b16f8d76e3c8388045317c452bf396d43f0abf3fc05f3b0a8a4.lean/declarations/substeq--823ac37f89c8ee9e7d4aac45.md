# substEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b12a27924b4a6793615f5094b7f66dd988210f94682dcc3576148a9f13635d75",
  "kind": "def",
  "lexical_name": "substEq",
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
  "slug": "substeq--823ac37f89c8ee9e7d4aac45",
  "source": {
    "blob": "0f6c2fa4b30769165cf59ac71d787532758996fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variantb211a6aa06c08b16f8d76e3c8388045317c452bf396d43f0abf3fc05f3b0a8a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:823ac37f89c8ee9e7d4aac45ea261afa6df23847161f4a45903f4efcca6cb64d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variantb211a6aa06c08b16f8d76e3c8388045317c452bf396d43f0abf3fc05f3b0a8a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b12a27924b4a6793615f5094b7f66dd988210f94682dcc3576148a9f13635d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def substEq (mvarId : MVarId) (hFVarId : FVarId)
    (fvarSubst : FVarSubst := {}) : MetaM (FVarSubst × MVarId) := do
  let (hFVarId, mvarId) ← heqToEq mvarId hFVarId
  mvarId.withContext do
    let localDecl ← hFVarId.getDecl
    let error {α} _ : MetaM α := throwTacticEx `subst mvarId
      m!"invalid equality proof, it is not of the form (x = t) or (t = x){indentExpr localDecl.type}"
    let some (_, lhs, rhs) ← matchEq? localDecl.type | error ()
    let substReduced (newType : Expr) (symm : Bool) : MetaM (FVarSubst × MVarId) := do
      let mvarId ← mvarId.assert localDecl.userName newType (mkFVar hFVarId)
      let (hFVarId', mvarId) ← mvarId.intro1P
      let mvarId ← mvarId.clear hFVarId
      substCore mvarId hFVarId' (symm := symm) (tryToSkip := true) (fvarSubst := fvarSubst)
    let rhs' ← whnf rhs
    if rhs'.isFVar then
      if rhs != rhs' then
        substReduced (← mkEq lhs rhs') true
      else
        substCore mvarId hFVarId (symm := true) (tryToSkip := true) (fvarSubst := fvarSubst)
    else
      let lhs' ← whnf lhs
      if lhs'.isFVar then
        if lhs != lhs' then
          substReduced (← mkEq lhs' rhs) false
        else
          substCore mvarId hFVarId (symm := false) (tryToSkip := true) (fvarSubst := fvarSubst)
      else error ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variantb211a6aa06c08b16f8d76e3c8388045317c452bf396d43f0abf3fc05f3b0a8a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variantb211a6aa06c08b16f8d76e3c8388045317c452bf396d43f0abf3fc05f3b0a8a4.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6c2fa4b30769165cf59ac71d787532758996fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
