# traverseUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2263fb24662ee5bdf52de3297483ae4badac516c8eafc5c9cd2aeb65d4dd13ca",
  "kind": "def",
  "lexical_name": "traverseUp",
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
  "slug": "traverseup--16c2f9a0f3fe9061ede8ca27",
  "source": {
    "blob": "b2bc855ed76b5e7b9a202064afc9dfc6f29027e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16c2f9a0f3fe9061ede8ca27f645c5d693a6b72448cac7a5928129bba74acc48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2263fb24662ee5bdf52de3297483ae4badac516c8eafc5c9cd2aeb65d4dd13ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def traverseUp : TreeRef → m Unit
  | goal gref => do
    if ← visitGoalPre gref then
      traverseUp $ mvarCluster (← gref.get).parent
      visitGoalPost gref
  | rapp rref => do
    if ← visitRappPre rref then
      traverseUp $ goal (← rref.get).parent
      visitRappPost rref
  | mvarCluster cref => do
    if ← visitMVarClusterPre cref then
      if let (some parent) := (← cref.get).parent? then
        traverseUp $ rapp parent
      visitMVarClusterPost cref

end

variable [Monad m] [MonadLiftT (ST IO.RealWorld) m]

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bc855ed76b5e7b9a202064afc9dfc6f29027e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
