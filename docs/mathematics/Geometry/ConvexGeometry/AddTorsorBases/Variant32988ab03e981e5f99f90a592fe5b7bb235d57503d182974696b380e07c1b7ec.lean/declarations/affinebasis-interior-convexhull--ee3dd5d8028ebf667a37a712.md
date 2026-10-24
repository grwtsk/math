# AffineBasis.interior_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b70f42034fa02b8e527d33440c774974ded24b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dc353ef-fd0e-4c27-0d15-2a6341a80a87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:695e9263-309c-842b-ee2d-1eaa29f6f266",
  "kind": "theorem",
  "lexical_name": "AffineBasis.interior_convexHull",
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
  "slug": "affinebasis-interior-convexhull--ee3dd5d8028ebf667a37a712",
  "source": {
    "blob": "8b70f42034fa02b8e527d33440c774974ded24b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3dd5d8028ebf667a37a712ec016de5388e1aff9eb91b9da8e2788499a20229",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695e9263-309c-842b-ee2d-1eaa29f6f266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineBasis.interior_convexHull {ι E : Type*} [Finite ι] [NormedAddCommGroup E]
    [NormedSpace ℝ E] (b : AffineBasis ι ℝ E) :
    interior (convexHull ℝ (range b)) = {x | ∀ i, 0 < b.coord i x} := by
  cases subsingleton_or_nontrivial ι
  · -- The zero-dimensional case.
    have : range b = univ :=
      AffineSubspace.eq_univ_of_subsingleton_span_eq_top (subsingleton_range _) b.tot
    simp [this]
  · -- The positive-dimensional case.
    haveI : FiniteDimensional ℝ E := b.finiteDimensional
    have : convexHull ℝ (range b) = ⋂ i, b.coord i ⁻¹' Ici 0 := by
      rw [b.convexHull_eq_nonneg_coord, setOf_forall]; rfl
    ext
    simp only [this, interior_iInter, ←
      IsOpenMap.preimage_interior_eq_interior_preimage (isOpenMap_barycentric_coord b _)
        (continuous_barycentric_coord b _),
      interior_Ici, mem_iInter, mem_setOf_eq, mem_Ioi, mem_preimage]
#align affine_basis.interior_convex_hull AffineBasis.interior_convexHull

variable {V P : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

open AffineMap

/-- Given a set `s` of affine-independent points belonging to an open set `u`, we may extend `s` to
an affine basis, all of whose elements belong to `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b70f42034fa02b8e527d33440c774974ded24b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
