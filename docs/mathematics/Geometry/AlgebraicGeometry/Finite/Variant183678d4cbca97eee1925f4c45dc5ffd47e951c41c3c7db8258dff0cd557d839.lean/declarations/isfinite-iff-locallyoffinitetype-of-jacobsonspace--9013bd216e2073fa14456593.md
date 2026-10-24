# isFinite_iff_locallyOfFiniteType_of_jacobsonSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15e82b3-cace-d023-b20b-4326cff32b0e",
  "kind": "lemma",
  "lexical_name": "isFinite_iff_locallyOfFiniteType_of_jacobsonSpace",
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
  "slug": "isfinite-iff-locallyoffinitetype-of-jacobsonspace--9013bd216e2073fa14456593",
  "source": {
    "blob": "02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 132,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9013bd216e2073fa14456593df014237b62cc14a27a8dd89fa3b1d5e271c8dfe",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15e82b3-cace-d023-b20b-4326cff32b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isFinite_iff_locallyOfFiniteType_of_jacobsonSpace
    {X Y : Scheme.{u}} {f : X ⟶ Y} [Subsingleton X] [IsReduced X] [JacobsonSpace Y] :
    IsFinite f ↔ LocallyOfFiniteType f := by
  wlog hY : ∃ S, Y = Spec S generalizing X Y
  · rw [IsLocalAtTarget.iff_of_openCover (P := @IsFinite) Y.affineCover,
      IsLocalAtTarget.iff_of_openCover (P := @LocallyOfFiniteType) Y.affineCover]
    have inst (i) := ((Y.affineCover.pullbackCover f).map i).isOpenEmbedding.injective.subsingleton
    have inst (i) := isReduced_of_isOpenImmersion ((Y.affineCover.pullbackCover f).map i)
    have inst (i) := JacobsonSpace.of_isOpenEmbedding (Y.affineCover.map i).isOpenEmbedding
    exact forall_congr' fun i ↦ this ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hY
  wlog hX : ∃ R, X = Spec R generalizing X
  · rw [← MorphismProperty.cancel_left_of_respectsIso (P := @IsFinite) X.isoSpec.inv,
      ← MorphismProperty.cancel_left_of_respectsIso (P := @LocallyOfFiniteType) X.isoSpec.inv]
    have inst := X.isoSpec.inv.isOpenEmbedding.injective.subsingleton
    refine this ⟨_, rfl⟩
  cases isEmpty_or_nonempty X
  · exact ⟨inferInstance, inferInstance⟩
  have : IrreducibleSpace X := ⟨‹_›⟩
  obtain ⟨R, rfl⟩ := hX
  have : IsDomain R := (affine_isIntegral_iff R).mp (isIntegral_of_irreducibleSpace_of_isReduced _)
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  rw [IsFinite.SpecMap_iff, HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)]
  have := (PrimeSpectrum.t1Space_iff_isField (R := R)).mp (show T1Space (Spec R) by infer_instance)
  letI := this.toField
  letI := φ.hom.toAlgebra
  have := PrimeSpectrum.isJacobsonRing_iff_jacobsonSpace.mpr ‹_›
  show Module.Finite _ _ ↔ Algebra.FiniteType _ _
  exact ⟨fun _ ↦ inferInstance, fun _ ↦ finite_of_finite_type_of_isJacobsonRing _ _⟩

@[stacks 01TB "(1) => (3)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
