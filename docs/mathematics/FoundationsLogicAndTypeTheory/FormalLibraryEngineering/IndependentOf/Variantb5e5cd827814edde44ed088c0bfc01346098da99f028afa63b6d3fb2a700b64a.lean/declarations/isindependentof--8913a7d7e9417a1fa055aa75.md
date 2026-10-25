# isIndependentOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7506b477019ea44fe0b85a91a3e3b062fa5be1ae29fcad14bebcb83dc2eb896",
  "kind": "def",
  "lexical_name": "isIndependentOf",
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
  "slug": "isindependentof--8913a7d7e9417a1fa055aa75",
  "source": {
    "blob": "460b578412ecdb4922b790bbfcbc19f51dfc18df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentOf/Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8913a7d7e9417a1fa055aa759d82ceba20f0a141efd734998d6bf1d3c0fc96ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentOf/Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7506b477019ea44fe0b85a91a3e3b062fa5be1ae29fcad14bebcb83dc2eb896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isIndependentOf (L : List MVarId) (g : MVarId) : MetaM Bool := g.withContext do
  let t ← instantiateMVars (← g.getType)
  if t.hasExprMVar then
    -- If the goal's type contains other meta-variables,
    -- we conservatively say that `g` is not independent.
    -- It would be possible to check if `L` depends on these meta-variables.
    return false
  if (← inferType t).isProp then
    -- If the goal is propositional,
    -- proof-irrelevance ensures it is independent of any other goals.
    return true
  if ← g.isSubsingleton then
    -- If the goal is a subsingleton, it is independent of any other goals.
    return true
  -- Finally, we check if the goal `g` appears in the type of any of the goals `L`.
  L.allM fun g' => do pure !((← getMVarDependencies g').contains g)

end Lean.MVarId
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentOf/Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentOf/Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460b578412ecdb4922b790bbfcbc19f51dfc18df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
