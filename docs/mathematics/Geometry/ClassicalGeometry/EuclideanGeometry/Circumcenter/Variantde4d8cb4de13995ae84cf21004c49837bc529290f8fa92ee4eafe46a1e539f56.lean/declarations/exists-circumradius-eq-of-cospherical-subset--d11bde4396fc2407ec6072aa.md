# exists_circumradius_eq_of_cospherical_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "201013b5ad00bd7588ca3a38712640b3efe92502",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de4d8cb4de13995ae84cf21004c49837bc529290f8fa92ee4eafe46a1e539f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13d3d836-7abe-2543-4041-39eb890d8af5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeebcc26-2961-b5a3-6cee-3e1cd2cf8238",
  "kind": "theorem",
  "lexical_name": "exists_circumradius_eq_of_cospherical_subset",
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
  "slug": "exists-circumradius-eq-of-cospherical-subset--d11bde4396fc2407ec6072aa",
  "source": {
    "blob": "201013b5ad00bd7588ca3a38712640b3efe92502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 645,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantde4d8cb4de13995ae84cf21004c49837bc529290f8fa92ee4eafe46a1e539f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d11bde4396fc2407ec6072aa82859aaabff92ad774b32ac80571571374073b7f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantde4d8cb4de13995ae84cf21004c49837bc529290f8fa92ee4eafe46a1e539f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeebcc26-2961-b5a3-6cee-3e1cd2cf8238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_circumradius_eq_of_cospherical_subset {s : AffineSubspace ℝ P} {ps : Set P}
    (h : ps ⊆ s) [Nonempty s] {n : ℕ} [FiniteDimensional ℝ s.direction]
    (hd : finrank ℝ s.direction = n) (hc : Cospherical ps) :
    ∃ r : ℝ, ∀ sx : Simplex ℝ P n, Set.range sx.points ⊆ ps → sx.circumradius = r := by
  rw [cospherical_iff_exists_mem_of_finiteDimensional h] at hc
  rcases hc with ⟨c, hc, r, hcr⟩
  use r
  intro sx hsxps
  have hsx : affineSpan ℝ (Set.range sx.points) = s := by
    refine
      sx.independent.affineSpan_eq_of_le_of_card_eq_finrank_add_one
        (affineSpan_le_of_subset_coe (hsxps.trans h)) ?_
    simp [hd]
  have hc : c ∈ affineSpan ℝ (Set.range sx.points) := hsx.symm ▸ hc
  exact
    (sx.eq_circumradius_of_dist_eq hc fun i =>
        hcr (sx.points i) (hsxps (Set.mem_range_self i))).symm

/-- Two n-simplices among cospherical points in an n-dimensional
subspace have the same circumradius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantde4d8cb4de13995ae84cf21004c49837bc529290f8fa92ee4eafe46a1e539f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantde4d8cb4de13995ae84cf21004c49837bc529290f8fa92ee4eafe46a1e539f56.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201013b5ad00bd7588ca3a38712640b3efe92502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
