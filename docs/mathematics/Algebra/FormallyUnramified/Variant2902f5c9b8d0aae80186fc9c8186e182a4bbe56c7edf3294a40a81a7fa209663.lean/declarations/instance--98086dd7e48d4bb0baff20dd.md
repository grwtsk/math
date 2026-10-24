# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e36790328eb47f65dc48df6875a18e8f32afae198b73e1a722ba6e97227377c2",
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
  "slug": "instance--98086dd7e48d4bb0baff20dd",
  "source": {
    "blob": "838efbedf9bd403d23cd38d2a1de882ddf3f395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 65,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variant2902f5c9b8d0aae80186fc9c8186e182a4bbe56c7edf3294a40a81a7fa209663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98086dd7e48d4bb0baff20ddbdc83bc0732820c04dc232cc9428f56a70ba628a",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variant2902f5c9b8d0aae80186fc9c8186e182a4bbe56c7edf3294a40a81a7fa209663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e36790328eb47f65dc48df6875a18e8f32afae198b73e1a722ba6e97227377c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 900) [IsOpenImmersion (pullback.diagonal f)] : FormallyUnramified f := by
  wlog hY : ∃ R, Y = Spec R
  · rw [IsLocalAtTarget.iff_of_openCover (P := @FormallyUnramified) Y.affineCover]
    intro i
    have inst : IsOpenImmersion (pullback.diagonal (pullback.snd f (Y.affineCover.map i))) :=
      MorphismProperty.pullback_snd (P := .diagonal @IsOpenImmersion) _ _ ‹_›
    exact this (pullback.snd _ _) ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S generalizing X
  · rw [IsLocalAtSource.iff_of_openCover (P := @FormallyUnramified) X.affineCover]
    intro i
    have inst : IsOpenImmersion (pullback.diagonal (X.affineCover.map i ≫ f)) :=
      MorphismProperty.comp_mem (.diagonal @IsOpenImmersion) _ _
        (inferInstanceAs (IsOpenImmersion _)) ‹_›
    exact this (_ ≫ _) ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl : Spec.map φ = f⟩ := Spec.homEquiv.symm.surjective f
  rw [HasRingHomProperty.Spec_iff (P := @FormallyUnramified)]
  algebraize [φ.hom]
  let F := (Algebra.TensorProduct.lmul' R (S := S)).toRingHom
  have hF : Function.Surjective F := fun x ↦ ⟨.mk _ _ _ x 1, by simp [F]⟩
  have : IsOpenImmersion (Spec.map (CommRingCat.ofHom F)) := by
    rwa [← MorphismProperty.cancel_right_of_respectsIso (P := @IsOpenImmersion) _
      (pullbackSpecIso R S S).inv, ← AlgebraicGeometry.diagonal_Spec_map R S]
  obtain ⟨e, he, he'⟩ := (isOpenImmersion_SpecMap_iff_of_surjective _ hF).mp this
  refine ⟨subsingleton_of_forall_eq 0 fun x ↦ ?_⟩
  obtain ⟨⟨x, hx⟩, rfl⟩ := Ideal.toCotangent_surjective _ x
  obtain ⟨x, rfl⟩ := Ideal.mem_span_singleton.mp (he'.le hx)
  refine (Ideal.toCotangent_eq_zero _ _).mpr ?_
  rw [pow_two, Subtype.coe_mk, ← he, mul_assoc]
  exact Ideal.mul_mem_mul (he'.ge (Ideal.mem_span_singleton_self e)) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variant2902f5c9b8d0aae80186fc9c8186e182a4bbe56c7edf3294a40a81a7fa209663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variant2902f5c9b8d0aae80186fc9c8186e182a4bbe56c7edf3294a40a81a7fa209663.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838efbedf9bd403d23cd38d2a1de882ddf3f395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
