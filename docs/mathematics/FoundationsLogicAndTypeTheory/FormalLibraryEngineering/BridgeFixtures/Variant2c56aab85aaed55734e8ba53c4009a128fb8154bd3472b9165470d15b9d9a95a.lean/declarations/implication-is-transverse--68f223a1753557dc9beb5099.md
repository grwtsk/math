# implication_is_transverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c7d1847-f99c-52fa-7413-a0a3f3183650",
  "kind": "theorem",
  "lexical_name": "implication_is_transverse",
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
  "slug": "implication-is-transverse--68f223a1753557dc9beb5099",
  "source": {
    "blob": "f68a90948cd0aa746abe3a14900b897929ba37e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant2c56aab85aaed55734e8ba53c4009a128fb8154bd3472b9165470d15b9d9a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f223a1753557dc9beb509906fe65b67513480a103d0c08638738895b5c9f04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant2c56aab85aaed55734e8ba53c4009a128fb8154bd3472b9165470d15b9d9a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c7d1847-f99c-52fa-7413-a0a3f3183650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem implication_is_transverse :
    () ∈ implicationGraph.bridges ∧
      implicationBridge.evidence.kind = .implication ∧
      implicationBridge.evidence.orientation = .forward ∧
      ¬ implicationGraph.SameLeaf false true := by
  refine ⟨Finset.mem_univ (), rfl, rfl, ?_⟩
  rw [implicationGraph.same_leaf_iff_eq_of_no_invertible]
  · decide
  · intro x y
    simp [FiniteBridgeGraph.InvertibleEdge, implicationGraph, implicationBridge,
      BridgeEvidence.IsInvertible]

/-- This example truly has no converse, independently of graph bookkeeping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant2c56aab85aaed55734e8ba53c4009a128fb8154bd3472b9165470d15b9d9a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeFixtures/Variant2c56aab85aaed55734e8ba53c4009a128fb8154bd3472b9165470d15b9d9a95a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f68a90948cd0aa746abe3a14900b897929ba37e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
