# dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f83d31d713c077353ecca5a87f0464bbe8224d65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04e2607c-8714-25fe-64b2-5e28b6311468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36caea08-01b9-7900-b296-eece7ef442b7",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq",
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
  "slug": "dist-orthogonalprojection-line-eq-of-two-zsmul-oangle-eq--3c15216fef8be6c5318d038a",
  "source": {
    "blob": "f83d31d713c077353ecca5a87f0464bbe8224d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 269,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c15216fef8be6c5318d038acbc3e7e0671b64ce11c02f9c0c7c09b87f6dcf3c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36caea08-01b9-7900-b296-eece7ef442b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq {p p₁ p₂ p₃ : P} (h₂ : p₁ ≠ p₂)
    (h₃ : p₁ ≠ p₃) (h : (2 : ℤ) • ∡ p₂ p₁ p = (2 : ℤ) • ∡ p p₁ p₃) :
    dist p (orthogonalProjection line[ℝ, p₁, p₂] p) =
      dist p (orthogonalProjection line[ℝ, p₁, p₃] p) := by
  by_cases h' : orthogonalProjection line[ℝ, p₁, p₂] p = p₁ ∨
      orthogonalProjection line[ℝ, p₁, p₃] p = p₁
  · exact dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₂ h₂ h₃ h h'
  · rw [not_or] at h'
    refine dist_orthogonalProjection_eq_of_two_zsmul_oangle_eq
      (left_mem_affineSpan_pair _ _ _) (left_mem_affineSpan_pair _ _ _) h'.1 h'.2 ?_
    rw [(collinear_insert_of_mem_affineSpan_pair
          (orthogonalProjection_mem p)).two_zsmul_oangle_eq_left h'.1 h₂.symm,
      (collinear_insert_of_mem_affineSpan_pair
        (orthogonalProjection_mem p)).two_zsmul_oangle_eq_right h'.2 h₃.symm, h]

/-- If a point `p` is equidistant to two different lines `p₁ p₂` and `p₁ p₃`, the oriented angles
at `p₁` are equal modulo `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f83d31d713c077353ecca5a87f0464bbe8224d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
