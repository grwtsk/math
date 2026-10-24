# DependencyGraph.ofRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea1a0b653711342be07d7854d1a8a60385a09cdda264b53347c036995bb71baa",
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
  "slug": "dependencygraph-ofrank--081252c9af95a339cb88a3ac",
  "source": {
    "blob": "9eb2cf21c5fc62682143db925e721f578776dde0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:081252c9af95a339cb88a3ac77644dd4fc68a0c71aff8091d8cb879cd498b660",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea1a0b653711342be07d7854d1a8a60385a09cdda264b53347c036995bb71baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb2cf21c5fc62682143db925e721f578776dde0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
