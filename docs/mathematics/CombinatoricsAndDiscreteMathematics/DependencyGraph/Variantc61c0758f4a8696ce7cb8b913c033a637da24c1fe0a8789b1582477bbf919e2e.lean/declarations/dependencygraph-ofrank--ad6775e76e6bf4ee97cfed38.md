# DependencyGraph.ofRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc0c961fa04069c003aec2af7f53b39ce8267e0c9d8cd17411f0194eb93a2e5b",
  "kind": "def",
  "lexical_name": "DependencyGraph.ofRank",
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
  "slug": "dependencygraph-ofrank--ad6775e76e6bf4ee97cfed38",
  "source": {
    "blob": "e27da6af2452f986a7fce03825b9d0ae741cfbdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad6775e76e6bf4ee97cfed381546f61a3cf3a95c41bc5f4915c95daed0401c16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc0c961fa04069c003aec2af7f53b39ce8267e0c9d8cd17411f0194eb93a2e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DependencyGraph.ofRank
    (ProjectId : Type u)
    [Fintype ProjectId]
    [DecidableEq ProjectId]
    (dependsOn : ProjectId → Finset ProjectId)
    (rank : ProjectId → Nat)
    (dependency_rank_lt :
      ∀ {q p}, q ∈ dependsOn p → rank q < rank p) :
    DependencyGraph where
  ProjectId := ProjectId
  instFintype := inferInstance
  instDecidableEq := inferInstance
  dependsOn := dependsOn
  acyclic := (InvImage.wf rank wellFounded_lt).mono fun _ _ h ↦
    dependency_rank_lt h

namespace DependencyGraph

/-- `q` is a direct dependency of `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27da6af2452f986a7fce03825b9d0ae741cfbdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
