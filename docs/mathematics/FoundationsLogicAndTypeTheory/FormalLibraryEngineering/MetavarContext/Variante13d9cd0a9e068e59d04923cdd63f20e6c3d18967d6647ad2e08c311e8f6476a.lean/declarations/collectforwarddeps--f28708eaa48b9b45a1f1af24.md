# collectForwardDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddbe8fcba0f6444c984de77e4581c1129b3026ccbd14eb01884bd6624e55811b",
  "kind": "def",
  "lexical_name": "collectForwardDeps",
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
  "slug": "collectforwarddeps--f28708eaa48b9b45a1f1af24",
  "source": {
    "blob": "7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1045,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f28708eaa48b9b45a1f1af248e07ba2bf883f68d97e35f0542c4b2ef289820be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddbe8fcba0f6444c984de77e4581c1129b3026ccbd14eb01884bd6624e55811b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1045–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectForwardDeps (lctx : LocalContext) (toRevert : Array Expr) (generalizeNondepLet := true) : M (Array Expr) := do
  if toRevert.size == 0 then
    pure toRevert
  else
    if (← preserveOrder) then
      -- Make sure toRevert[j] does not depend on toRevert[i] for j < i
      toRevert.size.forM fun i _ => do
        let fvar := toRevert[i]
        i.forM fun j _ => do
          let prevFVar := toRevert[j]
          let prevDecl := lctx.getFVar! prevFVar
          if (← localDeclDependsOn prevDecl fvar.fvarId! (generalizeNondepLet := generalizeNondepLet)) then
            throw (Exception.revertFailure (← getMCtx) lctx toRevert prevDecl.userName.toString)
    let newToRevert      := if (← preserveOrder) then toRevert else Array.mkEmpty toRevert.size
    let firstDeclToVisit := getLocalDeclWithSmallestIdx lctx toRevert
    let initSize         := newToRevert.size
    lctx.foldlM (init := newToRevert) (start := firstDeclToVisit.index) fun (newToRevert : Array Expr) decl => do
      if initSize.any fun i _ => decl.fvarId == newToRevert[i]!.fvarId! then
        return newToRevert
      else if toRevert.any fun x => decl.fvarId == x.fvarId! then
        return newToRevert.push decl.toExpr
      else if (← findLocalDeclDependsOn decl (newToRevert.any fun x => x.fvarId! == ·) (generalizeNondepLet := generalizeNondepLet)) then
        return newToRevert.push decl.toExpr
      else
        return newToRevert

/-- Create a new `LocalContext` by removing the free variables in `toRevert` from `lctx`.
    We use this function when we create auxiliary metavariables at `elimMVarDepsAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean#L1045).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
