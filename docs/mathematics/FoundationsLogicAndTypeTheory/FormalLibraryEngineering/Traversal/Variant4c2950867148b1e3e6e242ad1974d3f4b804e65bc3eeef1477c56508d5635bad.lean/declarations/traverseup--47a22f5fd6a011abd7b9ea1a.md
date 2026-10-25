# traverseUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46362f50604df85a16f6fbaf972292417cbfd54bb8bb29b53f72e6e9403580b1",
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
  "slug": "traverseup--47a22f5fd6a011abd7b9ea1a",
  "source": {
    "blob": "160c9f3d1a0d393d81a6da01ff5af66249a1542e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant4c2950867148b1e3e6e242ad1974d3f4b804e65bc3eeef1477c56508d5635bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47a22f5fd6a011abd7b9ea1a7027ad49af031866673b0898a1c664e11481268c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant4c2950867148b1e3e6e242ad1974d3f4b804e65bc3eeef1477c56508d5635bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46362f50604df85a16f6fbaf972292417cbfd54bb8bb29b53f72e6e9403580b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant4c2950867148b1e3e6e242ad1974d3f4b804e65bc3eeef1477c56508d5635bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant4c2950867148b1e3e6e242ad1974d3f4b804e65bc3eeef1477c56508d5635bad.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `160c9f3d1a0d393d81a6da01ff5af66249a1542e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
