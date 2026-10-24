# finsetShadingUnion_eq_coarseFibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7ecb8bba1cfd742bb799c32ad6050542d1a0021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11965074-cd1e-e34b-5b99-14d2a6fe7e5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e88a7442-a692-e340-39d5-aba5cb5855ec",
  "kind": "theorem",
  "lexical_name": "finsetShadingUnion_eq_coarseFibers",
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
  "slug": "finsetshadingunion-eq-coarsefibers--97f3e8a531810e45513289c0",
  "source": {
    "blob": "f7ecb8bba1cfd742bb799c32ad6050542d1a0021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97f3e8a531810e45513289c03f138b5550b5e533aa7ff2a2ed5fb13a526690bc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e88a7442-a692-e340-39d5-aba5cb5855ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsetShadingUnion_eq_coarseFibers
    {Point Object CoarseTube : Type*}
    [DecidableEq Object] [DecidableEq CoarseTube]
    (objects : Finset Object) (coarseTubes : Finset CoarseTube)
    (assignedCoarse : Object → CoarseTube) (shading : Object → Set Point)
    (assigned_mem : ∀ object ∈ objects, assignedCoarse object ∈ coarseTubes) :
    finsetShadingUnion objects shading =
      ⋃ coarse ∈ (coarseTubes : Set CoarseTube),
        fiberShadingUnion objects assignedCoarse shading coarse := by
  classical
  ext point
  simp only [finsetShadingUnion, fiberShadingUnion, objectsAt, mem_iUnion]
  constructor
  · rintro ⟨object, hobject, hpoint⟩
    have hobject' : object ∈ objects := Finset.mem_coe.mp hobject
    have hassigned : assignedCoarse object ∈ coarseTubes :=
      assigned_mem object hobject'
    refine ⟨assignedCoarse object, hassigned, object, ?_, hpoint⟩
    change object ∈ objectsAt objects assignedCoarse (assignedCoarse object)
    simp [objectsAt, hobject']
  · rintro ⟨coarse, _hcoarse, object, hobject, hpoint⟩
    change object ∈ objectsAt objects assignedCoarse coarse at hobject
    have hobject' : object ∈ objects := by
      exact (Finset.mem_filter.mp hobject).1
    exact ⟨object, hobject', hpoint⟩

/-! ## Abstract spatial geometry

The carrier sets below may later be instantiated by actual Euclidean tubes
and prisms.  `directionAngle` and `exitsLongEnd` are kept explicit because
neither relation is present in the current one-dimensional trajectory model.
-/

/-- Spatial data used by the incidence certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ecb8bba1cfd742bb799c32ad6050542d1a0021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
