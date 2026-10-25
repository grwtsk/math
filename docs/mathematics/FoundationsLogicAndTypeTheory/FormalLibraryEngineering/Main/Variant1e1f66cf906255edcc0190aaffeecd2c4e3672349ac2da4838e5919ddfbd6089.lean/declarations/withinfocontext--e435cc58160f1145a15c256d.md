# withInfoContext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cc276b672ffe188e66eb90e0e66aba44d10e51cd530da0c5a2f400001d94dea",
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
  "slug": "withinfocontext--e435cc58160f1145a15c256d",
  "source": {
    "blob": "c0bfe195920efb6aa1186ad04141f4cbcfde72f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e435cc58160f1145a15c256d629b16cffecc49217d62e8379ed74f110eb3c0b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cc276b672ffe188e66eb90e0e66aba44d10e51cd530da0c5a2f400001d94dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–304.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0bfe195920efb6aa1186ad04141f4cbcfde72f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
