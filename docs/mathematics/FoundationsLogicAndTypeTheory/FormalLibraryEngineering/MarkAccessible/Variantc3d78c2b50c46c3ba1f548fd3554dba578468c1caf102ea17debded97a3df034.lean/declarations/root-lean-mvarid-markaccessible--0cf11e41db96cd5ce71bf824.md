# _root_.Lean.MVarId.markAccessible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37cef74a2e65ce0b6292e6e71fdc904205feda6065516b0b8b8bc03fc17ff384",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.markAccessible",
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
  "slug": "root-lean-mvarid-markaccessible--0cf11e41db96cd5ce71bf824",
  "source": {
    "blob": "f0fac797326366fe1097ba5ca590b6925a7fcfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkAccessible/Variantc3d78c2b50c46c3ba1f548fd3554dba578468c1caf102ea17debded97a3df034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cf11e41db96cd5ce71bf8243909592498cbaa2973d60d845f951b6991df6f08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkAccessible/Variantc3d78c2b50c46c3ba1f548fd3554dba578468c1caf102ea17debded97a3df034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37cef74a2e65ce0b6292e6e71fdc904205feda6065516b0b8b8bc03fc17ff384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.markAccessible (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  let mvarDecl ← mvarId.getDecl
  let mut lctx := mvarDecl.lctx
  let n := lctx.numIndices
  for i in *...n do
    let j := n - i - 1
    match lctx.getAt? j with
    | none => pure ()
    | some localDecl =>
      if localDecl.isImplementationDetail then
        continue
      if localDecl.userName.hasMacroScopes then
        continue
      let markedName := markGrindName localDecl.userName
      lctx := lctx.setUserName localDecl.fvarId markedName
  let mvarNew ← Meta.mkFreshExprMVarAt lctx mvarDecl.localInstances mvarDecl.type MetavarKind.syntheticOpaque mvarDecl.userName
  mvarId.assign mvarNew
  return mvarNew.mvarId!

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkAccessible/Variantc3d78c2b50c46c3ba1f548fd3554dba578468c1caf102ea17debded97a3df034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkAccessible/Variantc3d78c2b50c46c3ba1f548fd3554dba578468c1caf102ea17debded97a3df034.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0fac797326366fe1097ba5ca590b6925a7fcfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
