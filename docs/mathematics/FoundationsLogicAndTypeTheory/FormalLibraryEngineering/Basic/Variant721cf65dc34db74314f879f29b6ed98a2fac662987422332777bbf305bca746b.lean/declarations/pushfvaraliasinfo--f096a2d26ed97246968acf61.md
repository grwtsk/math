# pushFVarAliasInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b457bf5cf5152cd51c1ecf87ca99d4dc63b180ae56a1f8150915fefc162e44f6",
  "kind": "def",
  "lexical_name": "pushFVarAliasInfo",
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
  "slug": "pushfvaraliasinfo--f096a2d26ed97246968acf61",
  "source": {
    "blob": "e72f2743d0d1fa382558106de885429c8c200b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f096a2d26ed97246968acf61d26481d1f4f43e24c04058d8495793e9d7687867",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b457bf5cf5152cd51c1ecf87ca99d4dc63b180ae56a1f8150915fefc162e44f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushFVarAliasInfo [Monad m] [MonadInfoTree m]
    (oldFVars newFVars : Array FVarId) (newLCtx : LocalContext) : m Unit := do
  for old in oldFVars, new in newFVars do
    if old != new then
      let decl := newLCtx.get! new
      pushInfoLeaf (.ofFVarAliasInfo { id := new, baseId := old, userName := decl.userName })

/-- Function to help do the revert/intro pattern, running some code inside a context
where certain variables have been reverted before re-introing them.
It will push `FVarId` alias information into info trees for you according to a simple protocol.

- `fvarIds` is an array of `fvarIds` to revert. These are passed to
  `Lean.MVarId.revert` with `preserveOrder := true`, hence the function
  raises an error if they cannot be reverted in the provided order.
- `k` is given the goal with all the variables reverted and
  the array of reverted `FVarId`s, with the requested `FVarId`s at the beginning.
  It must return a tuple of a value, an array describing which `FVarIds` to link,
  and a mutated `MVarId`.

The `a : Array (Option FVarId)` array returned by `k` is interpreted in the following way.
The function will intro `a.size` variables, and then for each non-`none` entry we
create an FVar alias between it and the corresponding `intro`ed variable.
For example, having `k` return `fvars.map .some` causes all reverted variables to be
`intro`ed and linked.

Returns the value returned by `k` along with the resulting goal.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72f2743d0d1fa382558106de885429c8c200b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
