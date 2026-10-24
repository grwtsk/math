# DependencyGraph.ofRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeb123f2939e93d7af94067feef013fdedd025164ecd75d443e16bde96f00bc1",
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
  "slug": "dependencygraph-ofrank--666e48e98fc6c9dba43d5873",
  "source": {
    "blob": "5baba06df4f9891841c770d66aca52be74649ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:666e48e98fc6c9dba43d5873a8f594be5f3ec9def602cd0680feaedd749ce805",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeb123f2939e93d7af94067feef013fdedd025164ecd75d443e16bde96f00bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

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

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5baba06df4f9891841c770d66aca52be74649ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
