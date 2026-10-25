# checkAcyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0c2173ddbe0e215635b03aae319d7597112234ffc779c26672c98bdffe832e3",
  "kind": "def",
  "lexical_name": "checkAcyclic",
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
  "slug": "checkacyclic--13ea0eb4b21b0ac746615763",
  "source": {
    "blob": "d9e2601aea93c40ac0ec3296856281b0b1dc4cd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13ea0eb4b21b0ac746615763f6b3b21f921455862e03c6a3e7cc95b517ce89b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0c2173ddbe0e215635b03aae319d7597112234ffc779c26672c98bdffe832e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAcyclic (root : MVarClusterRef) : CoreM Unit := do
  -- We use arrays to store the visited nodes (rather than some data structure
  -- with asymptotically faster lookup) because STRefs only have pointer
  -- equality, not pointer comparison. Besides, this is probably faster anyway
  -- for small to medium trees.
  let visitedGoalRefs        : IO.Ref (Array GoalRef)        ← ST.mkRef #[]
  let visitedRappRefs        : IO.Ref (Array RappRef)        ← ST.mkRef #[]
  let visitedMVarClusterRefs : IO.Ref (Array MVarClusterRef) ← ST.mkRef #[]
  preTraverseDown
    (λ gref => go visitedGoalRefs gref)
    (λ rref => go visitedRappRefs rref)
    (λ cref => go visitedMVarClusterRefs cref)
    (TreeRef.mvarCluster root)
  where
    go {α} (visited : IO.Ref (Array (IO.Ref α))) (current : IO.Ref α) :
        CoreM Bool := do
      if ← (← visited.get).anyM (current.ptrEq ·) then throwError
        "{Check.tree.name}: search tree contains a cycle."
      visited.modify (·.push current)
      return true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e2601aea93c40ac0ec3296856281b0b1dc4cd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
