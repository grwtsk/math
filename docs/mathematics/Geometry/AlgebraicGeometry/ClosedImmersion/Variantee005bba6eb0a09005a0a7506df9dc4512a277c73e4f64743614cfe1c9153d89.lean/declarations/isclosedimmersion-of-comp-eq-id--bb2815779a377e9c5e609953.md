# isClosedImmersion_of_comp_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33c5d87f-a949-986c-50e7-1be26efe4698",
  "kind": "theorem",
  "lexical_name": "isClosedImmersion_of_comp_eq_id",
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
  "slug": "isclosedimmersion-of-comp-eq-id--bb2815779a377e9c5e609953",
  "source": {
    "blob": "5f72643b97e88cc91d65f71d49f4a10b71c21bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 434,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2815779a377e9c5e609953b9ff31838a9cab3f69bbf0aa58a8948f51e4edae",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33c5d87f-a949-986c-50e7-1be26efe4698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem isClosedImmersion_of_comp_eq_id {X Y : Scheme.{u}} [Subsingleton Y]
    (f : X ⟶ Y) (g : Y ⟶ X) (hg : g ≫ f = 𝟙 Y) :
    IsClosedImmersion g := by
  wlog hX : ∃ R, X = Spec R
  · rw [IsZariskiLocalAtTarget.iff_of_openCover (P := @IsClosedImmersion) X.affineCover]
    intro i
    by_cases hxU : Set.range g ⊆ (X.affineCover.f i).opensRange
    · rw [Scheme.Cover.pullbackHom,
        ← (IsOpenImmersion.isPullback_lift_id _ _ hxU).flip.isoPullback_inv_snd,
        MorphismProperty.cancel_left_of_respectsIso @IsClosedImmersion]
      refine this (X.affineCover.f i ≫ f) _ ?_ ⟨_, rfl⟩
      rw [IsOpenImmersion.lift_fac_assoc, hg]
    · have : IsEmpty ((X.affineCover.pullback₁ g).X i) := by
        apply Scheme.isEmpty_pullback
        rw [← Set.subset_compl_iff_disjoint_left]
        rintro _ hx ⟨x, rfl⟩
        apply hxU
        rintro _ ⟨y, rfl⟩
        exact Subsingleton.elim x y ▸ hx
      infer_instance
  obtain ⟨R, rfl⟩ := hX
  wlog hY : ∃ S, Y = Spec S
  · have inst := (Scheme.isoSpec Y).inv.homeomorph.injective.subsingleton
    rw [← MorphismProperty.cancel_left_of_respectsIso @IsClosedImmersion (Scheme.isoSpec Y).inv]
    exact this R (f ≫ (Scheme.isoSpec Y).hom) ((Scheme.isoSpec Y).inv ≫ g)
      (by simp [reassoc_of% hg]) ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hY
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  obtain ⟨ψ, rfl⟩ := Spec.map_surjective g
  rw [← Spec.map_comp, ← Spec.map_id, Spec.map_injective.eq_iff] at hg
  apply IsClosedImmersion.spec_of_surjective
  apply Function.LeftInverse.surjective (g := φ)
  exact fun x ↦ congr($hg.1 x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f72643b97e88cc91d65f71d49f4a10b71c21bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
