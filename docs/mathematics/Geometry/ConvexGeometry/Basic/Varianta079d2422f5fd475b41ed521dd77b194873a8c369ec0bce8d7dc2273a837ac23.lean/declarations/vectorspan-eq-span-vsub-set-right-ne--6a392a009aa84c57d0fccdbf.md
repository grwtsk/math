# vectorSpan_eq_span_vsub_set_right_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c938fe73d2fb879b088149edf36b2f75c1e848f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1669454-3cbe-2252-466e-6bb1b248a823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5797cdc2-7002-38cf-91e0-2561ad54a811",
  "kind": "theorem",
  "lexical_name": "vectorSpan_eq_span_vsub_set_right_ne",
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
  "slug": "vectorspan-eq-span-vsub-set-right-ne--6a392a009aa84c57d0fccdbf",
  "source": {
    "blob": "c938fe73d2fb879b088149edf36b2f75c1e848f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a392a009aa84c57d0fccdbf6dba34a3a075af73320d5d9d4df3b573f1a778a5",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5797cdc2-7002-38cf-91e0-2561ad54a811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorSpan_eq_span_vsub_set_right_ne {s : Set P} {p : P} (hp : p ∈ s) :
    vectorSpan k s = Submodule.span k ((· -ᵥ p) '' (s \ {p})) := by
  conv_lhs =>
    rw [vectorSpan_eq_span_vsub_set_right k hp, ← Set.insert_eq_of_mem hp, ←
      Set.insert_diff_singleton, Set.image_insert_eq]
  simp [Submodule.span_insert_eq_span]

/-- The `vectorSpan` is the span of the pairwise subtractions with a given point on the right,
excluding the subtraction of that point from itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c938fe73d2fb879b088149edf36b2f75c1e848f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
