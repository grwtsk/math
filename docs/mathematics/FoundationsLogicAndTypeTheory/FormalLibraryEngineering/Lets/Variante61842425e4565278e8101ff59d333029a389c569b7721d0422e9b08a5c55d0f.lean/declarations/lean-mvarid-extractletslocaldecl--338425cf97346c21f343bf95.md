# Lean.MVarId.extractLetsLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6e8a0361c4fbc743b24da9cf0ece6479c7a48358bf45bfd8e6da4c78a1390e6",
  "kind": "def",
  "lexical_name": "Lean.MVarId.extractLetsLocalDecl",
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
  "slug": "lean-mvarid-extractletslocaldecl--338425cf97346c21f343bf95",
  "source": {
    "blob": "429bd0a453d6590b36a5b0c1ba25545d00092b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 359,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:338425cf97346c21f343bf9519c5b6449d4ca564cacb1708f4ab1732f26a869a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6e8a0361c4fbc743b24da9cf0ece6479c7a48358bf45bfd8e6da4c78a1390e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.extractLetsLocalDecl (mvarId : MVarId) (fvarId : FVarId) (givenNames : List Name) (config : ExtractLetsConfig := {}) :
    MetaM ((Array FVarId × List Name) × MVarId) := do
  mvarId.checkNotAssigned `extract_lets
  mvarId.withReverted #[fvarId] fun mvarId fvars => mvarId.withContext do
    let finalize (fvarIds : Array FVarId) (givenNames' : List Name) (targetNew : Expr) := do
      let g ← mkFreshExprSyntheticOpaqueMVar targetNew (← mvarId.getTag)
      mvarId.assign <| ← mkLetFVars (usedLetOnly := false) (fvarIds.map .fvar) g
      return ((fvarIds, givenNames'), fvars.map .some, g.mvarId!)
    match ← mvarId.getType with
    | .forallE n t b i =>
      Meta.extractLets #[t] givenNames (config := config) fun fvarIds es givenNames' => do
        let t' := es[0]!
        if fvarIds.isEmpty && t == t' then
          throwMadeNoProgress `extract_lets mvarId
        finalize fvarIds givenNames' (.forallE n t' b i)
    | .letE n t v b ndep =>
      Meta.extractLets #[t, v] givenNames (config := config) fun fvarIds es givenNames' => do
        let t' := es[0]!
        let v' := es[1]!
        if fvarIds.isEmpty && t == t' && v == v' then
          throwMadeNoProgress `extract_lets mvarId
        finalize fvarIds givenNames' (.letE n t' v' b ndep)
    | _ => throwTacticEx `extract_lets mvarId "unexpected auxiliary target"

/--
Lifts `let` and `have` expressions in target as far out as possible.
Throws an exception if nothing is lifted.

Like `Lean.MVarId.extractLets`, but top-level lets are not added to the local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bd0a453d6590b36a5b0c1ba25545d00092b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
