# replaceWithLDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:837aa78cf4baf4a4df78eb8984e88ea73c26d4cbd4899127a9708b3d3b5955d0",
  "kind": "def",
  "lexical_name": "replaceWithLDecls",
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
  "slug": "replacewithldecls--2f4f8b3f5ac0224a3ac9cec2",
  "source": {
    "blob": "29b2d4d6fe50f8df398c8c1dc56232eba762f18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f4f8b3f5ac0224a3ac9cec2577497d2932457fbaf7188bc713e2f6f5a937f78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:837aa78cf4baf4a4df78eb8984e88ea73c26d4cbd4899127a9708b3d3b5955d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceWithLDecls (stx : Syntax) : SetMReplaceM Syntax :=
  stx.replaceM fun stx ↦ do
    let fvar ←
      if let `(?$n:ident) := stx then
        let name := n.getId
        (← get).holes.get? name |>.getDM do
          createLDecl stx name
      else if let `(?_) := stx then
        let name ← mkFreshUserName `x
        createLDecl stx name
      else
        -- Not a synthetic hole.
        return none
    return ← withRef stx <| (← get).goal.withContext <| Term.exprToSyntax (.fvar fvar)
  where
    createLDecl stx name : SetMReplaceM FVarId := do
      let mvar ← mkFreshExprMVar none
      registerMVarErrorCustomInfo mvar.mvarId! stx m!"`{stx}` could not be assigned"
      let goal ← (← get).goal.define name (← mvar.mvarId!.getType) mvar
      let (fvar, goal) ← goal.intro1P
      modify fun s ↦ {
        goal
        holes := s.holes.insert name fvar
        newMVars := s.newMVars.push mvar.mvarId! }
      return fvar

/-- Check that `p` and `e` are reducibly definitionally equal in the context of goal `goal`, or
throw a nicely-formatted error.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b2d4d6fe50f8df398c8c1dc56232eba762f18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
