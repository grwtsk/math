# splitLocalDecl?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f22210ee27f95124a78d4c9c1e1249ee5266b5eb88a6bd080ffde43062df4aa3",
  "kind": "def",
  "lexical_name": "splitLocalDecl?",
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
  "slug": "splitlocaldecl--c7a1fe9371c712072249555f",
  "source": {
    "blob": "926a29ced11c22889cd09f9306b3e4f9a7fe054d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7a1fe9371c712072249555f20a8d0d52c1ea23d183eeea09d912f6c835a8ccf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f22210ee27f95124a78d4c9c1e1249ee5266b5eb88a6bd080ffde43062df4aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitLocalDecl? (mvarId : MVarId) (fvarId : FVarId) : MetaM (Option (List MVarId)) := commitWhenSome? do
  mvarId.withContext do
    if let some e ← findSplit? (← instantiateMVars (← inferType (mkFVar fvarId))) then
      if e.isIte || e.isDIte then
        return (← splitIfLocalDecl? mvarId fvarId).map fun (mvarId₁, mvarId₂) => [mvarId₁, mvarId₂]
      else
        let result? ← commitWhenSome? do try
          let (fvarIds, mvarId) ← mvarId.revert #[fvarId]
          let num := fvarIds.size
          let mvarIds ← splitMatch mvarId e
          let mvarIds ← mvarIds.mapM fun mvarId => return (← mvarId.introNP num).2
          return some mvarIds
        catch ex =>
          if isDiscrGenException ex then
            return none
          else
            throw ex
        if result?.isSome then
          return result?
        -- Generalization failed, if `fvarId` is a let-decl or has forward dependencies, we try to `assert` a copy and try again
        let localDecl ← fvarId.getDecl
        if (← pure localDecl.isLet <||> exprDependsOn (← mvarId.getType) fvarId <||> fvarId.hasForwardDeps) then
          try
            let mvarId ← mvarId.assert localDecl.userName localDecl.type localDecl.toExpr
            let mvarIds ← splitMatch mvarId e
            let mvarIds ← mvarIds.mapM fun mvarId => return (← mvarId.intro1P).2
            return some mvarIds
          catch ex =>
            if isDiscrGenException ex then
              throwDiscrGenError e
            else
              throw ex
        throwDiscrGenError e
    else
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926a29ced11c22889cd09f9306b3e4f9a7fe054d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
