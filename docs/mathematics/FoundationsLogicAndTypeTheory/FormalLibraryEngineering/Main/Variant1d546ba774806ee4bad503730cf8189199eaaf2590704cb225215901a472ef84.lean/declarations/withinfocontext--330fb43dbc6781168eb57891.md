# withInfoContext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507479d79ba5f0f9d29139212f8fc8a190751887a6d0f773a10b433f503f2d5a",
  "kind": "def",
  "lexical_name": "withInfoContext'",
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
  "slug": "withinfocontext--330fb43dbc6781168eb57891",
  "source": {
    "blob": "2655bd1b73160d1ad2ff4c1e86d0b00514e4cb8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:330fb43dbc6781168eb57891338a2c2645727e0ae351ab114bdd967cf6a8f15d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507479d79ba5f0f9d29139212f8fc8a190751887a6d0f773a10b433f503f2d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withInfoContext'
    [MonadFinally m]
    (x : m α)
    (mkInfo : α → m (Sum Info MVarId))
    (mkInfoOnError : m Info) :
    m α := do
  if (← getInfoState).enabled then
    let treesSaved ← getResetInfoTrees
    Prod.fst <$> MonadFinally.tryFinally' x fun a? => do
      let info ← do
        match a? with
        | none => pure <| .inl <| ← mkInfoOnError
        | some a => mkInfo a
      modifyInfoTrees fun trees =>
        match info with
        | Sum.inl info   => treesSaved.push <| InfoTree.node info trees
        | Sum.inr mvarId => treesSaved.push <| InfoTree.hole mvarId
  else
    x

/-- Saves the current list of trees `t₀`, runs `x` to produce a new tree list `t₁` and
runs `mkInfoTree t₁` to get `n : InfoTree` and then restores the trees to be `t₀ ++ [n]`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1d546ba774806ee4bad503730cf8189199eaaf2590704cb225215901a472ef84.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2655bd1b73160d1ad2ff4c1e86d0b00514e4cb8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
