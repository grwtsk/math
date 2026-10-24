# dependent_mem_dependentsClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb6d957-46a4-53e9-2ca6-beab55c01503",
  "kind": "theorem",
  "lexical_name": "dependent_mem_dependentsClosure",
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
  "slug": "dependent-mem-dependentsclosure--48e7957b88eadea08853c94c",
  "source": {
    "blob": "03e5c6393cf387a1008800a109552910e422f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e7957b88eadea08853c94cd9170902f0f72532360f1da7917b2e89d3b0c823",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb6d957-46a4-53e9-2ca6-beab55c01503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependent_mem_dependentsClosure
    (G : DependencyGraph)
    {seeds : Finset G.ProjectId} {q p : G.ProjectId}
    (hq : q ∈ dependentsClosure G seeds)
    (hqp : G.DirectDep q p) :
    p ∈ dependentsClosure G seeds := by
  obtain ⟨s, hs, hsq⟩ := (mem_dependentsClosure_iff G).mp hq
  exact (mem_dependentsClosure_iff G).mpr ⟨s, hs, hsq.tail hqp⟩

/-- Dependent closure is monotone in its seed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e5c6393cf387a1008800a109552910e422f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
