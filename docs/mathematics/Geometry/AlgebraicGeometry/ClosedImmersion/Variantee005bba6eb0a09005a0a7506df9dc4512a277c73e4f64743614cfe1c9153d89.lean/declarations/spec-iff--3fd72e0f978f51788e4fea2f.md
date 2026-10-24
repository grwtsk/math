# Spec_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82cd9c03-a33b-4ff1-c01d-fb367f8001b0",
  "kind": "lemma",
  "lexical_name": "Spec_iff",
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
  "slug": "spec-iff--3fd72e0f978f51788e4fea2f",
  "source": {
    "blob": "5f72643b97e88cc91d65f71d49f4a10b71c21bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 332,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fd72e0f978f51788e4fea2fb80eab38434d65bda4913e2541fa0fa4e5b1c7db",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82cd9c03-a33b-4ff1-c01d-fb367f8001b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spec_iff {R : CommRingCat} {f : X ⟶ Spec R} :
    IsClosedImmersion f ↔ ∃ I : Ideal R, ∃ e : X ≅ Spec (.of <| R ⧸ I),
      f = e.hom ≫ Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) := by
  constructor
  · intro H
    obtain ⟨h₁, h₂⟩ := IsClosedImmersion.isAffine_surjective_of_isAffine f
    let φ := (Scheme.ΓSpecIso R).inv ≫ f.appTop
    refine ⟨RingHom.ker φ.1, Scheme.isoSpec _ ≪≫ Scheme.Spec.mapIso
        (.op (RingEquiv.ofBijective φ.1.kerLift ?_).toCommRingCatIso), ?_⟩
    · exact ⟨φ.1.kerLift_injective, Ideal.Quotient.lift_surjective_of_surjective _ _
        (h₂.comp (Scheme.ΓSpecIso R).commRingCatIsoToRingEquiv.symm.surjective)⟩
    · simp only [Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom, Scheme.Spec_map,
        Quiver.Hom.unop_op, Category.assoc, ← Spec.map_comp]
      change f = X.isoSpec.hom ≫ Spec.map φ
      simp only [Scheme.isoSpec, asIso_hom, Spec.map_comp, ← Scheme.toSpecΓ_naturality_assoc,
        ← SpecMap_ΓSpecIso_hom, φ]
      simp
  · rintro ⟨I, e, rfl⟩
    infer_instance

end IsClosedImmersion

end Affine

variable {X Y Z : Scheme.{u}}

set_option backward.isDefEq.respectTransparency.types false in
/-- Being a closed immersion is local at the target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f72643b97e88cc91d65f71d49f4a10b71c21bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
