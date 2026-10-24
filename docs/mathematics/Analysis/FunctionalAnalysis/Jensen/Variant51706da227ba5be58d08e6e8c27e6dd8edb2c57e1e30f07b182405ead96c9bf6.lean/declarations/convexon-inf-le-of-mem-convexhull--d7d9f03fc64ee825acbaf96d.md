# ConvexOn.inf_le_of_mem_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cceb82a-b3ee-44a9-ea18-8b41ccd5b905",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:991c04ea-99d2-afdb-3c24-0ec3f0e2eda5",
  "kind": "theorem",
  "lexical_name": "ConvexOn.inf_le_of_mem_convexHull",
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
  "slug": "convexon-inf-le-of-mem-convexhull--d7d9f03fc64ee825acbaf96d",
  "source": {
    "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 348,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d9f03fc64ee825acbaf96d083df8796340c78ded7bcd063e6ca49c51d43ba3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991c04ea-99d2-afdb-3c24-0ec3f0e2eda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.inf_le_of_mem_convexHull {t : Finset E} (hf : ConcaveOn 𝕜 s f) (hts : ↑t ⊆ s)
    (hx : x ∈ convexHull 𝕜 (t : Set E)) :
    t.inf' (coe_nonempty.1 <| convexHull_nonempty_iff.1 ⟨x, hx⟩) f ≤ f x :=
  hf.dual.le_sup_of_mem_convexHull hts hx

/-- If a function `f` is convex on `s`, then the value it takes at some center of mass of points of
`s` is less than the value it takes on one of those points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25776a4421c9a68b1048b578dd96a781466892c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
