# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.clearImplDetails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f259f6295942a8057d7cfdba1dbc096db78f557668a93c3ebfa6a097efec767",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.clearImplDetails",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--599a17acb1aeb49409a98dab",
  "source": {
    "blob": "d2973d3bf97d14b703de52ae2175e9a1a07bcf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:599a17acb1aeb49409a98dab7ee95fd605cff7feb543d27f77edce38747e3d33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f259f6295942a8057d7cfdba1dbc096db78f557668a93c3ebfa6a097efec767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.clearImplDetails (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `grind.clear_aux_decls
  let mut toClear := []
  for localDecl in (← getLCtx) do
    if localDecl.isImplementationDetail then
      toClear := localDecl.fvarId :: toClear
  if toClear.isEmpty then
    return mvarId
  let mut mvarId := mvarId
  for fvarId in toClear do
    try
      mvarId ← mvarId.clear fvarId
    catch _ =>
      let decl ← fvarId.getDecl
      if decl.isAuxDecl then
        let userName := decl.userName
        throwTacticEx `grind mvarId m!"the goal mentions the declaration `{userName}`, which is being defined. To avoid circular reasoning, try rewriting the goal to eliminate `{userName}` before using `grind`."
  return mvarId

/--
In the `grind` tactic, during `Expr` internalization, we don't expect to find `Expr.mdata`.
This function ensures `Expr.mdata` is not found during internalization.
Recall that we do not internalize `Expr.lam` children.
Recall that we still have to process `Expr.forallE` because of `ForallProp.lean`.
Moreover, we may not want to reduce `p → q` to `¬p ∨ q` when `(p q : Prop)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2973d3bf97d14b703de52ae2175e9a1a07bcf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
