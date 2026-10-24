# interior_convexHull_nonempty_iff_affineSpan_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a20149adf21bf52aabae70ba6da519213f7325fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13ddd47b-0816-9694-75f7-1ab52179fdd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60e5a2dd-e364-5013-03b7-9e9e1ff3efee",
  "kind": "theorem",
  "lexical_name": "interior_convexHull_nonempty_iff_affineSpan_eq_top",
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
  "slug": "interior-convexhull-nonempty-iff-affinespan-eq-top--605e45774325e3806b79567d",
  "source": {
    "blob": "a20149adf21bf52aabae70ba6da519213f7325fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605e45774325e3806b79567d37771bbd4a5d01ede838690e1140d6e6dfd69788",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60e5a2dd-e364-5013-03b7-9e9e1ff3efee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_convexHull_nonempty_iff_affineSpan_eq_top [FiniteDimensional ℝ V] {s : Set V} :
    (interior (convexHull ℝ s)).Nonempty ↔ affineSpan ℝ s = ⊤ := by
  refine ⟨affineSpan_eq_top_of_nonempty_interior, fun h => ?_⟩
  obtain ⟨t, hts, b, hb⟩ := AffineBasis.exists_affine_subbasis h
  suffices (interior (convexHull ℝ (range b))).Nonempty by
    rw [hb, Subtype.range_coe_subtype, ofPred_mem_eq] at this
    refine this.mono (by gcongr)
  lift t to Finset V using b.setFinite
  exact ⟨_, b.centroid_mem_interior_convexHull⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20149adf21bf52aabae70ba6da519213f7325fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
