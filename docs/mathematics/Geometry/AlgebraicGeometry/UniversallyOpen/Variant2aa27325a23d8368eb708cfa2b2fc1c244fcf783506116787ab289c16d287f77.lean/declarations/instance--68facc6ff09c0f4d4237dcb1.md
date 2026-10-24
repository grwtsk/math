# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a02aeeabb82c29df16741a8899c595ce0e28640f1b897d7c9da59bc1ab7b2eb",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--68facc6ff09c0f4d4237dcb1",
  "source": {
    "blob": "dd49b11a74329a99910e113f7bf4980a90b84b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 148,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68facc6ff09c0f4d4237dcb1e740b84bc541d3dc1d1811b5344b73ba8b3f66e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a02aeeabb82c29df16741a8899c595ce0e28640f1b897d7c9da59bc1ab7b2eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec instance (priority := low) [IsIntegral Y] [Subsingleton Y] :
    UniversallyOpen f := by
  wlog hX : ∃ S, X = Spec S generalizing X
  · refine (IsZariskiLocalAtSource.iff_of_openCover X.affineCover).mpr fun i ↦ this _ ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  wlog hY : ∃ K, Y = Spec K ∧ IsField K generalizing Y
  · have inst : Subsingleton (Spec Γ(Y, ⊤)) := Y.isoSpec.inv.homeomorph.subsingleton
    exact (MorphismProperty.cancel_right_of_respectsIso _ _ Y.isoSpec.hom).mp
      (this _ ⟨_, rfl, isField_of_isIntegral_of_subsingleton _⟩)
  obtain ⟨K, rfl, hK⟩ := hY
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  refine ⟨universally_mk' _ _ fun {T} g _ ↦ ?_⟩
  wlog hT : ∃ R, T = Spec R generalizing T
  · refine (IsZariskiLocalAtTarget.iff_of_openCover T.affineCover).mpr fun i ↦ ?_
    refine (MorphismProperty.cancel_left_of_respectsIso _
      ((pullbackRightPullbackFstIso ..).inv ≫ (pullbackSymmetry ..).hom) _).mp ?_
    simpa [Scheme.Cover.pullbackHom] using! this _ _ ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hT
  obtain ⟨ψ, rfl⟩ := Spec.map_surjective g
  algebraize [φ.hom, ψ.hom]
  refine (MorphismProperty.cancel_left_of_respectsIso _ (pullbackSpecIso K R S).inv _).mp ?_
  convert_to! topologically _ (Spec.map <| CommRingCat.ofHom (algebraMap R (TensorProduct K R S)))
  · exact pullbackSpecIso_inv_fst ..
  let := hK.toField
  exact PrimeSpectrum.isOpenMap_comap_algebraMap_tensorProduct_of_field

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd49b11a74329a99910e113f7bf4980a90b84b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
