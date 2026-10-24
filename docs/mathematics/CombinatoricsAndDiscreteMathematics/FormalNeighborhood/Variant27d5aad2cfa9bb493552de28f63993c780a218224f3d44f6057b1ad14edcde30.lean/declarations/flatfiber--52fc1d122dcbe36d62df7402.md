# flatFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad14c1115f689874e5b1cd77aa35534d2c61033ae57d958b3263de3779f6e493",
  "kind": "def",
  "lexical_name": "flatFiber",
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
  "slug": "flatfiber--52fc1d122dcbe36d62df7402",
  "source": {
    "blob": "9c764e606cbcd0007fbd4373caf67dd77fc9fae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52fc1d122dcbe36d62df7402749f634cfea949dc628dc93eb4dce5e18f0ba50c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad14c1115f689874e5b1cd77aa35534d2c61033ae57d958b3263de3779f6e493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def flatFiber
    {Probe : Type w}
    (encode : Element → IncidenceCode Probe)
    (query : IncidenceCode Probe) :
    Finset Element := by
  classical
  exact Finset.univ.filter fun element ↦ encode element = query

/--
A deep reducer may use any exact traversal of the overlap DAG, but its result
must be extensionally equal to flat exact search.  This is the authority
condition that prevents pruning heuristics from deleting ties.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c764e606cbcd0007fbd4373caf67dd77fc9fae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
