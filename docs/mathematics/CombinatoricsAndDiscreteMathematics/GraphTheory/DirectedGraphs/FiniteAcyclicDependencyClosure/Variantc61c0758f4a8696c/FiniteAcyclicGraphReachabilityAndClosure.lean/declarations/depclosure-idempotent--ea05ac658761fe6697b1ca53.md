# depClosure_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b01d31ee-f13b-7b31-29d3-069c36a4800e",
  "kind": "theorem",
  "lexical_name": "depClosure_idempotent",
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
  "slug": "depclosure-idempotent--ea05ac658761fe6697b1ca53",
  "source": {
    "blob": "5baba06df4f9891841c770d66aca52be74649ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea05ac658761fe6697b1ca5339acbd670bd12c182ae280dbb95545e4d9feb464",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01d31ee-f13b-7b31-29d3-069c36a4800e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem depClosure_idempotent (G : DependencyGraph)
    (roots : Finset G.ProjectId) :
    G.depClosure (G.depClosure roots) = G.depClosure roots := by
  apply Finset.Subset.antisymm
  · apply G.depClosure_minimal
    · exact fun _ h ↦ h
    · intro p hp q hqp
      exact G.dependency_mem_depClosure hp hqp
  · exact G.depClosure_mono fun p hp ↦ G.root_mem_depClosure hp

end DependencyGraph

end DAF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteAcyclicDependencyClosure/Variantc61c0758f4a8696c/FiniteAcyclicGraphReachabilityAndClosure.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5baba06df4f9891841c770d66aca52be74649ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
