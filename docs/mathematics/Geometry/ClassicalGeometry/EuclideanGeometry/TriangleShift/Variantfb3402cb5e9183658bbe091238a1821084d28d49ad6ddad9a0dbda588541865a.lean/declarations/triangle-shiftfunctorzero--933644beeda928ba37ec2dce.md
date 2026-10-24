# Triangle.shiftFunctorZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a806dad3c6f42105162fa9caea107d8db238c3dc493a2b0beb0adb7f6c419ece",
  "kind": "def",
  "lexical_name": "Triangle.shiftFunctorZero",
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
  "slug": "triangle-shiftfunctorzero--933644beeda928ba37ec2dce",
  "source": {
    "blob": "6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:933644beeda928ba37ec2dcebddc3e21641481ab21773539705735b7d3ab18d8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a806dad3c6f42105162fa9caea107d8db238c3dc493a2b0beb0adb7f6c419ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Triangle.shiftFunctorZero : Triangle.shiftFunctor C 0 ≅ 𝟭 _ :=
  NatIso.ofComponents
    (fun T => Triangle.isoMk _ _ ((CategoryTheory.shiftFunctorZero C ℤ).app _)
      ((CategoryTheory.shiftFunctorZero C ℤ).app _) ((CategoryTheory.shiftFunctorZero C ℤ).app _)
      (by simp) (by simp) (by
        dsimp
        simp only [one_smul, assoc, shiftFunctorComm_zero_hom_app,
          ← Functor.map_comp, Iso.inv_hom_id_app, Functor.id_obj, Functor.map_id,
          comp_id, NatTrans.naturality, Functor.id_map]))
    (by aesop_cat)

/-- The canonical isomorphism
`Triangle.shiftFunctor C n ≅ Triangle.shiftFunctor C a ⋙ Triangle.shiftFunctor C b`
when `a + b = n`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
