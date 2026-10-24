# Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior_faceOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee9faa0e-bc2c-5827-8c3e-c639248ce592",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af6b4447-3253-f463-5daf-7f1dfba51b3b",
  "kind": "lemma",
  "lexical_name": "Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior_faceOpposite",
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
  "slug": "sphere-soppside-faceopposite-secondinter-of-mem-interior-faceopposite--e614c48be681a998a31bfaf8",
  "source": {
    "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 231,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e614c48be681a998a31bfaf8207a791367f4f016f94a1f6d0d6c1f4ab963a4cf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6b4447-3253-f463-5daf-7f1dfba51b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior_faceOpposite {s : Sphere P}
    {n : ℕ} [NeZero n] {sx : Affine.Simplex ℝ P n} {i : Fin (n + 1)} (hi : sx.points i ∈ s)
    (hsx : ∀ j, dist (sx.points j) s.center ≤ s.radius) {p : P}
    (hp : p ∈ (sx.faceOpposite i).interior) :
    (affineSpan ℝ (Set.range (sx.faceOpposite i).points)).SOppSide (sx.points i)
      (s.secondInter (sx.points i) (p -ᵥ (sx.points i))) :=
  Sbtw.sOppSide_of_notMem_of_mem
    (s.sbtw_secondInter hi ((sx.faceOpposite i).dist_lt_of_mem_interior_of_strictConvexSpace hp
      (fun j ↦ hsx _)))
    (by simp)
    (Set.mem_of_mem_of_subset hp ((sx.faceOpposite i).interior_subset_closedInterior.trans
      (sx.faceOpposite i).closedInterior_subset_affineSpan))

attribute [local instance] Nat.AtLeastTwo.neZero_sub_one

/-- If the point passed to `secondInter` is a vertex of a simplex, lying on the sphere, and all
vertices lie on or inside the sphere, and the vector passed to `secondInter` is given by a
subtraction involving that vertex and a point in the interior of the simplex, the given vertex
and the result of `secondInter` are on opposite sides of the face opposite that vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edce432fae89f953ae3092237e9f45be20bccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
