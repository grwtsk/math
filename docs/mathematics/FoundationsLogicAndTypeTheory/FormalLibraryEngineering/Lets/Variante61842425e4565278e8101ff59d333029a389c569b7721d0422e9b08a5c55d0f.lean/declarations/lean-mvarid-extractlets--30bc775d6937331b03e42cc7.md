# Lean.MVarId.extractLets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943651446bc424821a534c47175747f9a548ccbfc72f0803b50337421805289a",
  "kind": "def",
  "lexical_name": "Lean.MVarId.extractLets",
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
  "slug": "lean-mvarid-extractlets--30bc775d6937331b03e42cc7",
  "source": {
    "blob": "429bd0a453d6590b36a5b0c1ba25545d00092b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 342,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30bc775d6937331b03e42cc7d107e04425caa27e43d8ba89f35344b35e684a19",
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

Occurrence: `declaration:943651446bc424821a534c47175747f9a548ccbfc72f0803b50337421805289a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.extractLets (mvarId : MVarId) (givenNames : List Name) (config : ExtractLetsConfig := {}) :
    MetaM ((Array FVarId × List Name) × MVarId) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `extract_lets
    let ty ← mvarId.getType
    Meta.extractLets #[ty] givenNames (config := config) fun fvarIds es givenNames' => do
      let ty' := es[0]!
      if fvarIds.isEmpty && ty == ty' then
        throwMadeNoProgress `extract_lets mvarId
      let g ← mkFreshExprSyntheticOpaqueMVar ty' (← mvarId.getTag)
      mvarId.assign <| ← mkLetFVars (usedLetOnly := false) (fvarIds.map .fvar) g
      return ((fvarIds, givenNames'), g.mvarId!)

/--
Like `Lean.MVarId.extractLets` but extracts lets from a local declaration.
If the local declaration has a value, then both its type and value are modified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bd0a453d6590b36a5b0c1ba25545d00092b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
