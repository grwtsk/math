# Triangle.shiftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a09fde7b12ecc56de7ac96d53d5c812aa448057aa8b6f3daba6c19b5f8f55f0a",
  "kind": "def",
  "lexical_name": "Triangle.shiftFunctor",
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
  "slug": "triangle-shiftfunctor--48eb97c0825c217587170481",
  "source": {
    "blob": "6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48eb97c0825c217587170481ca9a5529ac4a4324e5e7d5d0c36deba3baeebd08",
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

Occurrence: `declaration:a09fde7b12ecc56de7ac96d53d5c812aa448057aa8b6f3daba6c19b5f8f55f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Triangle.shiftFunctor (n : ℤ) : Triangle C ⥤ Triangle C where
  obj T := Triangle.mk (n.negOnePow • T.mor₁⟦n⟧') (n.negOnePow • T.mor₂⟦n⟧')
    (n.negOnePow • T.mor₃⟦n⟧' ≫ (shiftFunctorComm C 1 n).hom.app T.obj₁)
  map f :=
    { hom₁ := f.hom₁⟦n⟧'
      hom₂ := f.hom₂⟦n⟧'
      hom₃ := f.hom₃⟦n⟧'
      comm₁ := by
        dsimp
        simp only [Linear.units_smul_comp, Linear.comp_units_smul, ← Functor.map_comp, f.comm₁]
      comm₂ := by
        dsimp
        simp only [Linear.units_smul_comp, Linear.comp_units_smul, ← Functor.map_comp, f.comm₂]
      comm₃ := by
        dsimp
        rw [Linear.units_smul_comp, Linear.comp_units_smul, ← Functor.map_comp_assoc, ← f.comm₃,
          Functor.map_comp, assoc, assoc]
        erw [(shiftFunctorComm C 1 n).hom.naturality]
        rfl }

/-- The canonical isomorphism `Triangle.shiftFunctor C 0 ≅ 𝟭 (Triangle C)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
