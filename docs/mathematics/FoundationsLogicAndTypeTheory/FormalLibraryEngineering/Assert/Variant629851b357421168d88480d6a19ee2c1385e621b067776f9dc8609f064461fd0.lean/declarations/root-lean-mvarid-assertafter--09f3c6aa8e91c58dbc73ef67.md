# _root_.Lean.MVarId.assertAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96d1dad5833fc16dcbdce2e2c6507ba2a14e85ef1286c3cae6081a3ac3037234",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.assertAfter",
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
  "slug": "root-lean-mvarid-assertafter--09f3c6aa8e91c58dbc73ef67",
  "source": {
    "blob": "dd5671b88a38a563b76dcad8581e9ad264eb3df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09f3c6aa8e91c58dbc73ef670bccde2b1306d1eb8dde58f3daa6610b1a964d14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96d1dad5833fc16dcbdce2e2c6507ba2a14e85ef1286c3cae6081a3ac3037234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.assertAfter (mvarId : MVarId) (fvarId : FVarId) (userName : Name) (type : Expr) (val : Expr) : MetaM AssertAfterResult := do
  mvarId.checkNotAssigned `assertAfter
  let (fvarIds, mvarId) ← mvarId.revertAfter fvarId
  let mvarId ← mvarId.assert userName type val
  let (fvarIdNew, mvarId) ← mvarId.intro1P
  let (fvarIdsNew, mvarId) ← mvarId.introNP fvarIds.size
  let lctx := (← mvarId.getDecl).lctx
  let mut subst := {}
  for f in fvarIds, fNew in fvarIdsNew do
    subst := subst.insert f (mkFVar fNew)
    Elab.pushInfoLeaf (.ofFVarAliasInfo { id := fNew, baseId := f, userName := (lctx.get! fNew).userName })
  return { fvarId := fvarIdNew, mvarId, subst }

/--
Like `Lean.MVarId.assertAfter`, but asserts the new hypothesis at the earliest point after `fvarId`
where `type` is well-formed. Note that `val` may depend on any variables in the local context.

The expression `type` may contain metavariables, and this procedure ensures they are well-formed
at the point in the local context where the hypothesis is asserted.
The metavariables in `type` are instantiated to avoid false dependencies.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5671b88a38a563b76dcad8581e9ad264eb3df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
