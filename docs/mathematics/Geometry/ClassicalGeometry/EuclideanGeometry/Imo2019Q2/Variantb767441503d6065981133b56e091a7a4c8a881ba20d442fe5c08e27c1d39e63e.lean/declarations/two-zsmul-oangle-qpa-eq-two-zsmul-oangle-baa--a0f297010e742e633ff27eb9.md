# two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1a2a8bbf0cfd342b2e6119789b54d57598036c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b767441503d6065981133b56e091a7a4c8a881ba20d442fe5c08e27c1d39e63e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41d5f5ba-fb3c-447a-6821-e0ccf3eb1a95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd4fa171-9998-c6ba-fff7-ce1dca523559",
  "kind": "theorem",
  "lexical_name": "two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂",
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
  "slug": "two-zsmul-oangle-qpa-eq-two-zsmul-oangle-baa--a0f297010e742e633ff27eb9",
  "source": {
    "blob": "2b1a2a8bbf0cfd342b2e6119789b54d57598036c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 373,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb767441503d6065981133b56e091a7a4c8a881ba20d442fe5c08e27c1d39e63e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f297010e742e633ff27eb9d91c08c73d67d82875cc55576a4e6e039c196ef3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb767441503d6065981133b56e091a7a4c8a881ba20d442fe5c08e27c1d39e63e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd4fa171-9998-c6ba-fff7-ce1dca523559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂ :
    (2 : ℤ) • ∡ cfg.Q cfg.P cfg.A₂ = (2 : ℤ) • ∡ cfg.B cfg.A cfg.A₂ := by
  refine two_zsmul_oangle_of_parallel cfg.QP_parallel_BA ?_
  convert! AffineSubspace.Parallel.refl (k := ℝ) (P := Pt) _ using 1
  rw [cfg.collinear_PAA₁A₂.affineSpan_eq_of_ne (Set.mem_insert_of_mem _
    (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
    (Set.mem_insert_of_mem _ (Set.mem_insert _ _)) cfg.A₂_ne_A,
      cfg.collinear_PAA₁A₂.affineSpan_eq_of_ne (Set.mem_insert_of_mem _
    (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
    (Set.mem_insert _ _) cfg.A₂_ne_P]

end Oriented

/-! ### More obvious configuration properties -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb767441503d6065981133b56e091a7a4c8a881ba20d442fe5c08e27c1d39e63e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb767441503d6065981133b56e091a7a4c8a881ba20d442fe5c08e27c1d39e63e.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1a2a8bbf0cfd342b2e6119789b54d57598036c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
